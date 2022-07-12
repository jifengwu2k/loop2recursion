all: log susan l2r_ll susan_l2r lrd_ll susan_lrd lrd2_ll susan_lrd2

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so

log: Makefile
	mkdir -p log

ll: susan.c 
	clang -O2 -emit-llvm -S susan.c

l2r_ll: susan.ll 
	opt -load ${L2R_SO} -loop2recursion -S -o susan_l2r.ll susan.ll 2>log/susan_l2r.log

lrd_ll: susan.ll 
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -o susan_lrd.ll susan.ll 2>log/susan_lrd.log

lrd2_ll: susan.ll 
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -limit-recursion-type 2 -o susan_lrd2.ll susan.ll 2>log/susan_lrd2.log

susan: susan.ll  
	clang -O2 -static susan.ll -o susan -lm

susan_l2r: susan_l2r.ll 
	clang -O2 -static susan_l2r.ll -o susan_l2r -lm

susan_lrd: susan_lrd.ll 
	clang -O2 -static susan_lrd.ll -o susan_lrd -lm

susan_lrd2: susan_lrd2.ll 
	clang -O2 -static susan_lrd2.ll -o susan_lrd2 -lm

clean:
	rm -rf susan susan_l2r susan_lrd susan_lrd2 *.ll output* log