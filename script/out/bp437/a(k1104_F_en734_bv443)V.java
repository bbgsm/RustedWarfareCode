private strictfp void a(com.corrodinggames.rts.gameFramework.k1104 p1, float p2, com.corrodinggames.rts.game.units.en734 p3, com.corrodinggames.rts.game.units.bv443 p4) {
    boolean v8 = H();
    if (this.aW != null) {
        b(p1);
    }
    if (this.af != null) {
        if (!this.af.bX || this.af.by()) {
            a((com.corrodinggames.rts.game.units.bp437) null);
        }
    }
    if (this.i) {
        com.corrodinggames.rts.game.units.bx445 v7 = dd();
        com.corrodinggames.rts.game.units.en734 v0 = ap();
        if (v0 == null) {
            p4.d = false;
        }
        if (com.corrodinggames.rts.game.units.bp437.L) {
            p4.d = false;
        }
        if (this.ag && this.ai > 0 && df()) {
            this.ap = p1.bv;
        }
        if (v0 != null) {
            if (this.af != null && p4.d) {
                com.corrodinggames.rts.game.units.en734 v2 = this.af.ap();
                if (v2 != null && v2.b(v0)) {
                    p4.d = false;
                }
            }
        }
        if (this.af != null && p4.d) {
            a(p2, v7, p4, p3);
        } else if (this.cn != 0.0f) {
            p4.e = this.j;
            p4.f = this.k;
            p4.b = true;
        } else {
            boolean v0Bool;
            if (this.aW == null) {
                v0Bool = false;
            } else {
                if (v7 == null) {
                    v0Bool = false;
                } else {
                    v0Bool = this.s && !(this.q < 450.0f);
                    if (this.q == 0.0f) {
                        v0Bool = true;
                    }
                }
                if (this.q == 0.0f && (!bU() || aI())) {
                    float v2 = l() - 1.0f;
                    if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > v2
                            || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > v2) {
                        v0Bool = true;
                    }
                }
                if (p3 != null && this.q == 0.0f
                        && (p3.a == com.corrodinggames.rts.game.units.eo735.e
                        || p3.a == com.corrodinggames.rts.game.units.eo735.i)) {
                    if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > 12.0f
                            || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > 12.0f) {
                        v0Bool = true;
                    }
                }
                if (p3 != null) {
                    float v2 = (float) this.p;
                    if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > v2
                            || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > v2) {
                        if (this.q > 30.0f) {
                            this.q = 30.0f;
                        }
                        if (this.q == 0.0f) {
                            v0Bool = true;
                        }
                    }
                }
            }
            if (v0Bool) {
                this.q = 500.0f;
                boolean v4 = this.ag && this.aj > 1;
                a(this.j, this.k, this.l, v4, this.r);
            }
            com.corrodinggames.rts.game.units.bx445 v0Ref;
            if (v7 != null && this.aw != null && this.ay >= 2 && y() > 5.0f) {
                com.corrodinggames.rts.game.units.bx445 v1 = this.ax[1];
                float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v7.a, v7.b);
                float v3 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v1.a, v1.b);
                if (v2 < 36.0f) {
                    if (v3 < 361.0f) {
                        v0Ref = v7;
                    } else {
                        dh();
                        v0Ref = dd();
                    }
                } else {
                    dh();
                    v0Ref = dd();
                }
            } else {
                v0Ref = v7;
            }
            if (v0Ref != null) {
                p4.e = v0Ref.a;
                p4.f = v0Ref.b;
                p4.b = true;
            } else if (this.h) {
                p4.e = this.j;
                p4.f = this.k;
                p4.b = true;
            }
        }
    }
    a(p2, p4, p3, v8);
    return;
}
