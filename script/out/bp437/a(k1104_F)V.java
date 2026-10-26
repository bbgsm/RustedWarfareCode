private strictfp void a(k1104 p1, float p2) {
    int v8 = this.aU();
    boolean v0;
    if (this.k()) {
        if (this.T == null || ((n533) (Object) this.T).M) {
            v0 = true;
        } else {
            v0 = false;
        }
    } else {
        v0 = false;
    }

    boolean v0End = false;
    if (v0) {
        boolean v7;
        boolean v0main = false;
        if (this.T != null) {
            n533 v1 = this.cR;
            if (v1 != null && this.cQ != null && v1.L) {
                if (this.cQ.T == this.T) {
                    v0main = true;
                }
            }
            boolean v1res = this.a(this.T, false);
            if (!v1res && !v0main) {
                this.T = null;
            }
            v7 = v0main;
        } else {
            v7 = false;
        }

        boolean v0b;
        if (this.T != null && !v7) {
            v0b = !this.d(this.T);
        } else {
            v0b = false;
        }

        this.U = f1006.a(this.U, p2);
        this.V = f1006.a(this.V, p2);

        if (this.T == null || v0b) {
            if (this.U == 0.0f && this.aP()) {
                this.U = 20.0f + (this.eq % 5.0f) + (this.er % 5.0f);
                float v0e = this.e(false);
                this.a(p1, p2, v0e);
                if (this.T != null) {
                    this.V = 0.0f;
                }
            }
        }

        if (this.T != null && this.V == 0.0f) {
            this.V = 20.0f + (this.eq % 5.0f) + (this.er % 5.0f);
            int v9 = this.aU();
            if (this.ab()) {
                boolean v0flag = false;
                for (int i = 0; i < v9; i++) {
                    ch457 v2 = this.cN[i];
                    if (this.q(i) == -1) {
                        if (this.a(i, this.T, false, false)) {
                            v2.j = this.T;
                        } else {
                            v0flag = true;
                            if (v2.j == this.T) {
                                v2.j = null;
                            }
                        }
                    }
                }
                if (v0flag) {
                    float v3e = this.e(false);
                    bz447 v4 = bp437.aV;
                    float v2e = this.e(false);
                    v4.d = this.aU();
                    for (int i = 0; i < v4.d; i++) {
                        float v1 = this.u(i);
                        if (v1 > v2e) {
                            v1 = v2e;
                        }
                        v4.b[i] = v1 * v1 + 1.0f;
                        v4.c[i] = false;
                        if (this.q(i) == -1) {
                            if (this.cN[i].j == null) {
                                v4.c[i] = true;
                            }
                        }
                    }
                    v4.f = true;
                    p1.bZ.a(this.eq, this.er, v3e, this, p2, bp437.aV);
                }
                for (int i = 0; i < v9; i++) {
                    int v1q = this.q(i);
                    if (v1q != -1) {
                        this.cN[i].j = this.cN[v1q].j;
                    }
                }
            } else {
                for (int i = 0; i < v9; i++) {
                    this.cN[i].j = this.T;
                }
            }
        }

        for (int i = 0; i < v8; i++) {
            this.cN[i].g = false;
        }

        v0End = false;
        if (this.T != null) {
            float v0dist = f1006.a(this.eq, this.er, this.T.eq, this.T.er);
            float v1range = this.v(this.T);
            v1range *= v1range;
            if (v0dist < v1range || v7) {
                int v3 = this.aG();
                for (int i = 0; i < v8; i++) {
                    ch457 v4 = this.cN[i];
                    ce454 v1 = v4.j;
                    if (v1 != null) {
                        boolean v0same = (v1 == this.T);
                        if (!v0same) {
                            if (!this.b(v1, true)) {
                                v4.j = null;
                                continue;
                            }
                        }
                        boolean v0arg = !v0same;
                        if (!this.a(i, v1, false, v0arg)) {
                            v4.j = null;
                            continue;
                        }
                        PointF v0p = this.B(i);
                        PointF v5p = this.F(i);
                        v5p.x += v1.eq;
                        v5p.y += v1.er;
                        float v5f = f1006.d(v0p.x, v0p.y, v5p.x, v5p.y);
                        if (this.q(i) == -1 && i != v3) {
                            if (!this.D()) {
                                v4.a(0x46);
                                v4.b = v4.a;
                                float v0angle = 179.0f;
                                if (!(v4.d < 0.0f)) {
                                    v0angle = this.a(p2, v5f, i);
                                }
                                if (f1006.d(v0angle) < this.s(i)) {
                                    v4.g = true;
                                }
                            } else {
                                boolean v0b2 = false;
                                en734 v1e = this.ap();
                                if (v1e != null) {
                                    if (v1e.a == eo735.c || v1e.a == eo735.d || v1e.a == eo735.g) {
                                        v0b2 = true;
                                    }
                                }
                                if (!v0b2) {
                                    if (!this.i || this.aT()) {
                                        float v0angle2 = this.a(p2, v5f);
                                        v4.b = v4.a;
                                        if (f1006.d(v0angle2) < this.s(i)) {
                                            v4.g = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                boolean v0loop = false;
                for (int i = 0; i < v8; i++) {
                    ch457 v1slot = this.cN[i];
                    ce454 v3c = v1slot.j;
                    if (v3c != null) {
                        boolean v4p = this.p(i);
                        if (v4p && v1slot.e == 0.0f) {
                            v0loop = true;
                        }
                        if (this.p(i)) {
                            ch457 v4 = this.cN[i];
                            int v1q = this.q(i);
                            if (v1q != -1) {
                                v4.a = this.cN[v1q].a;
                            }
                            boolean v5 = this.n(i);
                            boolean v1flag = false;
                            if (v5) {
                                if (v4.f < this.e(i)) {
                                    if (v4.f == 0.0f) {
                                        this.k(i);
                                    }
                                    v4.f += p2;
                                } else {
                                    v4.f = this.e(i);
                                }
                                v1flag = true;
                            }
                            if (v4.e == 0.0f && this.m(i)) {
                                if (this.a(i, v3c, false, false) == 0) {
                                    v4.e = -10.0f;
                                    continue;
                                }
                                if (!v5) {
                                    if (v4.f < this.e(i)) {
                                        if (v4.f == 0.0f) {
                                            this.k(i);
                                        }
                                        v4.f += p2;
                                    } else {
                                        v1flag = true;
                                    }
                                }
                                if (v1flag) {
                                    v4.e = this.b(i) + this.o(i);
                                    if (!v5) {
                                        v4.f = 0.0f;
                                    }
                                    this.a(v3c, i);
                                    this.H(i);
                                    v4.m = !v4.m;
                                }
                            }
                        }
                    }
                }
                v0End = v0loop;
            } else {
                if (!this.i && this.al()) {
                    this.h = true;
                    this.i = true;
                    this.j = this.T.eq;
                    this.k = this.T.er;
                    this.l = 0;
                }
                v0End = false;
            }
        } else {
            v0End = false;
        }
    }

    if (this.aP && this.W() != null) {
        v0End = true;
    }
    for (int i = 0; i < v8; i++) {
        ch457 v2 = this.cN[i];
        if (!v0End && v2.f != 0.0f) {
            v2.f = f1006.a(v2.f, this.f(i) * p2);
        }
    }
}
