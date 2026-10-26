public strictfp void b(com.corrodinggames.rts.game.units.ce454 p1, float p2, int p3) {
    float v0 = this.W;
    v0 = com.corrodinggames.rts.gameFramework.f1006.a(v0, p2);
    this.W = v0;
    v0 = this.W;
    float v1 = 0.0f;
    if (v0 == v1) {
        this.W = 5.0f;
        if (this.i_()) {
            android.graphics.PointF v7 = this.z(0);
            com.corrodinggames.rts.gameFramework.k1104 v0_1 = com.corrodinggames.rts.gameFramework.k1104.t();
            com.corrodinggames.rts.gameFramework.d.e921 v0_2 = v0_1.bO.a(p1.eq, p1.er, p1.es, com.corrodinggames.rts.gameFramework.d.d920.a, false, com.corrodinggames.rts.gameFramework.d.h924.b);
            if (v0_2 != null) {
                float v1_1 = (float)((double)v7.x + (-8.0 + Math.random() * 16.0));
                float v2_1 = (float)((double)v7.y + (-8.0 + Math.random() * 16.0));
                float v1_2 = com.corrodinggames.rts.gameFramework.f1006.d(p1.eq, p1.er - p1.es, v1_1, v2_1);
                v0_2.P = com.corrodinggames.rts.gameFramework.f1006.k(v1_2) * com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                v0_2.Q = com.corrodinggames.rts.gameFramework.f1006.j(v1_2) * com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                v0_2.ap = 5;
                v0_2.V = 20.0f;
                v0_2.W = v0_2.V;
                v0_2.r = true;
                v0_2.E = 0.8f;
                v0_2.G = 0.2f;
                v0_2.F = 1.0f;
            }
        }
    }
    return;
}
