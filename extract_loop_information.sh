EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh


function parse_clang_s_output() {
"${PYPY}" -u "${EXPERIMENT_ROOT}/parse_clang_s_output.py"
}


function parse_lldb_function_disassembly() {
"${PYPY}" -u "${EXPERIMENT_ROOT}/parse_lldb_function_disassembly.py"
}


function build_json_array() {
"${PYPY}" -u -c """
from sys import stdin, stdout
from json import loads, dumps


array = [
    loads(line)
    for line in stdin
]

print(
    dumps(array),
    file=stdout
)
"""
}


function parse_llvm_ir() {
"${OPT}" \
-enable-new-pm=0 \
-load "$OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY" \
-loop2recursion \
-analyze-loop-information \
-o /dev/null \
2>&1 | build_json_array
}


function disassemble_function_in_executable() {
function_name="$1"
executable_file="$2"

"${LLDB}" --batch -o "disassemble --name '${function_name}'" "${executable_file}"
}


function print_instruction_addresses_of_functions_in_parsed_clang_s_output_file() {
parsed_clang_s_output_file="$1"
executable_file="$2"

"${PYPY}" -u -c """
from sys import stdout
from json import load, dump


with open('${parsed_clang_s_output_file}', 'r') as fp:
    parsed_clang_s_output = load(fp)
    for function_object in parsed_clang_s_output:
        print(function_object['name'], file=stdout)
""" |
while read function
do
    disassemble_function_in_executable "${function}" "${executable_file}" | parse_lldb_function_disassembly
done
}


function augment_parsed_clang_s_output_file() {
parsed_clang_s_output_file="$1"
executable_file="$2"

print_instruction_addresses_of_functions_in_parsed_clang_s_output_file "$parsed_clang_s_output_file" "$executable_file" |
"${PYPY}" -u -c """
from sys import stdin, stdout
from json import load, loads, dumps


with open('${parsed_clang_s_output_file}', 'r') as fp:
    clang_s_output = load(fp)

    function_instruction_addresses_list = [
        loads(line)
        for line in stdin
    ]

    for function_object, function_instruction_addresses in zip(clang_s_output, function_instruction_addresses_list):
        assert sum((basic_block_object['number_of_instructions'] for basic_block_object in function_object['basic_blocks'])) <= len(function_instruction_addresses), (function_object, function_instruction_addresses)
        
        instruction_couter_offset = 0
        
        for basic_block_object in function_object['basic_blocks']:
            number_of_instructions = basic_block_object['number_of_instructions']
            
            last_instruction_index = instruction_couter_offset + number_of_instructions - 1
            
            basic_block_object['start_address'] = function_instruction_addresses[instruction_couter_offset]
            basic_block_object['end_address'] = function_instruction_addresses[last_instruction_index]
            
            instruction_couter_offset += number_of_instructions
        
    print(dumps(clang_s_output), file=stdout)
"""
}


function extract_static_loop_information_for_ll_file() {
parsed_llvm_ir_file="$1"
augmented_parsed_clang_s_output_file="$2"
name="$3"


"${PYPY}" -u -c """
from sys import stdout, stderr
from json import load, dumps


with open('${parsed_llvm_ir_file}', 'r') as fp:
    parsed_llvm_ir = load(fp)

with open('${augmented_parsed_clang_s_output_file}', 'r') as fp:
    augmented_parsed_clang_s_output = load(fp)


assert len(parsed_llvm_ir) == len(augmented_parsed_clang_s_output), 1


# add 'basic_blocks' to each parsed_llvm_ir_function_object
for parsed_llvm_ir_function_object, augmented_parsed_clang_s_output_function_object in zip(parsed_llvm_ir, augmented_parsed_clang_s_output):
    assert parsed_llvm_ir_function_object['name'] == augmented_parsed_clang_s_output_function_object['name']

    set_of_all_basic_blocks_in_loops = {
        basic_block
        for loop, basic_blocks in parsed_llvm_ir_function_object['loops_and_basic_blocks'].items()
        for basic_block in basic_blocks
    }

    filtered_basic_block_objects = [
        basic_block_object
        for basic_block_object in augmented_parsed_clang_s_output_function_object['basic_blocks']
        if basic_block_object['name'] in set_of_all_basic_blocks_in_loops
    ]

    assert len(set_of_all_basic_blocks_in_loops) == len(filtered_basic_block_objects)

    parsed_llvm_ir_function_object['basic_blocks'] = filtered_basic_block_objects


    # add 'function_calls' to each basic_block_object
    for basic_block_object in parsed_llvm_ir_function_object['basic_blocks']:
        basic_block_name = basic_block_object['name']
        function_calls = parsed_llvm_ir_function_object['basic_blocks_and_function_calls'][basic_block_name]
        basic_block_object['function_calls'] = function_calls

    # remove 'basic_blocks_and_function_calls' from each parsed_llvm_ir_function_object
    del parsed_llvm_ir_function_object['basic_blocks_and_function_calls']

ll_file_loop_static_information = { 'name': '${name}', 'functions': parsed_llvm_ir }

print(dumps(ll_file_loop_static_information), file=stdout)
"""
}


for benchmark_directory in "${BASELINE_INTERMEDIATE_REPRESENTATIONS_DIRECTORY}"/*
do
    benchmark_name="$(basename "${benchmark_directory}")"

    pushd "${benchmark_directory}"
    ${CLANG} -S *.ll
    ${CLANG} *.s -o "${benchmark_name}" -static -lm
    popd

    executable_file="${benchmark_directory}/${benchmark_name}"        

    static_loop_information_lines_file="$(mktemp)"
    static_loop_information_file="${benchmark_directory}/static_loop_information.json"

     
    for ll_file in "${benchmark_directory}"/*.ll
    do
        clang_s_output_file="${ll_file%.ll}.s"

        parsed_llvm_ir_file="$(mktemp)"
        cat "${ll_file}" | parse_llvm_ir > "${parsed_llvm_ir_file}"
        retval="$?"
        
        if test "${retval}" -eq 0
        then
            echo "Parsed '${ll_file}' to '${parsed_llvm_ir_file}'" >&2
        else
            echo "Failed to parse '${ll_file}' to '${parsed_llvm_ir_file}'" >&2
            exit 1
        fi
        

        parsed_clang_s_output_file="$(mktemp)"
        cat "${clang_s_output_file}" | parse_clang_s_output > "${parsed_clang_s_output_file}"
        retval="$?"
        
        if test "${retval}" -eq 0
        then
            echo "Parsed '${clang_s_output_file}' to '${parsed_clang_s_output_file}'" >&2
        else
            echo "Failed to parse '${clang_s_output_file}' to '${parsed_clang_s_output_file}'" >&2
            exit 1
        fi
        

        augmented_parsed_clang_s_output_file="$(mktemp)"
        augment_parsed_clang_s_output_file "${parsed_clang_s_output_file}" "${executable_file}" > "${augmented_parsed_clang_s_output_file}"
        retval="$?"
        
        if test "${retval}" -eq 0
        then
            echo "Augmented '${parsed_clang_s_output_file}' to '${augmented_parsed_clang_s_output_file}'" >&2
        else
            echo "Failed to augment '${parsed_clang_s_output_file}' to '${augmented_parsed_clang_s_output_file}'" >&2
            exit 1
        fi


        ll_file_static_loop_information_file="$(mktemp)"
        extract_static_loop_information_for_ll_file "${parsed_llvm_ir_file}" "${augmented_parsed_clang_s_output_file}" "$(basename "${ll_file}")" | tee "${ll_file_static_loop_information_file}" >> "${static_loop_information_lines_file}"
        retval="$?"
        
        if test "${retval}" -eq 0
        then
            echo "Extracted static loop information for '${ll_file}' from '${parsed_llvm_ir_file}' and '${augmented_parsed_clang_s_output_file}' to '${ll_file_static_loop_information_file}'" >&2
        else
            echo "Failed to extract static loop information for '${ll_file}' from '${parsed_llvm_ir_file}' and '${augmented_parsed_clang_s_output_file}' to '${ll_file_static_loop_information_file}'" >&2
            exit 1
        fi
        
        rm "${parsed_llvm_ir_file}" "${parsed_clang_s_output_file}" "${augmented_parsed_clang_s_output_file}" "${ll_file_static_loop_information_file}"
    done


    cat "${static_loop_information_lines_file}"  | build_json_array > "${static_loop_information_file}"
    retval="$?"

    if test "${retval}" -eq 0
    then
        echo "Extracted static loop information for '${benchmark_name}' to '${static_loop_information_file}'" >&2
    else
        echo "Failed to extract static loop information for '${benchmark_name}' to '${static_loop_information_file}'" >&2
        exit 1
    fi

    rm "${static_loop_information_lines_file}"

    dynamic_loop_information_file="${benchmark_directory}/dynamic_loop_information.json"

    SCRIPT="${EXPERIMENTAL_CODE_DIRECTORY}/get_writes_within_each_basic_block_with_cache.py"

    fifo="$(create_random_fifo)"

    invoke_pin_string="'${PIN_EXECUTABLE}' -t '${MEMORY_OPERATIONS_DYNAMIC_LIBRARY}' -o '${fifo}' -- '${executable_file}' $(get_benchmark_arguments "${benchmark_name}") &"
    invoke_script_string="'${PYPY}' '${SCRIPT}' -i '${fifo}' -o '${dynamic_loop_information_file}' --static-loop-information '${static_loop_information_file}'"

    echo "$invoke_pin_string" >&2
    eval "$invoke_pin_string"

    echo "$invoke_script_string" >&2
    eval "$invoke_script_string"

    echo "Extracted dynamic loop information for '${benchmark_name}' to '${dynamic_loop_information_file}'" >&2
    rm "$fifo"
done
