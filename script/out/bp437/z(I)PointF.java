public strictfp android.graphics.PointF z(int p1) {
    com.corrodinggames.rts.game.units.ch457 v0 = this.cN[p1];
    float v1 = this.g(p1);
    float v0Float;
    if (this.D()) {
        v0Float = this.ci;
    } else {
        v0Float = v0.a;
    }
    android.graphics.PointF v2 = this.B(p1);
    float v3 = v2.x;
    float v4 = com.corrodinggames.rts.gameFramework.f1006.k(v0Float);
    float v2y = v2.y;
    float v0Result = com.corrodinggames.rts.gameFramework.f1006.j(v0Float);
    android.graphics.PointF v5 = bp437.bi;
    v4 *= v1;
    v3 += v4;
    v0Result *= v1;
    v0Result += v2y;
    v5.set(v3, v0Result);
    return bp437.bi;
}
