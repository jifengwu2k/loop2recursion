define NEWLINE


endef

FILE_NAME = bf_skey bf_ecb bf_enc bf_cbc bf_cfb64 bf_ofb64 bf
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd2.ll)


L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log l2r_ll lrd_ll lrd2_ll bf bf_l2r bf_lrd bf_lrd2

log: 
	mkdir -p log

ll: ${FILE1} 
	clang -O2 -emit-llvm -S ${FILE1}

l2r_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))

lrd_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

lrd2_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -debug -limit-recursion-depth -limit-recursion-type 2 -not-copy-pointee-array -o $(FILE)_lrd2.ll $(FILE).ll 2>log/$(FILE)_lrd2.log $(NEWLINE))


bf: ${FILE2} 
	clang -O2 -static ${FILE2} -o bf

bf_l2r: ${FILE3} 
	clang -O2 -static ${FILE3} -o bf_l2r

bf_lrd: ${FILE4} 
	clang -O2 -static ${FILE4} -o bf_lrd

bf_lrd2: ${FILE5} 
	clang -O2 -static ${FILE5} -o bf_lrd2

clean:
	rm -rf *.ll bf bf_l2r bf_lrd bf_lrd2 output* log