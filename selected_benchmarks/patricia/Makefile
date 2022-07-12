all: log patricia l2r_ll patricia_l2r lrd_ll patricia_lrd lrd2_ll patricia_lrd2

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so

log: Makefile
	mkdir -p log

ll: patricia.c patricia_test.c 
	clang -O2 -emit-llvm -S patricia.c patricia_test.c

l2r_ll: patricia.ll patricia_test.ll 
	opt -load ${L2R_SO} -loop2recursion -S -debug -o patricia_l2r.ll patricia.ll 2>log/patricia_l2r.log
	opt -load ${L2R_SO} -loop2recursion -S -debug -o patricia_test_l2r.ll patricia_test.ll 2>log/patricia_test_l2r.log

lrd_ll: patricia.ll patricia_test.ll 
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -o patricia_lrd.ll patricia.ll 2>log/patricia_lrd.log
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -o patricia_test_lrd.ll patricia_test.ll 2>log/patricia_test_lrd.log

lrd2_ll: patricia.ll patricia_test.ll
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -limit-recursion-type 2 -o patricia_lrd2.ll patricia.ll 2>log/patricia_lrd2.log
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -limit-recursion-type 2 -o patricia_test_lrd2.ll patricia_test.ll 2>log/patricia_test_lrd2.log

patricia: patricia.ll patricia_test.ll 
	clang -O2 -static patricia.ll patricia_test.ll -o patricia

patricia_l2r: patricia_l2r.ll patricia_test_l2r.ll 
	clang -O2 -static patricia_l2r.ll patricia_test_l2r.ll -o patricia_l2r

patricia_lrd: patricia_lrd.ll patricia_test_lrd.ll 
	clang -O2 -static patricia_lrd.ll patricia_test_lrd.ll -o patricia_lrd

patricia_lrd2: patricia_lrd2.ll patricia_test_lrd2.ll 
	clang -O2 -static patricia_lrd2.ll patricia_test_lrd2.ll -o patricia_lrd2

clean:
	rm -rf patricia patricia_l2r patricia_lrd patricia_lrd2 output* *.ll log