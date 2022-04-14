import os
import sys
import subprocess
from dateutil.parser import parse

def get_tallies(out_dir, program):
    klee_out_dir = os.path.join(out_dir, "klee-out")
    has_error = False

    # Branch is defined as having two exits, true and false
    total_branches = -1
    fully_explored_branches = -1        # Explored both exits
    partially_explored_branches = -1    # Explored one exit

    total_instructions = -1
    covered_instructions = -1
    uncovered_instructions = -1

    tests_generated = -1
    assertion_errors = 0
    elapsed = -1

    try:
        run_stats = subprocess.run(["python", "klee-stats.py", klee_out_dir, "--to-csv"],
                                   capture_output=True).stdout.decode().strip()
        run_stats = list(map(lambda x: x.strip(), run_stats.split("\n")))
        stats = {h: d for h, d in zip(run_stats[0].split(","), run_stats[-1].split(","))}

        fully_explored_branches = int(stats["FullBranches"])
        partially_explored_branches = int(stats["PartialBranches"])
        total_branches = int(stats["NumBranches"])

        covered_instructions = int(stats["CoveredInstructions"])
        uncovered_instructions = int(stats["UncoveredInstructions"])
        total_instructions = covered_instructions + uncovered_instructions

        with open(os.path.join(klee_out_dir, "info"), "r") as f:
            lines = f.readlines()
        start = None
        end = None
        for line in lines:
            if "Started" in line and start is None:
                start = line.split(':', 1)[1].strip()
            if "Finished" in line and end is None:
                end = line.split(':', 1)[1].strip()
            if not start is None and not end is None:
                break
        elapsed = parse(end) - parse(start)
    except KeyError:
        has_error = True

    tests_generated = sum(file.endswith(".ktest") for file in os.listdir(klee_out_dir))
    assertion_errors = sum(file.endswith(".assert.err") for file in os.listdir(klee_out_dir))

    return (fully_explored_branches, total_branches, assertion_errors, not has_error, elapsed)

if __name__ == "__main__":
    klee_out_dir = os.path.join(os.path.dirname(os.getcwd()), "out")
    program = "Prob16-R12-B3.c"

    print(get_tallies(klee_out_dir, program))
