All source code of "Loop2Recursion: Compiler-Assisted Wear Leveling for Non-Volatile Memory", including the Loop2Recursion LLVM Pass, the Intel Pin-based profiling tools, as well as data preprocessing scripts.

## Requirements

- Unix-like system with the `/tmp` directory
- At least 8 GB of RAM
- clang+llvm-13.0.1
- pypy, with the following extensions:
  - intervaltree
  - more-itertools
  - numpy
- Jupyter Notebook, with a Python 3 kernel and the following extensions:
  - matplotlib
  - ipympl
  - numpy
  - pandas
  - pylatex
  - scipy

## Replication Instructions

### Build Tools

1. Download Intel Pin, extract, and move the extracted directory (e.g. `pin-3.11-97998-g7ecce2dac-gcc-linux`) containing the `pin` executable to EXPERIMENT_ROOT.
2. Edit `parameters.sh`, and change the value of `PIN_ROOT`. Edit the values of other variables as required.
3. Run `build_loop2recursion.sh`
4. Run `build_libuwlalloc.sh`
5. Run `build_pin_tools.sh`

### Compile Executables

1. `bash compile_baseline.sh`
2. `bash extract_loop_information.sh`
3. `bash selective_loop2recursion.sh`
4.

```bash
for recursion_depth_limit in 8 16 32 64 128 256
do
    bash run_unoptimized_loop2recursion.sh -t "unoptimized_loop2recursion-recursion_depth_limit-${recursion_depth_limit}" -p "-recursion-depth-limit ${recursion_depth_limit}"
done
```

5.

```bash
for recursion_depth_limit in 8 16 32 64 128 256
do
    bash run_optimized_loop2recursion.sh -t "new_loop2recursion-recursion_depth_limit-${recursion_depth_limit}" -p "-recursion-depth-limit ${recursion_depth_limit}"
done
```

6.

```bash
for loop_iterations in 8 16 32 64 128 256
do
    bash run_optimized_loop2recursion.sh -t "new_loop2recursion-loop_iterations-${loop_iterations}" -p "-loop-iterations ${loop_iterations}"
done
```

### Run and Profile Executables

This process takes a long time (around a day).

```bash
bash profile.sh -t baseline

bash profile.sh -t selective_loop2recursion

bash profile.sh -t unoptimized_loop2recursion

bash profile.sh -t new_loop2recursion

for recursion_depth_limit in 8 16 32 64 128 256
do
    bash profile.sh -t "unoptimized_loop2recursion-recursion_depth_limit-${recursion_depth_limit}"
done

for recursion_depth_limit in 8 16 32 64 128 256
do
    bash profile.sh -t "new_loop2recursion-recursion_depth_limit-${recursion_depth_limit}"
done

for loop_iterations in 8 16 32 64
do
    bash profile.sh -t "new_loop2recursion-loop_iterations-${loop_iterations}"
done
```

```bash
bash profile_extras.sh -t unoptimized_loop2recursion

bash profile_extras.sh -t new_loop2recursion
```

```bash
bash profile_uwlalloc.sh
```

### Data Analysis

Run the following Jupyter Notebooks:

1. `average_maximum_stack_usages_and_average_writes_on_hottest_stack_address_under_different_recursion_depth_limits_and_loop_iterations.ipynb`
2. `baseline_loop2recursion_new_loop2recursion.ipynb`
3. `baseline_uwlalloc_recursion_depth_limit.ipynb`
4. `experiment_data_visualization.ipynb`
5. `loop_iterations_list.ipynb`
6. `recursion_depth_limit.ipynb`
7. `cache_analysis.ipynb`
8. `writes_on_stack_addresses_for_benchmark_dijkstra_on_cache_less_architecture.ipynb`
9.  `writes_on_stack_addresses_on_cache_enabled_architecture.ipynb`
