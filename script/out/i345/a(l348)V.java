private strictfp void a(com.corrodinggames.rts.game.l348 p1) {
    if (this.M != null) {
        throw new RuntimeException("Layer already enabled");
    }
    this.M = this.bL;
    this.bL = p1.b;
    this.bL.g();
    this.bL.a(new android.graphics.Rect(0, 0, this.bL.k(), this.bL.l()));
    this.bL.b(p1.f, p1.e);
}
