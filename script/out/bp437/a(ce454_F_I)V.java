public strictfp void a(com.corrodinggames.rts.game.units.ce454 p1, float p2, int p3) {
    float f0 = this.W;
    f0 = com.corrodinggames.rts.gameFramework.f1006.a(f0, p2);
    this.W = f0;

    if (this.W == 0.0f) {
        this.W = 5.0f;

        if (this.i_()) {
            com.corrodinggames.rts.gameFramework.utility.am1333 v7 = this.aW();

            com.corrodinggames.rts.gameFramework.k1104 k = com.corrodinggames.rts.gameFramework.k1104.t();
            com.corrodinggames.rts.gameFramework.d.c919 c = k.bO;

            com.corrodinggames.rts.gameFramework.d.e921 e = c.a(
                v7.a,
                v7.b,
                this.es + v7.c,
                com.corrodinggames.rts.gameFramework.d.d920.a,
                false,
                com.corrodinggames.rts.gameFramework.d.h924.b
            );

            if (e != null) {
                float v1 = p1.eq;
                double v2 = (double) v1;
                double v4 = -8.0;
                double v8 = Math.random();
                double v10 = 16.0;
                v8 *= v10;
                v4 += v8;
                v2 += v4;
                v1 = (float) v2;

                float v2f = p1.er;
                double v2d = (double) v2f;
                double v4b = -8.0;
                double v8b = Math.random();
                double v10b = 16.0;
                v8b *= v10b;
                v4b += v8b;
                v2d += v4b;
                v2f = (float) v2d;

                float v3 = v7.a;
                float v4f = v7.b;
                float result = com.corrodinggames.rts.gameFramework.f1006.d(v3, v4f, v1, v2f);

                float v2res = com.corrodinggames.rts.gameFramework.f1006.k(result);
                float v3res = com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                v2res *= v3res;
                e.P = v2res;

                float v1res = com.corrodinggames.rts.gameFramework.f1006.j(result);
                float v2res2 = com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                v1res *= v2res2;
                e.Q = v1res;

                e.ap = 6;
                e.V = 20.0f;
                e.W = e.V;
                e.r = true;
                e.E = 0.8f;
                e.G = 0.2f;
                e.F = 1.0f;
            }
        }
    }

    return;
}
