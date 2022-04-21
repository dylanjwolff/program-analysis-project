import json
import sys
import os
from dateutil.parser import parse

# Note: Expecting a JSON file output by CBMC 5.12 (or with whatever settings you used), similar to the coverage.json given
# The ones output by CBMC 5.10 were significantly less complete

def get_tallies(cbmc_out_dir, program):
    goals_covered = -1
    total_goals = -1
    goals_list = []
    completed = False

    tests_generated = -1
    tests_list = []
    assertion_errors = 0

    first_timestamp = None
    last_timestamp = None

    f = open(os.path.join(cbmc_out_dir, "log.json"), "r")
    try:
        contents = json.load(f)
    except:
        f.close()
        f = open(os.path.join(cbmc_out_dir, "log.json"), "a+")
        f.write("\n]") # HACK for incomplete JSON log
        f.close()
        try:
            f = open(os.path.join(cbmc_out_dir, "log.json"), "r")
            contents = json.load(f)
        except:
            f.close()
            f = open(os.path.join(cbmc_out_dir, "log.json"), "a+")
            f.write("\n}]") # HACK for incomplete JSON log
            f.close()
            try:
                f = open(os.path.join(cbmc_out_dir, "log.json"), "r")
                raise Exception(f"LOAD problem for {cbmc_out_dir}\n")
            finally:
                f.close()


    for obj in contents:

        if "timestamp" in obj:
            if first_timestamp is None:
                first_timestamp = parse(obj["timestamp"])
            last_timestamp = parse(obj["timestamp"])

        if "result" in obj:
            completed = True
            for res in obj["result"]:
                if "FAIL" in res["status"]:
                    assertion_errors += 1

    elapsed = (last_timestamp - first_timestamp)
    return (goals_covered, total_goals, assertion_errors, completed, elapsed)


if __name__ == "__main__":
    cbmc_out_dir = os.path.join(os.path.dirname(os.getcwd()), "out")
    program = "Prob16-R12-B3.c"

    print(get_tallies(cbmc_out_dir, program))
