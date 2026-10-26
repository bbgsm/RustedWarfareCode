private strictfp void a(en734 p1, bv443 p2) {
    float v7 = p1.d();
    float v8 = p1.e();
    float v9 = f1006.a(this.eq, this.er, v7, v8);

    boolean v1 = (p1.a == eo735.k || p1.a == eo735.n);
    boolean v4 = p1.a == eo735.k;
    ce454 v0 = p1.h;

    if (v1) {
        if (v0 == null || v0.bX) {
            this.as();
            p1 = null;
        }
        if (p1 != null && v0 != null && !v0.bL() && this.bZ.b(v0.bZ)) {
            this.as();
            p1 = null;
        }
    }

    if (p1 == null) {
        return;
    }

    float v1f = this.cl;
    if (v1) {
        v1f = v0.cl + v1f;
    }

    if (p1.a == eo735.n) {
        if (this.cM) {
            v1f += 30.0f;
        } else {
            v1f += 50.0f;
        }
    } else {
        if (this.cM) {
            v1f += 80.0f;
        } else {
            v1f += 100.0f;
        }
    }

    v1f *= v1f;
    if (v9 > v1f) {
        this.i = true;
        this.j = v7;
        this.k = v8;
        this.l = 2;
        if (this.q > 90.0f) {
            this.q = 90.0f;
        }
        this.p = 18;
        if (this.af != null && !this.af.by()) {
            p2.d = false;
        }
    } else {
        this.u = 0;
    }
    p2.d = false;

    boolean v1Flag;
    boolean v5Flag = false;

    if (this.T != null && !this.T.bX) {
        if (this.b(this.T, false)) {
            float dist = f1006.a(this.eq, this.er, this.T.eq, this.T.er);
            float range = this.v(this.T);
            boolean within = dist < range * range;
            if (within) {
                v5Flag = this.Z();
            } else {
                v5Flag = false;
            }

            if (v9 < 22500.0f) {
                this.u = 0;
            }

            boolean v1tmp;
            if (!v5Flag) {
                if (this.u == 1 || v9 > 122500.0f) {
                    this.u = 1;
                    v1tmp = true;
                } else {
                    v1tmp = false;
                }
            } else {
                v1tmp = false;
            }

            if (v9 > 302500.0f || (this.u == 1 && v9 > 202500.0f)) {
                this.u = 1;
                v1tmp = true;
            }

            if (v1tmp) {
                v1Flag = false;
            } else {
                this.u = 0;
                if (v5Flag) {
                    this.i = false;
                    v1Flag = true;
                } else {
                    if (this.q > 90.0f) {
                        this.q = 90.0f;
                    }
                    this.i = true;
                    this.j = this.T.eq;
                    this.k = this.T.er;
                    this.l = 0;
                    this.h = true;
                    v1Flag = true;
                }
            }
        } else {
            v1Flag = false;
        }
    } else {
        v1Flag = false;
    }

    if (v4 && !v1Flag) {
        ce454 v5 = v0.o(2.0f);
        if (v5 != null) {
            if (!this.b(v5, true)) {
                v5 = null;
            }
        }
        if (v5 == null && this.u != 1) {
            v5 = this.o(2.0f);
            if (v5 != null) {
                if (!this.b(v5, true)) {
                    v5 = null;
                }
            }
        }
        if (v5 != null) {
            if (this.q > 90.0f) {
                this.q = 90.0f;
            }
            this.i = true;
            this.j = v5.eq;
            this.k = v5.er;
            this.l = 0;
            this.h = true;
            v1Flag = true;
        }
    }

    if (v4 && !v1Flag && this.a(v0)) {
        if (v0.cw < v0.cx || v0.co < 1.0f) {
            if (this.a(v0)) {
                en734 v2 = this.am();
                if (v2 != null) {
                    v2.b(v0);
                    v2.m = true;
                    if (this.q > 20.0f) {
                        this.q = 20.0f;
                    }
                    v1Flag = true;
                }
            }
        }
    }

    if (v4 && !v1Flag && this.ai()) {
        if (v0 instanceof bp437) {
            bp437 v0bp = (bp437) v0;
            ce454 v0new = v0bp.W();
            if (v0new != null && this.a(v0new)) {
                en734 v1r = this.am();
                if (v1r != null) {
                    v1r.b(v0new);
                    v1r.m = true;
                    if (this.q > 20.0f) {
                        this.q = 20.0f;
                    }
                }
            }
        }
    }
}
