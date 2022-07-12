L2R_SO = ~/Tools/LLVM/LLVM3.8.0/build/lib/LLVMLoop2Recursion.so

define NEWLINE


endef

FILE_NAME = rawcaudio rawdaudio adpcm
FILE1 = $(foreach FILE,$(FILE_NAME),$(FILE).c)
FILE2 = $(foreach FILE,$(FILE_NAME),$(FILE).ll)
FILE3 = $(foreach FILE,$(FILE_NAME),$(FILE)_l2r.ll)
FILE4 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)
FILE5 = $(foreach FILE,$(FILE_NAME),$(FILE)_lrd.ll)


all: log ll l2r_ll lrd_ll lrd2_ll rawcaudio rawcaudio_l2r rawcaudio_lrd rawcaudio_lrd2 rawdaudio rawdaudio_l2r rawdaudio_lrd rawdaudio_lrd2

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

rawcaudio: rawcaudio.ll adpcm.ll 
	clang -O2 -static rawcaudio.ll adpcm.ll -o rawcaudio
	cp rawcaudio ../bin/
	cp rawcaudio ../

rawcaudio_l2r: rawcaudio_l2r.ll adpcm_l2r.ll 
	clang -O2 -static rawcaudio_l2r.ll adpcm_l2r.ll -o rawcaudio_l2r
	cp rawcaudio_l2r ../bin/
	cp rawcaudio_l2r ../

rawcaudio_lrd: rawcaudio_lrd.ll adpcm_lrd.ll 
	clang -O2 -static rawcaudio_lrd.ll adpcm_lrd.ll -o rawcaudio_lrd
	cp rawcaudio_lrd ../bin/
	cp rawcaudio_lrd ../

rawcaudio_lrd2: rawcaudio_lrd2.ll adpcm_lrd2.ll 
	clang -O2 -static rawcaudio_lrd2.ll adpcm_lrd2.ll -o rawcaudio_lrd2
	cp rawcaudio_lrd2 ../bin/
	cp rawcaudio_lrd2 ../

rawdaudio: rawdaudio.ll adpcm.ll 
	clang -O2 -static rawdaudio.ll adpcm.ll -o rawdaudio
	cp rawdaudio ../bin/
	cp rawdaudio ../

rawdaudio_l2r: rawdaudio_l2r.ll adpcm_l2r.ll 
	clang -O2 -static rawdaudio_l2r.ll adpcm_l2r.ll -o rawdaudio_l2r
	cp rawdaudio_l2r ../bin/
	cp rawdaudio_l2r ../

rawdaudio_lrd: rawdaudio_lrd.ll adpcm_lrd.ll 
	clang -O2 -static rawdaudio_lrd.ll adpcm_lrd.ll -o rawdaudio_lrd
	cp rawdaudio_lrd ../bin/
	cp rawdaudio_lrd ../

rawdaudio_lrd2: rawdaudio_lrd2.ll adpcm_lrd2.ll 
	clang -O2 -static rawdaudio_lrd2.ll adpcm_lrd2.ll -o rawdaudio_lrd2
	cp rawdaudio_lrd2 ../bin/
	cp rawdaudio_lrd2 ../

clean:
	rm -rf *.ll output* log rawcaudio rawcaudio_l2r rawcaudio_lrd rawcaudio_lrd2 rawdaudio rawdaudio_l2r rawdaudio_lrd rawdaudio_lrd2 bin/*