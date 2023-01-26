# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

function print_usage() {
    echo "usage: run_optimized_loop2recursion.sh -t TARGET_TYPE_NAME -p LOOP2RECURSION_PARAMETERS"
}

# if no options are provided, nothing happens
# if `-a` or `-b` is provided followed by an argument, `option` is set to `a` or `b`, and `OPTARG` is set to the argument  
# if no argument is provided, `option` is set to `:` and `OPTARG` is set to the option character
# if an illegal option is provided, `option` is set to `?` and `OPTARG` is set to the (invalid) option character
while getopts ":hp:t:" option
do
  case $option in
    h)
      print_usage >&2
      exit 1
      ;;
    p)
      LOOP2RECURSION_PARAMETERS="$OPTARG"
      echo "LOOP2RECURSION_PARAMETERS=$LOOP2RECURSION_PARAMETERS"
      ;;
    t)
      TARGET_TYPE_NAME="$OPTARG"
      echo "TARGET_TYPE_NAME=$TARGET_TYPE_NAME"
      ;;
    \?)
      echo "invalid option: -$OPTARG" >&2
      print_usage >&2
      exit 1
      ;;
    :)
      echo "option -$OPTARG requires an argument" >&2
      print_usage >&2
      exit 1
      ;;
  esac
done

if [ -z "$TARGET_TYPE_NAME" ]
then
    print_usage
    exit 1
fi

# load parameters

source $EXPERIMENT_ROOT/parameters.sh

# loop2recursion

for benchmark_directory in $BASELINE_INTERMEDIATE_REPRESENTATIONS_DIRECTORY/*
do
    benchmark=`basename $benchmark_directory`
    
    target_directory=$BENCHMARK_INTERMEDIATE_REPRESENTATIONS_DIRECTORY/$TARGET_TYPE_NAME/$benchmark

    mkdir -p $target_directory
    
    for ll_file in $benchmark_directory/*.ll
    do
        ll_file_basename=`basename $ll_file`

        target_ll_file=$target_directory/$ll_file_basename

        echo $OPT  \
        -enable-new-pm=0 \
        -load $OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY \
        -loop2recursion \
        $LOOP2RECURSION_PARAMETERS \
        -S $ll_file \
        -o $target_ll_file.temp

        echo $OPT \
        -enable-new-pm=0 \
        -instnamer \
        -S $target_ll_file.temp \
        -o $target_ll_file

        $OPT  \
        -enable-new-pm=0 \
        -load $OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY \
        -loop2recursion \
        $LOOP2RECURSION_PARAMETERS \
        -S $ll_file \
        -o $target_ll_file.temp

        $OPT \
        -enable-new-pm=0 \
        -instnamer \
        -S $target_ll_file.temp \
        -o $target_ll_file
    done
done

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

