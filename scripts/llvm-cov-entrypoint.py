import glob
import os
import subprocess as sp

testcases_dir = os.getenv("TESTCASES")
suts_dir = os.getenv("SUTS")
out_dir = os.getenv("OUT")

sut_src_name = os.getenv("SUT_SRC")

sut_src = os.path.join(suts_dir, sut_src_name)

o = sp.getoutput(f"clang -fprofile-instr-generate -fcoverage-mapping {sut_src} -o sut")
print(o)

testcases = glob.glob(f"{testcases_dir}/*")

for testcase in testcases:
    print(f'LLVM_PROFILE_FILE="{testcase}.profraw" ./sut < {testcase}')
    o = sp.getoutput(f'LLVM_PROFILE_FILE="{os.path.basename(testcase)}.profraw" ./sut < {testcase}')
    print(o)

profraws = glob.glob(f"*.profraw")
o = sp.getoutput(f'llvm-profdata-12 merge -sparse {" ".join(profraws)} -o cumulative.profdata')
print(o)

o = sp.getoutput(f"llvm-cov-12 report ./sut -instr-profile=cumulative.profdata --show-branch-summary")
print(o)

o = sp.getoutput(f"llvm-cov-12 export ./sut -instr-profile=cumulative.profdata -summary-only -format=text > {out_dir}/coverage.json")
print(o)
