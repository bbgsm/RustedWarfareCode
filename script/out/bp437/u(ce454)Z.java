private strictfp boolean u(com.corrodinggames.rts.game.units.ce454 p1) {
    boolean v0 = true;
    boolean v1 = false;
    int v3 = aU();
    int v2 = 0;
    while (v2 < v3) {
        boolean v4 = m(v2);
        if (v4 && a(v2, p1, v0, v1)) {
            int v5 = q(v2);
            if (v5 == -1) {
                return v0;
            }
            if (a(v5, p1, v0, v1)) {
                return v0;
            }
        }
        v2 += 1;
    }
    v0 = v1;
    return v0;
}
