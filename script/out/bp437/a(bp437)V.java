public final strictfp void a(com.corrodinggames.rts.game.units.bp437 p1) {
    com.corrodinggames.rts.game.units.bp437 v0;
    int v1;
    if (this.af != null) {
        v0 = this.af;
        v1 = v0.ai - 1;
        v0.ai = v1;
    }
    this.af = p1;
    if (p1 != null) {
        v0 = this.af;
        v1 = v0.ai + 1;
        v0.ai = v1;
    }
}
