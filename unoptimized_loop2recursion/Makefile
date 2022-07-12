# بسم الله الرحمن الرحيم


Loop2Recursion.so: Loop2Recursion.o LoopInformation.o LoopConverter.o get_closest_matching_integer_type.o
	clang++ -fPIC -shared Loop2Recursion.o LoopInformation.o LoopConverter.o get_closest_matching_integer_type.o -o Loop2Recursion.so `llvm-config --ldflags`

Loop2Recursion.o: Loop2Recursion.cpp
	clang++ `llvm-config --cxxflags` -c -fPIC Loop2Recursion.cpp -o Loop2Recursion.o

LoopInformation.o: LoopInformation.cpp
	clang++ `llvm-config --cxxflags` -c -fPIC LoopInformation.cpp -o LoopInformation.o

LoopConverter.o: LoopConverter.cpp
	clang++ `llvm-config --cxxflags` -c -fPIC LoopConverter.cpp -o LoopConverter.o

get_closest_matching_integer_type.o: get_closest_matching_integer_type.cpp
	clang++ `llvm-config --cxxflags` -c -fPIC get_closest_matching_integer_type.cpp -o get_closest_matching_integer_type.o
