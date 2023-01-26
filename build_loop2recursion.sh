# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh

pushd "$(dirname "$OPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY")"
make
popd

pushd "$(dirname "$UNOPTIMIZED_LOOP2RECURSION_DYNAMIC_LIBRARY")"
make
popd

