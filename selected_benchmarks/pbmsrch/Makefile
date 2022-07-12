define NEWLINE


endef

FILE_NAME = bmhasrch  bmhisrch  bmhsrch  
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd2.ll)


L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log ll l2r_ll lrd_ll lrd2_ll search_large search_large_l2r search_large_lrd search_large_lrd2 search_small search_small_l2r search_small_lrd search_small_lrd2 

log: 
	mkdir -p log

ll: ${FILE1} 
	clang -O2 -emit-llvm -S ${FILE1}
	clang -O2 -emit-llvm -S pbmsrch_large.c
	clang -O2 -emit-llvm -S pbmsrch_small.c

l2r_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -debug -S -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))
	
	opt -load ${L2R_SO} -loop2recursion -debug -S -o pbmsrch_large_l2r.ll pbmsrch_large.ll 2>log/pbmsrch_large_l2r.log
	opt -load ${L2R_SO} -loop2recursion -debug -S -o pbmsrch_small_l2r.ll pbmsrch_small.ll 2>log/pbmsrch_small_l2r.log


lrd_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -o pbmsrch_large_lrd.ll pbmsrch_large.ll 2>log/pbmsrch_large_lrd.log
	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -o pbmsrch_small_lrd.ll pbmsrch_small.ll 2>log/pbmsrch_small_lrd.log



lrd2_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -limit-recursion-type 2 -o $(FILE)_lrd2.ll $(FILE).ll 2>log/$(FILE)_lrd2.log $(NEWLINE))

	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -limit-recursion-type 2 -o pbmsrch_large_lrd2.ll pbmsrch_large.ll 2>log/pbmsrch_large_lrd2.log
	opt -load ${L2R_SO} -loop2recursion -debug -S -limit-recursion-depth -limit-recursion-type 2 -o pbmsrch_small_lrd2.ll pbmsrch_small.ll 2>log/pbmsrch_small_lrd2.log



search_large: ${FILE2} 
	clang -O2 -static ${FILE2} pbmsrch_large.ll -o search_large -lm

search_large_l2r: ${FILE3} 
	clang -O2 -static ${FILE3} pbmsrch_large_l2r.ll -o search_large_l2r -lm

search_large_lrd: ${FILE4} 
	clang -O2 -static ${FILE4} pbmsrch_large_lrd.ll -o search_large_lrd -lm

search_large_lrd2: ${FILE5} 
	clang -O2 -static ${FILE5} pbmsrch_large_lrd2.ll -o search_large_lrd2 -lm


search_small: ${FILE2} 
	clang -O2 -static ${FILE2} pbmsrch_small.ll -o search_small -lm

search_small_l2r: ${FILE3} 
	clang -O2 -static ${FILE3} pbmsrch_small_l2r.ll -o search_small_l2r -lm

search_small_lrd: ${FILE4} 
	clang -O2 -static ${FILE4} pbmsrch_small_lrd.ll -o search_small_lrd -lm

search_small_lrd2: ${FILE5} 
	clang -O2 -static ${FILE5} pbmsrch_small_lrd2.ll -o search_small_lrd2 -lm


clean:
	rm -rf *.ll search_large search_large_l2r search_large_lrd search_large_lrd2 search_small search_small_l2r search_small_lrd search_small_lrd2 output* log