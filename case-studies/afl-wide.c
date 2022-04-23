int FLOOR = 123456789;
int WIDTH = 100000000;

int main(void) {
    int x; scanf("%d", &x);
    
    if ((FLOOR <= x) && (x < FLOOR + WIDTH)) {
        assert(0);
    }
    
    return 0;
}
