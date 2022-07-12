define NEWLINE


endef

FILE_NAME = main fftmisc fourierf
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd2.ll)

L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so


all: log ll l2r_ll lrd_ll lrd2_ll fft fft_l2r fft_lrd fft_lrd2

log: 
	mkdir -p log

ll: ${FILE1} 
	clang -O2 -emit-llvm -S ${FILE1}

l2r_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -o $(FILE)_l2r.ll $(FILE).ll 2>log/$(FILE)_l2r.log $(NEWLINE))

lrd_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -o $(FILE)_lrd.ll $(FILE).ll 2>log/$(FILE)_lrd.log $(NEWLINE))

lrd2_ll: ${FILE2} 
	$(foreach FILE, $(FILE_NAME), \
	opt -load ${L2R_SO} -loop2recursion -S -limit-recursion-depth -limit-recursion-type 2 -o $(FILE)_lrd2.ll $(FILE).ll 2>log/$(FILE)_lrd2.log $(NEWLINE))


fft: ${FILE2} 
	clang -O2 -static ${FILE2} -o fft -lm

fft_l2r: ${FILE3} 
	clang -O2 -static ${FILE3} -o fft_l2r -lm

fft_lrd: ${FILE4} 
	clang -O2 -static ${FILE4} -o fft_lrd -lm


fft_lrd2: ${FILE5} 
	clang -O2 -static ${FILE5} -o fft_lrd2 -lm

clean:
	rm -rf *.ll fft fft_l2r fft_lrd fft_lrd2 output* log