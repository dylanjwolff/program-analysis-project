FROM klee/klee:2.1

ENV WORKDIR=/home/klee
WORKDIR $WORKDIR

ENV SUTS=$WORKDIR/suts
ENV SEEDS=$WORKDIR/seeds
ENV OUT=/out
ENV TIME_LIMIT_MINS=1
RUN sudo mkdir -p $OUT; sudo chown klee /out
COPY sample-programs/KLEE-VERSION $SUTS
VOLUME $OUT
CMD clang -I klee_src/include/ -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone $SUTS/$SUT_SRC -o sut.bc; ./klee_build/bin/klee -output-dir $OUT/klee-out sut.bc
