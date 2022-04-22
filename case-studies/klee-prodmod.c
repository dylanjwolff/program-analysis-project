#ifdef LLBMC
#include <llbmc.h>
#else
#include <klee/klee.h>
#endif

const int BOUND = 2000;
const int PRIME = 10007;
const int XY = 6773;
const int XZ = 1921;
const int YZ = 203;

int main(void) {
    int x; klee_make_symbolic (&x, sizeof(int), "x");
    int y; klee_make_symbolic (&y, sizeof(int), "y");
    int z; klee_make_symbolic (&z, sizeof(int), "z");
    
    if ((1 <= x) && (x <= BOUND) && (1 <= y) && (y <= BOUND) && (1 <= z) && (z <= BOUND)) {
        if (((x * y) % PRIME == XY) && ((x * z) % PRIME == XZ) && ((y * z) % PRIME == YZ)) {
            // expected solution is x = 466, y = 1711, z = 1357
            klee_assert(0);
        }
    }
    
    return 0;
}
