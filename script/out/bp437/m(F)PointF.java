public final strictfp android.graphics.PointF m(float p1) {
    float v1 = 0.0f;
    float v0;
    float v2;
    if (this.H() && this.b == v1) {
        if (this.aS()) {
            v0 = this.ce;
            v1 = this.cf;
            v1 *= p1;
            v0 *= p1;
            v2 = v1;
        } else {
            v0 = this.ch;
            if (v0 != v1) {
                v0 = this.ci;
                if (this.aT()) {
                    v0 = this.cj;
                }
                v1 = this.y();
                v1 *= this.ch;
                v2 = v1 * p1;
                float v3 = com.corrodinggames.rts.gameFramework.f1006.k(v0);
                v0 = com.corrodinggames.rts.gameFramework.f1006.j(v0);
                v1 = v0 * v2;
                v0 = v3 * v2;
                v2 = v1;
            } else {
                v0 = v1;
                v2 = v1;
            }
        }
    } else {
        v0 = v1;
        v2 = v1;
    }
    com.corrodinggames.rts.game.units.bp437.bo.set(v0, v2);
    return com.corrodinggames.rts.game.units.bp437.bo;
}
