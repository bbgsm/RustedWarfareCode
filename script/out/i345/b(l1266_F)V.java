private strictfp void b(com.corrodinggames.rts.gameFramework.m.l1266 p1, float p2) {
    if (p1 == null) {
        com.corrodinggames.rts.game.i345.a("drawAll", "canvas is null, not may not be available yet");
        return;
    }
    if (com.corrodinggames.rts.game.i345.aA) {
        return;
    }
    this.bL.a(p1);
    this.bL.a(this.an.getRenderer());
    this.bL.e();
    this.bw++;
    com.corrodinggames.rts.gameFramework.m.f1243.G = 0.0F;
    if (this.dr) {
        this.bL.b(android.graphics.Color.rgb(0, 0, 0));
        this.bL.a("Loading..", this.cl, this.cm, this.dm);
        return;
    }
    float f = this.ck;
    if (f != 1.0F) {
        this.bL.g();
        this.bL.a(f, f);
    }
    boolean z = com.corrodinggames.rts.gameFramework.k1104.ae();
    if (z && this.f(0x71) && this.f(0x2c)) {
        z = false;
    }
    boolean v0 = z && !this.aj();
    if (v0) {
        this.a(this.J);
        try {
            this.bL.b(android.graphics.Color.rgb(0, 0, 0));
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
            }
            this.c(p2);
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
            }
        } finally {
            this.b(this.J);
        }
        this.J.b();
        if (!this.K.a()) {
            this.a(this.K);
            int i = 0;
            try {
                this.bL.b(android.graphics.Color.rgb(128, 128, 255));
                this.I();
                i = this.bO.a(3);
                this.bO.l = null;
            } finally {
                this.b(this.K);
            }
            if (i > 0) {
                this.K.d.a("screenBase", this.J.a);
                this.K.d.b("screenBaseSize", this.J.a);
                this.K.d.a("u_resolution", this.ci, this.cj);
                this.K.d.a("u_offsetBy", 0.2F * this.cU);
                this.K.d.a("u_uiScaling", 1.0F);
                this.K.b();
            }
        }
    } else {
        {
            com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
        }
        this.c(p2);
        {
            com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
        }
    }
    if (!this.s()) {
        {
            com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.f;
        }
        this.d(p2);
        {
            com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.f;
        }
    }
    if (this.bN.showFps && this.cQ == 0.0F && !this.cR && !this.cP) {
        this.bL.a(this.t, 100.0F, 35.0F, this.l);
    }
    if (com.corrodinggames.rts.game.i345.e != null) {
        this.bL.a(com.corrodinggames.rts.game.i345.e, 100.0F, 85.0F, this.l);
    }
    if (!this.ap) {
        com.corrodinggames.rts.gameFramework.m.l1266 c = this.bL.c();
        if (c == null || com.corrodinggames.rts.gameFramework.k1104.aT) {
            this.bP.c(p2);
        }
    }
    if (!this.s()) {
        this.bO.a(4);
    }
    com.corrodinggames.rts.game.units.custom.j607.dd();
    this.bL.f();
    if (f != 1.0F) {
        p1.a_();
    }
}
