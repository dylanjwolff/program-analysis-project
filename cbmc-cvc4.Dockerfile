FROM cbmc-pa:latest
CMD timeout ${TIME_LIMIT_SECS}s cbmc $SUTS/$SUT_SRC --cover branch --unwind $BOUND --cvc4 --timestamp wall --flush --json-ui 2>&1 | tee $OUT/log.json
