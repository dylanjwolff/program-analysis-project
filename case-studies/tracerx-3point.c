#ifdef LLBMC
#include <llbmc.h>
#else
#include <klee/klee.h>
#endif

const int BOUND = 1000;
const int WIDTH = 1000;

const int X1 = 644;
const int Y1 = 20;
const int B1 = 559000;

const int X2 = -387;
const int Y2 = -569;
const int B2 = 194000;

const int X3 = -592;
const int Y3 = 361;
const int B3 = 804000;

int main(void) {
    int d1; int d2; int d3;
    
    int x; klee_make_symbolic (&x, sizeof(int), "x");
    int y; klee_make_symbolic (&y, sizeof(int), "y");
    
    if ((-BOUND <= x) && (x <= BOUND) && (-BOUND <= y) && (y <= BOUND)) {
        d1 = (x - X1) * (x - X1) + (y - Y1) * (y - Y1);
        d2 = (x - X2) * (x - X2) + (y - Y2) * (y - Y2);
        d3 = (x - X3) * (x - X3) + (y - Y3) * (y - Y3);
        if ((B1 <= d1) && (d1 <= B1 + WIDTH) &&
            (B2 <= d2) && (d2 <= B2 + WIDTH) &&
            (B3 <= d3) && (d3 <= B3 + WIDTH)) {
                // expected solution is x = -18, y = -328
                klee_assert(0);
        }
    }
    
    return 0;
}
