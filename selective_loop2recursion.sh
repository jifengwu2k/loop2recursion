EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh


function print_loops_to_convert_in_files() {
loop_information="$1"


"${PYPY}" -u "${EXPERIMENT_ROOT}/print_loops_to_convert_in_files.py" --loop-information "${loop_information}"
}


for benchmark_directory in "${BASELINE_INTERMEDIATE_REPRESENTATIONS_DIRECTORY}"/*
do
    benchmark_name="$(basename "${benchmark_directory}")"
    
    if ! test -d "${benchmark_directory}"
    then
        echo "Directory '${benchmark_directory}' does not exist for benchmark '${benchmark_name}'" >&2
        exit 1
    fi


    dynamic_loop_information_json="${benchmark_directory}/dynamic_loop_information.json"

    if ! test -f "${dynamic_loop_information_json}"
    then
        echo "'${dynamic_loop_information_json}' does not exist for benchmark '${benchmark_name}'" >&2
        exit 1
    fi


    benchmark_selective_loop2recursion_intermediate_representations_directory="${BENCHMARK_INTERMEDIATE_REPRESENTATIONS_DIRECTORY}/selective_loop2recursion/${benchmark_name}"
    mkdir -p "${benchmark_selective_loop2recursion_intermediate_representations_directory}"


    for ll_file in "${benchmark_directory}"/*.ll
    do
        ll_file_basename="$(basename "${ll_file}")"
        loops_to_convert="$(echo "${ll_file_basename}" | print_loops_to_convert_in_files "${dynamic_loop_information_json}")"
        retval="$?"
        
        if test "${retval}" -eq 0
        then
            echo "Loops to convert in '${ll_file}': ${loops_to_convert}" >&2
        else
            echo "Failed to identify loops to convert in '${ll_file}'" >&2
            exit 1
        fi

        converted_ll_file="${benchmark_selective_loop2recursion_intermediate_representations_directory}/${ll_file_basename}"

        "${OPT}" \
        -enable-new-pm=0 \
        -load "$OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY" \
        -loop2recursion \
        -loops-to-convert "${loops_to_convert}" \
        -recursion-depth-limit 64 \
        -S "${ll_file}" \
        -o "${converted_ll_file}"

        retval="$?"

        if test "${retval}" -eq 0
        then
            echo "Converted '${ll_file}' to '${converted_ll_file}'" >&2
        else
            echo "Failed to convert '${ll_file}'" >&2
            exit 1
        fi
    done


    benchmark_selective_loop2recursion_executables_directory="${BENCHMARK_EXECUTABLES_DIRECTORY}/selective_loop2recursion"
    mkdir -p "${benchmark_selective_loop2recursion_executables_directory}"


    echo "${CLANG}" \
    $CLANG_PARAMETERS \
    "${benchmark_selective_loop2recursion_intermediate_representations_directory}"/*.ll \
    -o "${benchmark_selective_loop2recursion_executables_directory}/${benchmark_name}" \
    -static -lm

    "${CLANG}" \
    $CLANG_PARAMETERS \
    "${benchmark_selective_loop2recursion_intermediate_representations_directory}"/*.ll \
    -o "${benchmark_selective_loop2recursion_executables_directory}/${benchmark_name}" \
    -static -lm
done

