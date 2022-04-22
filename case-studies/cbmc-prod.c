const int BOUND = 2000;
const int XY = 797326;
const int XZ = 632362;
const int YZ = 2321827;

int main(void) {
    int x = nondet_int(); __CPROVER_input("x", x);
    int y = nondet_int(); __CPROVER_input("y", y);
    int z = nondet_int(); __CPROVER_input("z", z);
    
    if ((1 <= x) && (x <= BOUND) && (1 <= y) && (y <= BOUND) && (1 <= z) && (z <= BOUND)) {
        if ((x * y == XY) && (x * z == XZ) && (y * z == YZ)) {
            // expected solution is x = 466, y = 1711, z = 1357
            __CPROVER_assert(0, "ERROR_VIOLATION");
        }
    }
    
    return 0;
}
