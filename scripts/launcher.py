import glob
import os

from multiprocessing import Pool
import multiprocessing
import subprocess as sp
import afl_summary
import klee_summary
import tracerx_summary
import cbmc_summary
import cbmc_verify_summary
import pandas as pd
import re



def post_process(outdir, program, tool, trial):
    if "afl" in tool:
        summary = afl_summary.get_tallies(outdir, program)
    elif "klee" in tool:
        summary = klee_summary.get_tallies(outdir, program)
    elif "tracerx" in tool:
        summary = tracerx_summary.get_tallies(outdir, program)
    elif "cbmc" in tool and "verify" not in tool:
        summary = cbmc_summary.get_tallies(outdir, program)
    elif "cbmc" in tool:
        summary = cbmc_verify_summary.get_tallies(outdir, program)

    summary = tuple([tool, program, trial] + list(summary))
    print(".", end="", flush=True)
    return summary

BOUND_RE = re.compile("-B(\d+)")
def get_bound(name, default=5):
    global BOUND_RE
    m = BOUND_RE.search(name)
    if m is None:
        return default
    return int(m.group(1))

if __name__ == '__main__':

    skip_experiment = True
    basedir = os.path.dirname(os.getcwd())
    timeout_secs = 1800
    num_trials = 3
    local_user = "wolffd"

    progs = glob.glob(f"{basedir}/sample-programs/AFL-VERSION/*")

    prognames = [os.path.basename(f) for f in progs]
    ind_tools = ["cbmc-verify"] # ["klee", "tracerx", "cbmc", "afl", "cbmc-verify"]
    dep_tools = ["cbmc-verify-cvc4"] # ["klee-merge", "tracerx-noext", "cbmc-cvc4", "afl-laf", "cbmc-verify-cvc4"]
    tools = ind_tools + dep_tools
    trials = range(0, num_trials)

    ind_build_cmds = []
    for tool in ind_tools + ["llvm-cov"]:
        tdfn = f"{tool}.Dockerfile"
        tdfp = os.path.join(basedir, tdfn)
        dfcmd = [f"docker build -f {tdfp} {basedir} -t {tool}-pa"]
        ind_build_cmds.append(dfcmd)

    dep_build_cmds = []
    for tool in dep_tools + ["llvm-cov"]:
        tdfn = f"{tool}.Dockerfile"
        tdfp = os.path.join(basedir, tdfn)
        dfcmd = [f"docker build -f {tdfp} {basedir} -t {tool}-pa"]
        dep_build_cmds.append(dfcmd)


    cmds = []
    for progname in prognames:
        bound = get_bound(progname)
        for tool in tools:
            if "cbmc" in tool:
                bound_str = f"-e BOUND={bound}"
            else:
                bound_str = ""

            for trial in trials:
                progname_as_dir = os.path.splitext(progname)[0]
                outdir = os.path.join(basedir, "out", tool, progname_as_dir, str(trial))
                if not skip_experiment:
                    os.makedirs(outdir)
                cmd = f"docker run -e TIME_LIMIT_SECS={timeout_secs} {bound_str} -e SUT_SRC={progname} -v {outdir}:/out {tool}-pa"
                cmds.append(cmd)

    nproc = multiprocessing.cpu_count()
    print(f"Starting pool with {nproc} workers")
    with Pool(processes=nproc) as p:
        if not skip_experiment:
            results = p.map(sp.getstatusoutput, ind_build_cmds)
            errouts = [out for (status, out) in results if not status == 0]
            if len(errouts) > 0:
                print("Ind Build errors")
                print("++++++++++++++\n\n".join(errouts))
            else:
                print("Ind Build success")

            results = p.map(sp.getstatusoutput, dep_build_cmds)
            errouts = [out for (status, out) in results if not status == 0]
            if len(errouts) > 0:
                print("Dep Build errors")
                print("++++++++++++++\n\n".join(errouts))
            else:
                print("Dep Build success")


            results = p.map(sp.getstatusoutput, cmds)
            errouts = [out for (status, out) in results if not status == 0]
            with open(os.path.join(basedir, "out", "log.txt"), "w") as f:
                for errout in errouts:
                    f.write(errout)
                f.write("\n\n\n==========================================\n\n")

            # Containers are mostly running as root, not worth fixing for small project
            sp.getoutput(f"sudo chown -R {local_user} ../out")
            sp.getoutput("sudo chmod a+w ../out/**/log.json")

            # Create a backup of the raw run data
            sp.getoutput("tar -zcvf out.tar.gz ../out/")
        else:
            print("using existing data")

        print("Post processing...")
        configs = []
        for prog_path in progs:
           for tool in tools:
               for trial in trials:
                   progname = os.path.basename(prog_path)
                   progname_as_dir = os.path.splitext(progname)[0]
                   outdir = os.path.join(basedir, "out", tool, progname_as_dir, str(trial))
                   configs.append((outdir, progname, tool, trial))
        results = p.starmap(post_process, configs)
        print("\ndone!")
        columns = ["tool", "program", "trial", "branches_covered", "total_branches", "assertions_reached", "completed", "elapsed_time"]
        results = pd.DataFrame(results, columns=columns)
        print(results)
        results.to_csv("out.csv")
