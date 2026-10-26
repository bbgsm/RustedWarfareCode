public static strictfp int a(com.corrodinggames.rts.game.b.b326 p0) {
    int v0 = 0;
    com.corrodinggames.rts.game.b.g331 v9 = p0.u;
    int v2 = 0;
    while (v2 < v9.n) {
        int v3 = 0;
        while (v3 < v9.o) {
            com.corrodinggames.rts.game.b.i333 v8 = v9.a(v2, v3);
            if (v8 != null) {
                int v4 = v8.e ? 1 : 0;
                int v5 = v8.h ? 2 : 0;
                int v6 = v8.k ? 4 : 0;
                int v7 = v8.g ? 8 : 0;
                int v8_val = v8.f ? 16 : 0;
                v0 += (v4 + v5 + v6 + v7 + v8_val) * (v2 + v3);
            }
            v3++;
        }
        v2++;
    }
    return v0;
}
