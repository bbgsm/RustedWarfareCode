public strictfp android.graphics.PointF F(int p1) {
    android.graphics.PointF v0 = com.corrodinggames.rts.game.units.bp437.bl;
    v0.set(0.0f, 0.0f);
    com.corrodinggames.rts.game.units.ch457 v1 = this.cN[p1];
    float v2 = v0.x;
    float v3 = v1.h;
    v2 = v2 + v3;
    v0.x = v2;
    v2 = v0.y;
    v3 = v1.i;
    v3 = v3 + v2;
    v0.y = v3;
    return v0;
}
