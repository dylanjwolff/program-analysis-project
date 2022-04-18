FROM afl-pa:latest
ENV AFL_LLVM_LAF_ALL=1
CMD python3 afl-entrypoint.py
