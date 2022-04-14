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
            raise Exception(f"LOAD problem for {cbmc_out_dir}\n")
        finally:
            f.close()


    for obj in contents:

        if "timestamp" in obj:
            if first_timestamp is None:
                first_timestamp = parse(obj["timestamp"])
            last_timestamp = parse(obj["timestamp"])

        # Check for assertion errors; assumes that all those are marked with ERROR_VIOLATION
        if "messageText" in obj and obj["messageText"].endswith("ERROR_VIOLATION"):
            assertion_errors += 1

        # Look for the object containing the goals
        if "goals" in obj:
            goals_covered = obj["goalsCovered"]
            total_goals = obj["totalGoals"]
            for goal in obj["goals"]:
                goals_list.append((goal["goal"], int(goal["sourceLocation"]["line"]), goal["description"], goal["status"]))

        # Look for the object containing the tests
        if "tests" in obj:
            tests_generated = len(obj["tests"])
            for ipt in obj["tests"]:
                tests_list.append({i["id"]: i["value"]["data"] for i in ipt["inputs"]})

    completed = not tests_generated == -1
    elapsed = (last_timestamp - first_timestamp)
    return (goals_covered, total_goals, assertion_errors, completed, elapsed)


if __name__ == "__main__":
    cbmc_out_dir = os.path.join(os.path.dirname(os.getcwd()), "out")
    program = "Prob16-R12-B3.c"

    print(get_tallies(cbmc_out_dir, program))
