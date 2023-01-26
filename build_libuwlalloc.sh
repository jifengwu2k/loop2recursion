# parse arguments

EXPERIMENT_ROOT="$(dirname "$0")"

# load parameters

source $EXPERIMENT_ROOT/parameters.sh

cd "$EXPERIMENTAL_CODE_DIRECTORY"
 
"$CLANG" -shared -fPIC -O3 UWLalloc/lib/uwlalloc.c -o libuwlalloc.so

