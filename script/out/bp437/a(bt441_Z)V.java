public final strictfp void a(com.corrodinggames.rts.game.units.bt441 p1, boolean p2) {
    float v7 = 0.0f;
    float v4 = 1.0f;
    float v3 = 0.07f;
    float v1 = -0.07f;
    float v2 = 0.8f;

    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();

    if (p1 == com.corrodinggames.rts.game.units.bt441.h) {
        v6.bJ.a(com.corrodinggames.rts.gameFramework.a.e788.p, v2, this.eq, this.er);
        v6.bO.a(this.eq, this.er, this.es);
        v6.bO.t = com.corrodinggames.rts.gameFramework.d.h924.e;
        com.corrodinggames.rts.gameFramework.d.e921 v0 = v6.bO.c(this.eq, this.er, this.es, -0x113334);
        if (v0 != null) {
            v0.G = 0.2f;
            v0.F = 2.0f;
            v0.ar = (short) 2;
            v0.V = 45.0f;
            v0.W = v0.V;
            v0.U = v7;
        }
    } else if (p1 == com.corrodinggames.rts.game.units.bt441.d || p1 == com.corrodinggames.rts.game.units.bt441.f || p1 == com.corrodinggames.rts.game.units.bt441.g) {
        v6.bJ.a(com.corrodinggames.rts.gameFramework.a.e788.p, v2, this.eq, this.er);
        v6.bO.a(this.eq, this.er, this.es);
    } else if (p1 == com.corrodinggames.rts.game.units.bt441.a) {
        v3 = com.corrodinggames.rts.gameFramework.f1006.c(v1, v3);
        v6.bJ.a(com.corrodinggames.rts.gameFramework.a.e788.o, 0.4f, v3 + v4, this.eq, this.er);
        v6.bO.b(this.eq, this.er, this.es);
    } else if (p1 == com.corrodinggames.rts.game.units.bt441.e) {
        v3 = com.corrodinggames.rts.gameFramework.f1006.c(v1, v3);
        v6.bJ.a(com.corrodinggames.rts.gameFramework.a.e788.o, v2, v3 + v4, this.eq, this.er);
        v6.bO.b(this.eq, this.er, this.es);
        v6.bO.t = com.corrodinggames.rts.gameFramework.d.h924.e;
        com.corrodinggames.rts.gameFramework.d.e921 v0 = v6.bO.c(this.eq, this.er, this.es, -0x113334);
        if (v0 != null) {
            v0.G = 0.2f;
            v0.F = 2.0f;
            v0.ar = (short) 2;
            v0.V = 45.0f;
            v0.W = v0.V;
            v0.U = v7;
        }
    } else {
        v3 = com.corrodinggames.rts.gameFramework.f1006.c(v1, v3);
        v6.bJ.a(com.corrodinggames.rts.gameFramework.a.e788.o, v2, v3 + v4, this.eq, this.er);
        v6.bO.b(this.eq, this.er, this.es);
    }

    if (p1 != com.corrodinggames.rts.game.units.bt441.a) {
        if (p1 != com.corrodinggames.rts.game.units.bt441.g) {
            com.corrodinggames.rts.gameFramework.d.e921 v0 = v6.bO.d(this.eq, this.er, this.es, 0);
            if (v0 != null) {
                v0.E = 0.9f;
            }
        }
        if (p2) {
            if (!this.bw()) {
                this.aX();
            }
            if (p1 != com.corrodinggames.rts.game.units.bt441.g) {
                if (!this.cn()) {
                    com.corrodinggames.rts.gameFramework.d.f922.a(this.eq, this.er);
                    com.corrodinggames.rts.gameFramework.d.f922.b(this.eq, this.er);
                    this.aZ();
                }
            }
        }
    }
}
