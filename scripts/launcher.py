import glob
import os

from multiprocessing import Pool
import multiprocessing
import subprocess as sp
import afl_summary
import klee_summary
import tracerx_summary
import cbmc_summary
import pandas as pd



def post_process(outdir, program, tool, trial):
    if "afl" in tool:
        summary = afl_summary.get_tallies(outdir, program)
    elif "klee" in tool:
        summary = klee_summary.get_tallies(outdir, program)
    elif "tracerx" in tool:
        summary = tracerx_summary.get_tallies(outdir, program)
    elif "cbmc" in tool:
        summary = cbmc_summary.get_tallies(outdir, program)
    summary = tuple([tool, program, trial] + list(summary))
    print(".", end="", flush=True)
    return summary

if __name__ == '__main__':

    skip_experiment = True
    basedir = os.path.dirname(os.getcwd())
    timeout_secs = 60
    num_trials = 2
    local_user = "wolffd"

    progs = glob.glob(f"{basedir}/sample-programs/AFL-VERSION/*")

    prognames = [os.path.basename(f) for f in progs]
    tools = ["klee", "tracerx", "cbmc", "afl", "klee-merge", "tracerx-noext", "cbmc-cvc4", "afl-laf"]
    trials = range(0, num_trials)

    build_cmds = []
    for tool in tools + ["llvm-cov"]:
        tdfn = f"{tool}.Dockerfile"
        tdfp = os.path.join(basedir, tdfn)
        dfcmd = [f"docker build -f {tdfp} {basedir} -t {tool}"]
        build_cmds.append(dfcmd)

    cmds = []
    for progname in prognames:
        for tool in tools:
            for trial in trials:

                progname_as_dir = os.path.splitext(progname)[0]
                outdir = os.path.join(basedir, "out", tool, progname_as_dir, str(trial))
                if not skip_experiment:
                    os.makedirs(outdir)
                cmd = f"docker run -e TIME_LIMIT_SECS={timeout_secs} -e SUT_SRC={progname} -v {outdir}:/out {tool}-pa"
                cmds.append(cmd)

    nproc = multiprocessing.cpu_count()
    print(f"Starting pool with {nproc} workers")
    with Pool(processes=nproc) as p:
        if not skip_experiment:
            results = p.map(sp.getstatusoutput, build_cmds)
            errouts = [out for (status, out) in results if not status == 0]
            if len(errouts) > 0:
                print("Build errors")
                print("++++++++++++++\n\n".join(errouts))
            else:
                print("Build success")

            results = p.map(sp.getstatusoutput, cmds)
            errouts = [out for (status, out) in results if not status == 0]
            with open(os.path.join(basedir, "out", "log.txt"), "w") as f:
                for errout in errouts:
                    f.write(errout)
                f.write("\n\n\n==========================================\n\n")

            # Containers are mostly running as root, not worth fixing for small project
            sp.getoutput("sudo chown -R {wolffd} ../out")
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
