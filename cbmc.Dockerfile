FROM ubuntu:21.10
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y --fix-missing install cbmc

ENV WORKDIR=/opt
WORKDIR $WORKDIR

ENV SUTS=$WORKDIR/suts
ENV OUT=/out
ENV TIME_LIMIT_SECS=60
RUN mkdir -p $OUT

COPY sample-programs/CBMC-VERSION $SUTS

VOLUME $OUT

ENV BOUND=5

CMD timeout ${TIME_LIMIT_SECS}s cbmc $SUTS/$SUT_SRC --cover branch --unwind $BOUND --timestamp wall --flush --json-ui 2>&1 | tee $OUT/log.json

