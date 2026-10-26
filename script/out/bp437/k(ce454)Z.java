public final strictfp boolean k(com.corrodinggames.rts.game.units.ce454 p1) {
    float v1 = 11.0f;
    float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, p1.eq, p1.er);
    float v0 = 9.0f;
    if (!p1.bq()) {
        v0 = this.cl + p1.cl;
        if (v0 < v1) {
            v0 = v1;
        }
    }
    v0 *= v0;
    if (v2 < v0) {
        return true;
    }
    return false;
}
