import subprocess as sp
from os import getenv

SEEDS = getenv("SEEDS")
SUTS = getenv("SUTS")
OUT = getenv("OUT")
SUT_SRC = getenv("SUT_SRC")
TIME_LIMIT_SECS = getenv("TIME_LIMIT_SECS")

print(f"AFL testing {SUT_SRC}...")

comp_cmd = f"afl-clang-fast -include assert.h -include stdio.h {SUTS}/{SUT_SRC} -o sut"
(s, o) = sp.getstatusoutput(comp_cmd)
if s != 0:
    raise Exception("failed compilation!")

(s, o) = sp.getstatusoutput(f"timeout 5s ./sut < {SUTS}/{SUT_SRC}")
print(o)
print(s)
if (s == 0 or s == 124):
    crash_flag = ""
else:
    crash_flag = "-C"

run_cmd = f"timeout {TIME_LIMIT_SECS}s afl-fuzz -i {SEEDS} -o {OUT} -m 50 {crash_flag} -- ./sut"

(s, o) = sp.getstatusoutput(run_cmd)
print(o)
if s != 0 and s != 124:
    raise Exception("runtime error!")

