FROM afl-pa:latest
ENV AFL_LLVM_LAF_ALL=1
CMD afl-clang-fast -include assert.h -include stdio.h $SUTS/$SUT_SRC -o sut; timeout ${TIME_LIMIT_SECS}s afl-fuzz -i $SEEDS -o $OUT -m 50 -C -- ./sut
