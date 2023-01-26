CLANG=clang
CLANG_PARAMETERS="-fno-optimize-sibling-calls -fstack-size-section"
OPT=opt
LLDB=lldb
PYPY="$(which python3)"
if [ -z "$PYPY" ]
then
    echo "pypy is not installed or in PATH" >&2
    exit 1
fi


BENCHMARK_INTERMEDIATE_REPRESENTATIONS_DIRECTORY="$EXPERIMENT_ROOT/benchmark_intermediate_representations"
BENCHMARK_EXECUTABLES_DIRECTORY="$EXPERIMENT_ROOT/benchmark_executables"
BENCHMARK_MAX_STACK_USAGES_DIRECTORY="$EXPERIMENT_ROOT/benchmark_max_stack_usages"
BENCHMARK_INSTRUCTION_COUNTS_DIRECTORY="$EXPERIMENT_ROOT/benchmark_instruction_counts"
BENCHMARK_WRITES_ON_HOTTEST_STACK_ADDRESSES_DIRECTORY="$EXPERIMENT_ROOT/benchmark_writes_on_hottest_stack_addresses"
MAX_NUMBER_OF_STACK_FRAMES_ON_A_STACK_ADDRESS_DIRECTORY="$EXPERIMENT_ROOT/max_number_of_stack_frames_on_a_stack_address"
WRITES_ON_HOTTEST_ADDRESS_IN_STACK_FRAMES_DIRECTORY="$EXPERIMENT_ROOT/writes_on_hottest_address_in_stack_frames"
BENCHMARK_CACHE_SIMULATIONS_DIRECTORY="$EXPERIMENT_ROOT/benchmark_cache_simulations"
BENCHMARK_UWLALLOC_SHIFTS_DIRECTORY="$EXPERIMENT_ROOT/benchmark_uwlalloc_shifts"


BASELINE_INTERMEDIATE_REPRESENTATIONS_DIRECTORY="$BENCHMARK_INTERMEDIATE_REPRESENTATIONS_DIRECTORY/baseline"


SELECTED_BENCHMARKS_DIRECTORY="$EXPERIMENT_ROOT/selected_benchmarks"


OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY="$EXPERIMENT_ROOT/optimized_loop2recursion/Loop2Recursion.so"
UNOPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY="$EXPERIMENT_ROOT/unoptimized_loop2recursion/Loop2Recursion.so"


PIN_ROOT="$EXPERIMENT_ROOT/pin-3.11-97998-g7ecce2dac-gcc-linux"
PIN_EXECUTABLE="$PIN_ROOT/pin"
TOOLS_ROOT="$PIN_ROOT/source/tools"


PIN_TOOLS_DIRECTORY="$EXPERIMENT_ROOT/pin_tools"
MEMTRACKER_DYNAMIC_LIBRARY="$PIN_TOOLS_DIRECTORY/obj-intel64/memtracker.so"
INSTRUCTION_COUNT_DYNAMIC_LIBRARY="$PIN_TOOLS_DIRECTORY/obj-intel64/instruction_count.so"
UWLALLOC_EXTRA_INSTRUCTION_COUNT_DYNAMIC_LIBRARY="$PIN_TOOLS_DIRECTORY/obj-intel64/uwlalloc_extra_instruction_count.so"
MEMORY_OPERATIONS_DYNAMIC_LIBRARY="$PIN_TOOLS_DIRECTORY/obj-intel64/memory_operations.so"


EXPERIMENTAL_CODE_DIRECTORY="$EXPERIMENT_ROOT/experimental_code"
GET_MAX_STACK_USAGE_SCRIPT="$EXPERIMENTAL_CODE_DIRECTORY/get_max_stack_usage.py"
GET_WRITES_ON_HOTTEST_STACK_ADDRESS_SCRIPT="$EXPERIMENTAL_CODE_DIRECTORY/get_writes_on_hottest_stack_address.py"
GET_MAX_NUMBER_OF_STACK_FRAMES_ON_A_STACK_ADDRESS_SCRIPT="$EXPERIMENTAL_CODE_DIRECTORY/get_max_number_of_stack_frames_on_a_stack_address.py"
GET_WRITES_ON_HOTTEST_ADDRESS_IN_STACK_FRAMES_SCRIPT="$EXPERIMENTAL_CODE_DIRECTORY/get_writes_on_hottest_address_in_stack_frames.py"
GET_UWLALLOC_SHIFTS_SCRIPT="$EXPERIMENTAL_CODE_DIRECTORY/get_uwlalloc_shifts.py"


function get_benchmark_arguments() {
    case $1 in
    basicmath) 
        arguments="> /dev/null"
        ;;
    bf)
        arguments="e '$SELECTED_BENCHMARKS_DIRECTORY/bf/input_small.asc' /dev/null 1234567890abcdeffedcba0987654321"
        ;;
    bitcnts)
        arguments="75000 > /dev/null"
        ;;
    crc_32)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/rawcaudio/data/small.pcm' > /dev/null"
        ;;
    dijkstra)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/dijkstra/input.dat' > /dev/null"
        ;;
    fft)
        arguments="4 4096 > /dev/null"
        ;;
    patricia)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/patricia/small.udp' > /dev/null"
        ;;
    pbmsrch)
        arguments="> /dev/null"
        ;;
    qsort)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/qsort/input_small.dat' > /dev/null"
        ;;
    qsort_small)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/qsort/input_small.dat' > /dev/null"
        ;;
    rawcaudio)
        arguments="< '$SELECTED_BENCHMARKS_DIRECTORY/rawcaudio/data/small.pcm' > /dev/null"
        ;;
    rawdaudio)
        arguments="< '$SELECTED_BENCHMARKS_DIRECTORY/rawdaudio/data/small.adpcm' > /dev/null"
        ;;
    sha)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/sha/input_small.asc' > /dev/null"
        ;;
    susan)
        arguments="'$SELECTED_BENCHMARKS_DIRECTORY/susan/input_small.pgm' /dev/null -s"
        ;;
    esac

    echo "$arguments"
}

function create_random_fifo() {
    fifo="/tmp/$RANDOM"
    while [ -e "$fifo" ]
    do
        fifo="/tmp/$RANDOM"
    done
    mkfifo "$fifo"
    echo "$fifo"
}

function profiling_using_pintool() {
TARGET_TYPE_NAME="$1"
OUTPUT_DIRECTORY="$2"
PINTOOL="$3"

ulimit -s unlimited

mkdir -p "$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME"

for benchmark_path in "$BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME/"*
do
    benchmark="$(basename "$benchmark_path")"
    output_file="$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME/$benchmark"

    invoke_pin_string="'$PIN_EXECUTABLE' -t '$3' -o '$output_file' -- '$benchmark_path' $(get_benchmark_arguments "$benchmark")"
    
    echo "$invoke_pin_string"
    eval "$invoke_pin_string"
done
}

function profiling_using_memtracker_and_script() {
TARGET_TYPE_NAME="$1"
OUTPUT_DIRECTORY="$2"
SCRIPT="$3"
MEMTRACKER_OPTIONS="$4"

if ! test -d "$BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME"
then
    echo "Directory '$BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME' does not exist for target type '${TARGET_TYPE_NAME}'" >&2
    exit 1
fi

ulimit -s unlimited

mkdir -p "$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME"

for benchmark_path in "$BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME/"*
do
    benchmark="$(basename "$benchmark_path")"
    fifo="$(create_random_fifo)"
    output_file="$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME/$benchmark"

    invoke_pin_string="'$PIN_EXECUTABLE' -t '$MEMTRACKER_DYNAMIC_LIBRARY' $MEMTRACKER_OPTIONS -o '$fifo' -- '$benchmark_path' $(get_benchmark_arguments "$benchmark")"
    invoke_script_string="'$PYPY' '$SCRIPT' -i '$fifo' -o '$output_file' &"
    
    echo "$invoke_script_string"
    eval "$invoke_script_string"

    echo "$invoke_pin_string"
    eval "$invoke_pin_string"
    
    rm "$fifo"
done
}

function profiling_using_memtracker_and_script_with_uwlalloc_shifts() {
TARGET_TYPE_NAME="$1"
REFERENCE_TARGET_TYPE_NAME="$2"
OUTPUT_DIRECTORY="$3"
SCRIPT="$4"

ulimit -s unlimited

mkdir -p "$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME"

for benchmark_path in "$BENCHMARK_EXECUTABLES_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME/"*
do
    benchmark="$(basename "$benchmark_path")"
    fifo="$(create_random_fifo)"
    output_file="$OUTPUT_DIRECTORY/$TARGET_TYPE_NAME/$benchmark"
    uwlalloc_shifts_file="$BENCHMARK_UWLALLOC_SHIFTS_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME/$benchmark"

    invoke_pin_string="'$PIN_EXECUTABLE' -t '$MEMTRACKER_DYNAMIC_LIBRARY' -o '$fifo' -- '$benchmark_path' $(get_benchmark_arguments "$benchmark")"
    invoke_script_string="'$PYPY' '$SCRIPT' -i '$fifo' -o '$output_file' --stack-frame-shifts '$uwlalloc_shifts_file' &"
    
    echo "$invoke_script_string"
    eval "$invoke_script_string"
    
    echo "$invoke_pin_string"
    eval "$invoke_pin_string"
    
    rm "$fifo"
done
}

function profile_benchmark_instruction_counts_and_benchmark_uwlalloc_shifts() {
TARGET_TYPE_NAME="$1"
REFERENCE_TARGET_TYPE_NAME="$2"

ulimit -s unlimited

mkdir -p "$BENCHMARK_UWLALLOC_SHIFTS_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME"
mkdir -p "$BENCHMARK_INSTRUCTION_COUNTS_DIRECTORY/$TARGET_TYPE_NAME"

for benchmark_path in "$BENCHMARK_EXECUTABLES_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME/"*
do
    benchmark="$(basename "$benchmark_path")"
    fifo="$(create_random_fifo)"
    
    reference_target_type_instruction_count_input_file="$BENCHMARK_INSTRUCTION_COUNTS_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME/$benchmark"
    reference_target_type_instruction_count_input="$(cat "$reference_target_type_instruction_count_input_file")"
    
    uwlalloc_instruction_count_output_file="$BENCHMARK_INSTRUCTION_COUNTS_DIRECTORY/$TARGET_TYPE_NAME/$benchmark"
    get_uwlalloc_shifts_output_file="$BENCHMARK_UWLALLOC_SHIFTS_DIRECTORY/$REFERENCE_TARGET_TYPE_NAME/$benchmark"

    run_benchmark_with_memtrace_string="'$PIN_EXECUTABLE' -t '$MEMTRACKER_DYNAMIC_LIBRARY' -o '$fifo' -- '$benchmark_path' $(get_benchmark_arguments "$benchmark") &"
    invoke_get_uwlalloc_shifts_with_uwlalloc_extra_instruction_count_string="'$PIN_EXECUTABLE' -t '$UWLALLOC_EXTRA_INSTRUCTION_COUNT_DYNAMIC_LIBRARY' -i '$reference_target_type_instruction_count_input' -o '$uwlalloc_instruction_count_output_file' -- '$PYPY' '$GET_UWLALLOC_SHIFTS_SCRIPT' -i '$fifo' -o '$get_uwlalloc_shifts_output_file'"
    
    echo "$run_benchmark_with_memtrace_string"
    eval "$run_benchmark_with_memtrace_string"
    
    echo "$invoke_get_uwlalloc_shifts_with_uwlalloc_extra_instruction_count_string"
    eval "$invoke_get_uwlalloc_shifts_with_uwlalloc_extra_instruction_count_string"
    
    rm "$fifo"
done
}

