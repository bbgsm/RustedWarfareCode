private strictfp void a(float p1, com.corrodinggames.rts.game.units.ce454 p2, com.corrodinggames.rts.game.units.bv443 p3, boolean p4) {
    int v3 = this.aO();
    float v4 = p2.eq;
    float v5 = p2.er;
    float v6 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v4, v5);

    if (this.af != null) {
        if (v6 < 490000.0f) {
            if (v6 < 48400.0f) {
                p3.d = false;
            }
            float v0 = com.corrodinggames.rts.gameFramework.f1006.a(this.af.eq, this.af.er, v4, v5);
            if (v0 < 10.0f) {
                p3.d = false;
            }
            if (v0 < 270400.0f && this.aI()) {
                p3.d = false;
            }
        }
        if (this.af.T == p2) {
            p3.d = false;
        }
        if (p3.d) {
            this.ak = 0.0f;
        } else {
            this.ak += p1;
        }
    } else {
        this.ak = 500.0f;
    }

    float v0 = this.v(p2);
    boolean v7;
    if (v6 < v0 * v0) {
        if (this.T != p2) {
            if (com.corrodinggames.rts.game.units.ci458.a(this, p2)) {
                this.T = p2;
                this.U = 10.0f;
                this.H(-1);
            }
        } else {
            this.U = 10.0f;
        }

        if (!this.D()) {
            v0 -= 1.0f;
            if (this.aI()) {
                v0 -= 2.0f;
            }
            if (this.e(0) > 5.0f) {
                v0 -= 3.0f;
            }
        }

        if (v6 < v0 * v0) {
            if (this.aO() == com.corrodinggames.rts.game.units.b421.d) {
                v7 = true;
            } else if (p2 == null) {
                v7 = false;
            } else if (this.e(p2)) {
                if (p4) {
                    this.i = false;
                }
                v7 = false;
            } else {
                v7 = this.u(p2);
            }
        } else {
            v7 = true;
        }
    } else {
        v7 = true;
    }

    if (!v7) {
        return;
    }

    this.i = true;
    this.j = v4;
    this.k = v5;
    this.l = 0;
    if (v3 == com.corrodinggames.rts.game.units.b421.d) {
        this.c(v6, v4, v5);
    }
    this.l = this.j(p2);
    if (this.q > 90.0f) {
        this.q = 90.0f;
    }
    if (v6 < 810000.0f) {
        if (this.bU() || this.aI()) {
            this.h = true;
        }
        if (!p3.d && this.ak < 120.0f) {
            this.q = 0.1f;
            this.h = true;
        }
    }
}
