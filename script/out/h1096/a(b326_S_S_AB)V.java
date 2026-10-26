private strictfp void a(com.corrodinggames.rts.game.b.b326 p1, short p2, short p3, byte[] p4) {
    int v1 = 0;
    int v3 = p2 - 3;
    int v0 = p3 - 3;
    int v2 = p2 + 3;
    int v4 = p3 + 3;
    if (v3 < 0) {
        v3 = v1;
    }
    if (v0 < 0) {
        v0 = v1;
    }
    v1 = p1.D - 1;
    if (v2 > v1) {
    } else {
        v1 = p1.D - 1;
        v1 = v2;
    }
    v2 = p1.E - 1;
    if (v4 > v2) {
    } else {
        v2 = p1.E - 1;
        v4 = v2;
    }
    while (v3 <= v1) {
        v2 = v0;
        while (v2 <= v4) {
            int v5 = this.c * v3 + v2;
            byte v5_byte = p4[v5];
            if (v5_byte != 0) {
                int v6 = com.corrodinggames.rts.gameFramework.f1006.a(p2, p3, v3, v2);
                if (v6 < v5_byte) {
                    int index = this.c * v3 + v2;
                    p4[index] = (byte) v6;
                }
            }
            v2++;
        }
        v3++;
    }
    return;
}
