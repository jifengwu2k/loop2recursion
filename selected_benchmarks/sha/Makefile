define NEWLINE


endef

FILE_NAME = sha_driver sha
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log ll l2r_ll lrd_ll sha sha_l2r sha_lrd

log: Makefile
	mkdir -p log

ll: ${FILE1} Makefile
	clang -O2 -emit-llvm -S ${FILE1}

l2r_ll: ${FILE2} Makefile
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))

lrd_ll: ${FILE2} Makefile
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

sha: ${FILE} Makefile
	clang -O2 -static ${FILE2} -o sha

sha_l2r: ${FILE3} Makefile
	clang -O2 -static ${FILE3} -o sha_l2r

sha_lrd: ${FILE4} Makefile
	clang -O2 -static ${FILE4} -o sha_lrd

clean:
	rm -rf *.ll sha sha_l2r sha_lrd output* log