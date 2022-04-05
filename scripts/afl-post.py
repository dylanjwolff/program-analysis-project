import glob
import os

basedir = os.path.join(os.path.dirname(os.getcwd()), "out")

crashes = glob.glob(f"{basedir}/default/crashes/*")
testcases = glob.glob(f"{basedir}/default/queue/*")

print(testcases)
 # @TODO Incomplete! Still need to use llvm-cov to get the coverage


