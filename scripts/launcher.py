import glob
import os

from multiprocessing import Pool
import multiprocessing
import subprocess as sp


if __name__ == '__main__':
    # @TODO
    basedir = os.path.dirname(os.getcwd())

    progs = glob.glob(f"{basedir}/sample-programs/AFL-VERSION/*")

    prognames = [os.path.basename(f) for f in progs]
    tools = ["klee", "tracerx", "cbmc"]  # , "afl"]

    build_cmds = []
    for tool in tools:
        tdfn = f"{tool}.Dockerfile"
        tdfp = os.path.join(basedir, tdfn)
        dfcmd = [f"docker build -f {tdfp} {basedir} -t {tool}"]
        build_cmds.append(dfcmd)

    cmds = []
    for progname in prognames:
        for tool in tools:
            progname_as_dir = os.path.splitext(progname)[0]
            outdir = os.path.join(basedir, "out", tool, progname_as_dir)
            os.makedirs(outdir)
            cmd = f"docker run -e TIME_LIMIT_SECS=60 -e SUT_SRC={progname} -v {outdir}:/out {tool}-pa"
            cmds.append(cmd)

    nproc = multiprocessing.cpu_count()
    print(f"Starting pool with {nproc} workers")
    with Pool(processes=nproc) as p:
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
