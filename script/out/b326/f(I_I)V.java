private strictfp void f(int p1, int p2) {
    int v6 = 0x7f;
    int v0 = 0;
    int v4 = p1 - 1;
    if (v4 < 0) {
        v4 = 0;
    }
    int v1 = p2 - 1;
    if (v1 >= 0) {
        v0 = v1;
    }
    v1 = p1 + 1;
    int v2 = p2 + 1;
    int v3 = this.D - 1;
    if (v1 > v3) {
        v1 = this.D - 1;
    }
    v3 = this.E - 1;
    if (v2 > v3) {
        v3 = v2;
    } else {
        v2 = this.E - 1;
        v3 = v2;
    }
    while (v4 <= v1) {
        v2 = v0;
        while (v2 <= v3) {
            if (this.N[v4][v2] != 0) {
                this.N[v4][v2] = (byte) v6;
            }
            if (this.O[v4][v2] != 0) {
                this.O[v4][v2] = (byte) v6;
            }
            v2++;
        }
        v4++;
    }
}
