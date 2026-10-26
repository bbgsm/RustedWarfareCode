private void a(com.corrodinggames.rts.gameFramework.n.s1303 p1, int p2, float p3) {
    if (p2 < 0) {
        p2 = 0;
    }
    int v0 = this.S.size();
    if (v0 == 0) {
        com.corrodinggames.rts.gameFramework.k1104.b("error maxTypeNum: ".concat(String.valueOf(v0)));
        return;
    }
    com.corrodinggames.rts.gameFramework.n.u1305 v1 = (com.corrodinggames.rts.gameFramework.n.u1305) this.S.get(p2 % v0);
    int v2 = (int) (((double) (p2 + 3)) * 0.5 * (double) v1.b * (double) p3);
    int v3 = (int) com.corrodinggames.rts.gameFramework.f1006.c((float) v2);
    if (v3 <= 0) {
        v3 = 1;
    }
    p1.b(v1.a, v3);
}
