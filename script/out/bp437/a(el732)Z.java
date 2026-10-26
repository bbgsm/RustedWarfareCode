public final strictfp boolean a(com.corrodinggames.rts.game.units.el732 p1) {
    boolean v1 = true;
    boolean v0 = false;
    com.corrodinggames.rts.game.units.a.s376 v2 = this.a(p1, -1, v1);
    if (v2 == null) {
        return v0;
    }
    if (v2.g(this)) {
        return v0;
    }
    if (v2.b(this)) {
        v0 = v1;
    }
    return v0;
}
