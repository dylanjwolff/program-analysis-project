FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y

RUN apt install -y build-essential curl libcap-dev cmake libncurses5-dev unzip bison flex libboost-all-dev perl zlib1g-dev
RUN apt install -y graphviz libtcmalloc-minimal4 libgoogle-perftools-dev
RUN apt install -y wget git vim


WORKDIR /opt
RUN wget https://releases.llvm.org/3.4.2/llvm-3.4.2.src.tar.gz
RUN tar -zxvf llvm-3.4.2.src.tar.gz
ENV LLVM_SRC_ROOT=./llvm-3.4.2.src

RUN wget https://releases.llvm.org/3.4.2/cfe-3.4.2.src.tar.gz
RUN tar -zxvf cfe-3.4.2.src.tar.gz
RUN mkdir -p $LLVM_SRC_ROOT/tools/clang
RUN cp cfe-3.4.2.src/* $LLVM_SRC_ROOT/tools/clang -r

WORKDIR ./llvm-3.4.2.src
RUN ./configure --enable-optimized --disable-assertions --enable-targets=host
RUN make

WORKDIR /opt
ENV LLVM_SRC_ROOT=/opt/llvm-3.4.2.src

RUN git clone https://github.com/klee/klee-uclibc.git
WORKDIR ./klee-uclibc
RUN git checkout 7b7cf9d
RUN ./configure --make-llvm-lib --with-llvm-config="$LLVM_SRC_ROOT/Release/bin/llvm-config" --with-cc="$LLVM_SRC_ROOT/Release/bin/clang"
RUN make -j `nproc`

WORKDIR /opt
RUN git clone https://github.com/stp/minisat.git
WORKDIR /opt/minisat
RUN git checkout 3db58943b6ffe855d3b8c9a959300d9a148ab554
RUN make -j `nproc`
ENV MINISAT_ROOT=/opt/minisat

WORKDIR /opt
RUN git clone https://github.com/stp/stp.git
WORKDIR /opt/stp
RUN git checkout tags/2.1.2
RUN mkdir build
WORKDIR /opt/stp/build
RUN cmake -DBUILD_STATIC_BIN=ON -DBUILD_SHARED_LIBS:BOOL=OFF -DENABLE_PYTHON_INTERFACE:BOOL=OFF -DMINISAT_INCLUDE_DIR="$MINISAT_ROOT" -DMINISAT_LIBRARY="$MINISAT_ROOT/build/release/lib/libminisat.a" -DCMAKE_BUILD_TYPE="Release" -DTUNE_NATIVE:BOOL=ON ..
RUN make
RUN ulimit -s unlimited

WORKDIR /opt
RUN git clone https://github.com/Z3Prover/z3
WORKDIR ./z3
RUN git checkout z3-4.8.4
RUN python scripts/mk_make.py
WORKDIR ./build
RUN make -j `nproc`
RUN mkdir include
RUN cp ../src/api/z3*.h include/
RUN cp ../src/api/c++/z3++.h include/
RUN mkdir lib
RUN cp libz3.so lib/

ENV STP_ROOT=/opt/stp
ENV KLEE_UCLIBC_ROOT=/opt/klee-uclibc
ENV Z3_ROOT=/opt/z3

WORKDIR /opt
RUN git clone https://github.com/tracer-x/klee.git tracerx
WORKDIR ./tracerx
RUN ./configure LDFLAGS="-L$MINISAT_ROOT/build/release/lib/" --with-llvm="$LLVM_SRC_ROOT" --with-stp="$STP_ROOT/build" --with-uclibc="$KLEE_UCLIBC_ROOT" --with-z3="$Z3_ROOT/build" --enable-posix-runtime
RUN make -j `nproc` ENABLE_OPTIMIZED=1
RUN cp $Z3_ROOT/build/lib/libz3.so ./Release+Asserts/lib/
ENV TRACERX_ROOT=/opt/tracerx
RUN ln -s $LLVM_SRC_ROOT/Release/bin/clang /usr/bin/tracerx-clang
RUN ln -s $TRACERX_ROOT/Release+Asserts/bin/klee /usr/bin/tracerx

ENV WORKDIR=/opt
WORKDIR $WORKDIR

ENV SUTS=$WORKDIR/suts
ENV OUT=/out
ENV TIME_LIMIT_SECS=60

COPY sample-programs/KLEE-VERSION $SUTS

VOLUME $OUT

CMD tracerx-clang -I $TRACERX_ROOT/include -emit-llvm -c -g $SUTS/$SUT_SRC -o sut.bc; tracerx -solver-backend=z3 --search=dfs -output-dir=$OUT/tracerx-out -max-time=$TIME_LIMIT_SECS -max-memory=5000 sut.bc
