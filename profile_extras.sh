# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

function print_usage() {
    echo "usage: profile_extras.sh -t TARGET_TYPE_NAME"
}

# if no options are provided, nothing happens
# if `-a` or `-b` is provided followed by an argument, `option` is set to `a` or `b`, and `OPTARG` is set to the argument  
# if no argument is provided, `option` is set to `:` and `OPTARG` is set to the option character
# if an illegal option is provided, `option` is set to `?` and `OPTARG` is set to the (invalid) option character
while getopts ":ht:" option
do
  case $option in
    h)
      print_usage >&2
      exit 1
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

# profiling_using_memtracker_and_script "$TARGET_TYPE_NAME" "$MAX_NUMBER_OF_STACK_FRAMES_ON_A_STACK_ADDRESS_DIRECTORY" "$GET_MAX_NUMBER_OF_STACK_FRAMES_ON_A_STACK_ADDRESS_SCRIPT"

profiling_using_memtracker_and_script "$TARGET_TYPE_NAME" "$WRITES_ON_HOTTEST_ADDRESS_IN_STACK_FRAMES_DIRECTORY" "$GET_WRITES_ON_HOTTEST_ADDRESS_IN_STACK_FRAMES_SCRIPT"

