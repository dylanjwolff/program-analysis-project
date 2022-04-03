# program-analysis-project


## Building and Running
### AFL
Build the AFL container with e.g.:

`docker build -f afl.Dockerfile . -t afl-pa`

Run it on a particular sample file with:

`docker run -e SUT_SRC=Prob16-R12-B3.c -v $(pwd)/out:/out afl-pa`

This will put the results in `$(pwd)/out` on your host machine. The timeout for the run can be specified by overriding the `TIME_LIMIT` environment variable.


