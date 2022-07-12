define NEWLINE


endef

FILE_NAME = bitcnt_1 bitcnt_2 bitcnt_3 bitcnt_4 bitcnts bitfiles bitstrng bstr_i
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd2.ll)

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log l2r_ll lrd_ll lrd2_ll bitcnts bitcnts_l2r bitcnts_lrd bitcnts_lrd2

log: Makefile
	mkdir -p log

ll: ${FILE1} Makefile
	clang -O2 -emit-llvm -S ${FILE1}

l2r_ll: ${FILE2} Makefile
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))

lrd_ll: ${FILE2} Makefile
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

lrd2_ll: ${FILE2} Makefile
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -limit-recursion-type 2 -o $(FILE)_lrd2.ll $(FILE).ll 2>log/$(FILE)_lrd2.log $(NEWLINE))

bitcnts: ${FILE2} Makefile
	clang -O2 -static ${FILE2} -o bitcnts

bitcnts_l2r: ${FILE3} Makefile
	clang -O2 -static ${FILE3} -o bitcnts_l2r

bitcnts_lrd: ${FILE4} Makefile
	clang -O2 -static ${FILE4} -o bitcnts_lrd

bitcnts_lrd2: ${FILE5} Makefile
	clang -O2 -static ${FILE5} -o bitcnts_lrd2

clean:
	rm -rf *.ll bitcnts bitcnts_l2r bitcnts_lrd bitcnts_lrd2 output* log