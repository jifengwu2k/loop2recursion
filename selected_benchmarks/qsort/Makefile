L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log ll l2r_ll lrd_ll qsort_small qsort_small_l2r qsort_small_lrd

log: Makefile
	mkdir -p log

ll: qsort_small.c Makefile
	clang -O2 -emit-llvm -S qsort_small.c

l2r_ll: qsort_small.ll Makefile
	opt -load ${L2R_SO} -loop2recursion -S -o qsort_small_l2r.ll qsort_small.ll 2>log/qsort_small_l2r.log

lrd_ll: qsort_small.ll Makefile
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -o qsort_small_lrd.ll qsort_small.ll 2>log/qsort_small_lrd.log


qsort_small: qsort_small.ll Makefile
	clang -static -O2 qsort_small.ll -o qsort_small -lm

qsort_small_l2r: qsort_small_l2r.ll Makefile
	clang -O2 -static qsort_small_l2r.ll -o qsort_small_l2r -lm

qsort_small_lrd: qsort_small_lrd.ll Makefile
	clang -O2 -static qsort_small_lrd.ll -o qsort_small_lrd -lm

clean:
	rm -rf *.ll qsort_small qsort_small_l2r qsort_small_lrd output* log