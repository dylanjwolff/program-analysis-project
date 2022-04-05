FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt update -y
RUN apt install -y llvm-12 git clang vim python3

ENV WORKDIR=/opt

ENV SUTS=$WORKDIR/suts
ENV TESTCASES=/testcases

ENV OUT=/out
RUN mkdir -p $OUT

COPY sample-programs/AFL-VERSION $SUTS

VOLUME $OUT
VOLUME $TESTCASES

COPY scripts/llvm-cov-entrypoint.py llvm-cov-entrypoint.py
CMD python3 llvm-cov-entrypoint.py
