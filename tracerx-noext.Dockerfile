FROM tracerx-pa:latest
CMD tracerx-clang -I $TRACERX_ROOT/include -emit-llvm -c -g $SUTS/$SUT_SRC -o sut.bc; tracerx -solver-backend=z3 --search=dfs -output-dir=$OUT/tracerx-out -max-time=$TIME_LIMIT_SECS -max-memory=5000 -no-existential sut.bc
