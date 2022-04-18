FROM aflplusplus/aflplusplus:latest

ENV WORKDIR=/AFLplusplus
WORKDIR $WORKDIR

ENV SUTS=$WORKDIR/suts
ENV SEEDS=$WORKDIR/seeds
ENV OUT=/out
ENV TIME_LIMIT_SECS=60
RUN mkdir -p $SEEDS
RUN mkdir -p $OUT
RUN echo "0" > $SEEDS/empty_seed.txt
COPY sample-programs/AFL-VERSION $SUTS
VOLUME $OUT
COPY scripts/afl-entrypoint.py afl-entrypoint.py
CMD python3 afl-entrypoint.py
