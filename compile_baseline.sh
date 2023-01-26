# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh

TARGET_TYPE_NAME="baseline"

# compile

mkdir -p $BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME

for benchmark_directory in $BENCHMARK_INTERMEDIATE_REPRESENTATIONS_DIRECTORY/$TARGET_TYPE_NAME/*
do
    benchmark=`basename $benchmark_directory`

    echo $CLANG \
    $CLANG_PARAMETERS \
    $benchmark_directory/*.ll \
    -o $BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME/$benchmark \
    -static -lm
    
    $CLANG \
    $CLANG_PARAMETERS \
    $benchmark_directory/*.ll \
    -o $BENCHMARK_EXECUTABLES_DIRECTORY/$TARGET_TYPE_NAME/$benchmark \
    -static -lm
done

