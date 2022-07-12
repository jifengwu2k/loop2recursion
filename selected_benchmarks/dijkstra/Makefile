all: log dijkstra_small l2r_ll dijkstra_small_l2r lrd_ll dijkstra_small_lrd lrd2_ll dijkstra_small_lrd2

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so

log: Makefile
	mkdir -p log

ll: dijkstra_small.c
	clang -O2 -emit-llvm -S dijkstra_small.c

dijkstra_small: dijkstra_small.ll 
	clang -O2 -static dijkstra_small.ll -o dijkstra_small 

l2r_ll: dijkstra_small.ll
	opt -load ${L2R_SO} -loop2recursion -S -debug -o dijkstra_small_l2r.ll dijkstra_small.ll 2>log/dijkstra_small_l2r.log

dijkstra_small_l2r: dijkstra_small_l2r.ll
	clang -O2 -static dijkstra_small_l2r.ll -o dijkstra_small_l2r 

lrd_ll: dijkstra_small.ll
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -debug -o dijkstra_small_lrd.ll dijkstra_small.ll 2>log/dijkstra_small_lrd.log

dijkstra_small_lrd: dijkstra_small_lrd.ll
	clang -O2 -static dijkstra_small_lrd.ll -o dijkstra_small_lrd

lrd2_ll: dijkstra_small.ll
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -limit-recursion-type 2 -debug -o dijkstra_small_lrd2.ll dijkstra_small.ll 2>log/dijkstra_small_lrd2.log

dijkstra_small_lrd2: dijkstra_small_lrd2.ll
	clang -O2 -static dijkstra_small_lrd2.ll -o dijkstra_small_lrd2

clean:
	rm -rf dijkstra_small dijkstra_small_l2r dijkstra_small_lrd dijkstra_small_lrd2 *.ll output* log