import glob
import os
import subprocess as sp
import json


def get_tallies(afl_out_dir, program):
    crashes = glob.glob(f"{afl_out_dir}/default/crashes/*")
    testcases_dir = os.path.join(afl_out_dir, "default", "queue")

    # llvm-cov docker container needs to be built for this!
    o = sp.getoutput(f"docker run -v {testcases_dir}:/testcases -v {afl_out_dir}:/out -e SUT_SRC={program} llvm-cov-pa")
    print(o)

    with open(os.path.join(afl_out_dir, "coverage.json"), 'r') as f:
      data = json.load(f)

    # Just an example... not sure if we want percentage or the actual numbers
    # @TODO currently using region coverage, but branch coverage is certainly better here;
    #   Should figure out why branch coverage isn't being reported properly
    coverage = (data["data"][0]["totals"]["branches"]["percent"])
    return (coverage, len(crashes))

afl_out_dir = os.path.join(os.path.dirname(os.getcwd()), "out")
program = "Prob16-R12-B3.c"

print(get_tallies(afl_out_dir, program))
