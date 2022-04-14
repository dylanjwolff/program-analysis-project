import glob
import os
import subprocess as sp
import json
from dateutil.parser import parse
import datetime
import time


def get_tallies(afl_out_dir, program):
    crashes = glob.glob(f"{afl_out_dir}/default/crashes/*")
    testcases_dir = os.path.join(afl_out_dir, "default", "queue")

    # llvm-cov docker container needs to be built for this!
    o = sp.getoutput(f"docker run -v {testcases_dir}:/testcases -v {afl_out_dir}:/out -e SUT_SRC={program} llvm-cov-pa")

    time.sleep(1)
    with open(os.path.join(afl_out_dir, "coverage.json"), 'r') as f:
        data = json.load(f)


    branches = data["data"][0]["totals"]["branches"]

    try:
        with open(os.path.join(afl_out_dir, "default", "fuzzer_stats"), 'r') as f:
            stat_lines = f.readlines()
        start = None
        end = None
        for line in stat_lines:
            if "start_time" in line and start is None:
                start = line.split(':')[1].strip()
            if "last_update" in line and end is None:
                end = line.split(':')[1].strip()
            if not start is None and not end is None:
                break

        elapsed = datetime.datetime.fromtimestamp(int(end)) -  datetime.datetime.fromtimestamp(int(start))
    except:
        elapsed = -1

    return (branches["covered"], branches["count"], len(crashes), False, elapsed)

if __name__ == "__main__":
    afl_out_dir = os.path.join(os.path.dirname(os.getcwd()), "out/afl/Mtest45-B4515-cil/0/")
    program = "Mtest45-B4515-cil.c"
    
    print(get_tallies(afl_out_dir, program))
