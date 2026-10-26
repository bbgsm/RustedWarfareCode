public strictfp android.graphics.PointF B(int p1) {
    com.corrodinggames.rts.game.units.ch457 v4 = this.cN[p1];
    float v0 = this.eq;
    float v1 = this.er;
    float v2 = this.C(p1);
    float v3 = 0.0f;
    if (v4.e != v3 && v2 != v3) {
        float v5 = this.D(p1);
        float v6 = this.E(p1);
        float v7 = this.b(p1) - v4.e;
        if (v7 < v5) {
            float v8 = v6 + v5;
            if (v7 < v8) {
                v2 = v3;
            } else {
                v2 = v2 - v2 * ((v7 - v5) / v6);
            }
        } else {
            v2 = v2 * (v7 / v5);
        }
        if (v2 != v3) {
            v0 = v0 + com.corrodinggames.rts.gameFramework.f1006.k(v4.a) * v2;
            v1 = v1 + v2 * com.corrodinggames.rts.gameFramework.f1006.j(v4.a);
        }
    }
    com.corrodinggames.rts.game.units.bp437.bj.set(v0, v1);
    return com.corrodinggames.rts.game.units.bp437.bj;
}
