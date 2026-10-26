private strictfp void c(float p1) {
    if (!this.bD) {
        return;
    }
    this.W.a();
    this.dt = 0;
    boolean v0 = false;
    com.corrodinggames.rts.gameFramework.ah801[] v8 = com.corrodinggames.rts.game.units.ce454.et.c;
    int v9 = com.corrodinggames.rts.gameFramework.ah801.et.size();
    for (int v1 = 0; v1 < v9; v1++) {
        com.corrodinggames.rts.gameFramework.ah801 v2 = v8[v1];
        boolean v3 = v2.en;
        boolean v4 = v2.a(this);
        v2.en = v4;
        if (v3 != v4) {
            v0 = true;
        }
        if (v4) {
            this.W.a(v2);
        }
    }
    if (this.V.size() != this.W.size()) {
        v0 = true;
    }
    if (v0) {
        com.corrodinggames.rts.gameFramework.utility.v1357 temp = this.V;
        this.V = this.W;
        this.W = temp;
    }
    if (!this.ak()) {
        java.util.Collections.sort(this.V, com.corrodinggames.rts.gameFramework.ah801.ek);
    }
    this.bL.g();
    this.bL.a(this.cH);
    this.al();
    if (this.bN.renderFancyWater) {
        if (this.N == null) {
            this.N = this.bL.a(com.corrodinggames.rts.R.drawable.water_cloud);
        }
        if (this.O == null) {
            this.O = this.bL.a(com.corrodinggames.rts.R.drawable.water_layer1);
        }
        if (this.P == null) {
            this.P = this.bL.a(com.corrodinggames.rts.R.drawable.water_layer2);
        }
        this.R.set(this.cH);
        this.Q += 0.05f * p1;
        if (this.Q > 100.0f) {
            this.Q -= 100.0f;
        }
        this.bL.a(this.N, this.R, (android.graphics.Paint) null, this.cr / 6, this.cs / 6, 1, 1);
        this.R.set(this.cI);
        this.S.set(this.cI);
        this.bL.g();
        this.I();
        this.bL.a(this.P, this.S, (android.graphics.Paint) null, (float) this.cr + this.Q, (float) this.cs + this.Q);
        this.bL.a(this.O, this.S, (android.graphics.Paint) null, (float) this.cr, (float) this.cs);
        this.bL.h();
    }
    if (this.bI != null) {
        this.bI.c(p1);
    }
    this.I();
    this.bL.a(this.cI);
    boolean v1 = this.ak();
    this.bR.c();
    com.corrodinggames.rts.gameFramework.ah801[] v3 = this.V.c;
    int v4 = this.V.size();
    this.cZ = true;
    this.da = true;
    this.db = true;
    this.dc = true;
    this.dd = true;
    if (this.cU < 0.45) {
        this.db = false;
        this.cZ = false;
        this.dd = false;
    }
    if (this.cU < 0.3) {
        this.dc = false;
        this.da = false;
    }
    if (!v1) {
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            if (v2.eo == 0) {
                v2.b(p1);
            }
        }
    }
    com.corrodinggames.rts.gameFramework.d.a917.b();
    this.bO.b(p1);
    this.bO.a(1);
    if (v1) {
        if (this.bP.aX == 0) {
            com.corrodinggames.rts.game.units.ce454.bK.setARGB(0xaf, 0xaf, 0xaf, 0xaf);
            com.corrodinggames.rts.game.units.ce454.bL.setARGB(0xff, 0xff, 0xff, 0xff);
        } else {
            com.corrodinggames.rts.game.units.ce454.bK.setARGB(0xff, 0xc3, 0xc3, 0xc3);
            com.corrodinggames.rts.game.units.ce454.bL.setARGB(0xff, 0xff, 0xff, 0xff);
        }
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            if (!v2.e(p1)) {
                v2.b(p1);
            }
        }
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            v2.a(p1, true);
            v2.n(p1);
        }
    } else {
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            v2.c(p1);
        }
        for (int v2 = 0; v2 < v9; v2++) {
            com.corrodinggames.rts.gameFramework.ah801 v2Obj = v8[v2];
            boolean shouldProcess = v2Obj.en;
            if (!v2Obj.en) {
                if (v2Obj instanceof com.corrodinggames.rts.game.units.ce454) {
                    com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) v2Obj;
                    if (ce.cI && (ce.bZ != this.bp || ce.bK())) {
                        shouldProcess = true;
                    }
                }
            }
            if (shouldProcess) {
                v2Obj.d(p1);
                if (!v2Obj.en) {
                    v2Obj.n(p1);
                }
            }
        }
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            if (v2.eo != 0 && v2.eo != 10) {
                v2.b(p1);
            }
        }
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            v2.a(p1, false);
            v2.n(p1);
        }
        com.corrodinggames.rts.game.p352.H();
    }
    this.db = true;
    this.dc = true;
    this.bO.a(2);
    for (int v0 = 0; v0 < v4; v0++) {
        com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
        if (v2.eo == 10) {
            v2.b(p1);
        }
    }
    this.C.c();
    if (this.cb != null) {
        com.corrodinggames.rts.gameFramework.n.p1300.a();
    }
    com.corrodinggames.rts.gameFramework.utility.ab1322.c();
    this.bL.h();
}
