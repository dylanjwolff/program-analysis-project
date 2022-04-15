FROM klee-pa:latest
CMD clang -I klee_src/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone $SUTS/$SUT_SRC -o sut.bc; ./klee_build/bin/klee -output-dir $OUT/klee-out -max-time=$TIME_LIMIT_SECS -max-memory=5000 --use-merge sut.bc
