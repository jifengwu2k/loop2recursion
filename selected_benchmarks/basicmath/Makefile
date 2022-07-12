define NEWLINE


endef

FILE_NAME = basicmath_small rad2deg cubic isqrt
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd2.ll)


L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log l2r_ll lrd_ll lrd2_ll basicmath_small basicmath_small_l2r basicmath_small_lrd basicmath_small_lrd2

log: 
	mkdir -p log

ll: ${FILE1} 
	clang -O2 -emit-llvm -S ${FILE1}

l2r_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -debug -S -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))

lrd_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -debug -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

lrd2_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -limit-recursion-type 2 -debug -o $(FILE)_lrd2.ll $(FILE).ll 2>log/$(FILE)_lrd2.log $(NEWLINE))


basicmath_small: ${FILE2} 
	clang -O2 -static ${FILE2} -o basicmath_small -lm

basicmath_small_l2r: ${FILE3} 
	clang -O2 -static ${FILE3} -o basicmath_small_l2r -lm

basicmath_small_lrd: ${FILE4} 
	clang -O2 -static ${FILE4} -o basicmath_small_lrd -lm

basicmath_small_lrd2: ${FILE5} 
	clang -O2 -static ${FILE5} -o basicmath_small_lrd2 -lm

clean:
	rm -rf *.ll basicmath_small basicmath_small_l2r basicmath_small_lrd basicmath_small_lrd2 output* log