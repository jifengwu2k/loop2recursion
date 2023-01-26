# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

function print_usage() {
    echo "usage: profile_cache.sh -t TARGET_TYPE_NAME"
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

profiling_using_memtracker_and_script "$TARGET_TYPE_NAME" "$EXPERIMENT_ROOT/writes_on_hottest_stack_address_with_cache" "$EXPERIMENTAL_CODE_DIRECTORY/get_writes_on_hottest_stack_address_with_cache.py" '-r'
