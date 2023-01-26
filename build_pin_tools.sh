# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh

REAL_PIN_ROOT="$(realpath "$PIN_ROOT")"
REAL_TOOLS_ROOT="$(realpath "$TOOLS_ROOT")"

cd $PIN_TOOLS_DIRECTORY
make PIN_ROOT="$REAL_PIN_ROOT" TOOLS_ROOT="$REAL_TOOLS_ROOT"

