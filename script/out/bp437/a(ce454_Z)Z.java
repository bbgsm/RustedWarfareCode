public final strictfp boolean a(com.corrodinggames.rts.game.units.ce454 p1, boolean p2) {
    if (this.bZ == p1.bZ) {
        return false;
    }
    if (!p1.bX) {
        return false;
    }
    if (this.bZ.b(p1.bZ)) {
        return false;
    }
    if (this.R == com.corrodinggames.rts.game.units.a384.d) {
        return false;
    }
    if (this.R == com.corrodinggames.rts.game.units.a384.c) {
        return false;
    }
    if (p1.cP == null) {
        return false;
    }
    if (!this.f(p1)) {
        return false;
    }
    if (!p1.b(this)) {
        return false;
    }
    if (!p2) {
        return true;
    }
    float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, p1.eq, p1.er);
    float range = this.e(false);
    range = range * range;
    return dist < range;
}
