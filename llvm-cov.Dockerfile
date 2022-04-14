FROM ubuntu:21.10
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt update -y
ENV LLVM_VER=13
RUN apt install -y llvm-$LLVM_VER git clang vim python3

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
