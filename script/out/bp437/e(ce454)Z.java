public final strictfp boolean e(com.corrodinggames.rts.game.units.ce454 p1) {
    boolean v0 = false;
    int v2 = this.aU();
    int v1 = 0;
    while (v1 < v2) {
        if (this.m(v1)) {
            if (this.a(v1, p1, false, false)) {
                int v3 = this.q(v1);
                if (v3 == -1 || this.a(v3, p1, false, false)) {
                    v0 = true;
                    return v0;
                }
            }
        }
        v1++;
    }
    return v0;
}
