# program-analysis-project


## Building and Running

@TODO memory limit for all programs

### AFL
Build the AFL container with e.g.:

`docker build -f afl.Dockerfile . -t afl-pa`

Run it on a particular sample file with:

`docker run -e SUT_SRC=Prob16-R12-B3.c -v $(pwd)/out:/out afl-pa`

This will put the results in `$(pwd)/out` on your host machine. The timeout for the run can be specified by overriding the `TIME_LIMIT` environment variable.

### KLEE

`docker build -f klee.Dockerfile . -t klee-pa`

`docker run -e SUT_SRC=Prob16-R12-B3.c -v $(pwd)/out:/out klee-pa`

@TODO timeout for KLEE

### CBMC

`docker build -f cbmc.Dockerfile . -t cbmc-pa`

`docker run -e SUT_SRC=Prob16-R12-B3.c -v $(pwd)/out:/out cbmc-pa`

