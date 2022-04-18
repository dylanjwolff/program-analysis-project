int invmod(int x, int m) {
    int ix = 0;
    for (int i = 0; i < m; i++) {
        if (ix == 1)
            return i;
        ix = (ix + x) % m;
    }
    return 0;
}

int main(void) {
    int INVERSE = 18;
    int PRIME = 40009;
    int x = nondet_int(); __CPROVER_input("x", x);
    
    if ((x >= 1) && (x < PRIME)) {
        if (invmod(x, PRIME) == INVERSE) {
            // expected solution is x = 24450
            __CPROVER_assert(0, "ERROR_VIOLATION");
        }
    }
    
    return 0;
}
