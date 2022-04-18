int main(void) {
    int RESIDUE1 = 6215; int MOD1 = 40009;
    int RESIDUE2 = 2022; int MOD2 = 40013;
    
    int x = nondet_int(); __CPROVER_input("x", x);
    
    if ((x >= 0) && (x < MOD1 * MOD2)) {
        if ((x % MOD1 == RESIDUE1) && (x % MOD2 == RESIDUE2)) {
            // expected solution is x = 1242605737
            __CPROVER_assert(0, "ERROR_VIOLATION");
        }
    }
    
    return 0;
}
