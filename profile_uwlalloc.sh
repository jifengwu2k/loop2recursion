EXPERIMENT_ROOT="$(dirname "$0")"
TARGET_TYPE_NAME="uwlalloc"
REFERENCE_TARGET_TYPE_NAME="baseline"


# load parameters

source $EXPERIMENT_ROOT/parameters.sh


# profile_benchmark_instruction_counts_and_benchmark_uwlalloc_shifts "$TARGET_TYPE_NAME" "$REFERENCE_TARGET_TYPE_NAME"

# profiling_using_memtracker_and_script_with_uwlalloc_shifts "$TARGET_TYPE_NAME" "$REFERENCE_TARGET_TYPE_NAME" "$BENCHMARK_MAX_STACK_USAGES_DIRECTORY" "$GET_MAX_STACK_USAGE_SCRIPT"

profiling_using_memtracker_and_script_with_uwlalloc_shifts "$TARGET_TYPE_NAME" "$REFERENCE_TARGET_TYPE_NAME" "$BENCHMARK_WRITES_ON_HOTTEST_STACK_ADDRESSES_DIRECTORY" "$GET_WRITES_ON_HOTTEST_STACK_ADDRESS_SCRIPT"

