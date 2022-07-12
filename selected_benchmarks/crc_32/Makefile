all: log ll l2r_ll lrd_ll crc crc_l2r crc_lrd

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so

log: Makefile
	mkdir -p log

ll: crc_32.c Makefile
	clang -O2 -emit-llvm -S crc_32.c

l2r_ll: crc_32.ll Makefile
	opt -load ${L2R_SO} -loop2recursion -S -o crc_32_l2r.ll crc_32.ll 2>log/crc_32_l2r.log

lrd_ll: crc_32.ll Makefile
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -o crc_32_lrd.ll crc_32.ll 2>log/crc_32_lrd.log

crc: crc_32.ll Makefile 
	clang -O2 -static crc_32.ll -o crc

crc_l2r: crc_32_l2r.ll Makefile
	clang -O2 -static crc_32_l2r.ll -o crc_l2r 

crc_lrd: crc_32_lrd.ll Makefile
	clang -O2 -static crc_32_lrd.ll -o crc_lrd

clean:
	rm -rf crc crc_l2r crc_l2r_lrd *.ll output* log