public final strictfp void c(float p1) {
    com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
    boolean v1 = com.corrodinggames.rts.gameFramework.k1104.X();
    if (v1) {
        v0.bL.a(com.corrodinggames.rts.game.b.b326.e);
    }
    com.corrodinggames.rts.game.b.b326.e(p1);
    if (v1) {
        v0.bL.b(com.corrodinggames.rts.game.b.b326.e);
    }
    if (this.Y) {
        android.graphics.Rect rect = new android.graphics.Rect();
        rect = new android.graphics.Rect();
        int left = this.Z * this.n;
        int top = this.aa * this.o;
        int right = this.n + left;
        int bottom = this.o + top;
        rect.set(left, top, right, bottom);
        rect.offset(-com.corrodinggames.rts.gameFramework.k1104.t().cr, -com.corrodinggames.rts.gameFramework.k1104.t().cs);
    }
}
