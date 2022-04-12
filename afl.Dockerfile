FROM aflplusplus/aflplusplus:latest

ENV WORKDIR=/AFLplusplus
WORKDIR $WORKDIR

ENV SUTS=$WORKDIR/suts
ENV SEEDS=$WORKDIR/seeds
ENV OUT=/out
ENV TIME_LIMIT_SECS=60
RUN mkdir -p $SEEDS
RUN mkdir -p $OUT
RUN echo "empty" > $SEEDS/empty_seed.txt
COPY sample-programs/AFL-VERSION $SUTS
VOLUME $OUT
CMD afl-clang-fast -include assert.h $SUTS/$SUT_SRC -o sut; timeout ${TIME_LIMIT_SECS}s afl-fuzz -i $SEEDS -o $OUT -- ./sut
