const int BOUND = 2000;
const int PRIME = 10007;
const int XY = 6773;
const int XZ = 1921;
const int YZ = 203;

int main(void) {
    int x = nondet_int(); __CPROVER_input("x", x);
    int y = nondet_int(); __CPROVER_input("y", y);
    int z = nondet_int(); __CPROVER_input("z", z);
    
    if ((1 <= x) && (x <= BOUND) && (1 <= y) && (y <= BOUND) && (1 <= z) && (z <= BOUND)) {
        if (((x * y) % PRIME == XY) && ((x * z) % PRIME == XZ) && ((y * z) % PRIME == YZ)) {
            // expected solution is x = 466, y = 1711, z = 1357
            __CPROVER_assert(0, "ERROR_VIOLATION");
        }
    }
    
    return 0;
}
