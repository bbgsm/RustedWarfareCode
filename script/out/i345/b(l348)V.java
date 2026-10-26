private strictfp void b(com.corrodinggames.rts.game.l348 p1) {
    if (this.M == null) {
        throw new RuntimeException("Layer not enabled");
    }
    this.bL.h();
    this.bL.n();
    this.bL = this.M;
    this.M = null;
    this.bL.b(p1.f, p1.e);
}
