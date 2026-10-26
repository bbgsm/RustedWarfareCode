private final strictfp void a(ce454 p1, float p2, boolean p3) {
    float v11 = 10.0f;
    float v10 = 6.0f;
    float v9 = 3.0f;
    float v8 = 0.7f;
    float v1 = 0.0f;

    if (p1 == this) {
        return;
    }
    if (this.bW == -1 || this.bW != p1.bW) {
        return;
    }
    if (this.bS == p1 || p1.bS == this) {
        return;
    }

    float v2 = this.eq + this.cb;
    float v3 = this.er + this.cc;
    float v4 = p1.eq + p1.cb;
    float v5 = p1.er + p1.cc;
    float v0 = com.corrodinggames.rts.gameFramework.f1006.a(v2, v3, v4, v5);
    float v6 = this.cl + p1.cl;

    if (p3) {
        float v7 = v6 * v6;
        if (v0 >= v7) {
            v1 = v0;
        } else {
            v1 = 0.0f;
        }

        if (p1 instanceof bp437) {
            bp437 v0obj = (bp437)p1;
            int v3b = v0obj.aK;
            for (int v2i = 0; v2i < v3b; v2i++) {
                if (v0obj.aL[v2i] == this) {
                    return;
                }
            }
        }

        if (this.aL == null) {
            this.aL = new ce454[10];
            this.aM = new float[10];
        }

        ce454[] v3arr = this.aL;
        float[] v4arr = this.aM;

        int v0i = 0;
        while (v0i < this.aK) {
            if (v1 < v4arr[v0i]) {
                break;
            }
            v0i++;
        }

        if (v0i >= this.aK) {
            v0i = -1;
        }

        if (v0i == -1) {
            int v0byte = this.aK;
            if (v0byte >= v3arr.length) {
                return;
            }
            v0i = v0byte;
        }

        if (this.aK < v3arr.length) {
            this.aK = (byte)(this.aK + 1);
        }

        for (int v2i = this.aK - 1; v2i > v0i; v2i--) {
            v3arr[v2i] = v3arr[v2i - 1];
        }

        v3arr[v0i] = p1;
        v4arr[v0i] = v1;
        return;
    }

    float v7 = v6 * v6;
    if (v0 >= v7) {
        return;
    }
    if (p1.a(this, p2)) {
        return;
    }
    if (this.a(p1, p2)) {
        return;
    }

    float v7angle = com.corrodinggames.rts.gameFramework.f1006.d(v2, v3, v4, v5);
    float v0sqrt = (float)Math.sqrt((double)v0);
    float v0adj = v6 - v0sqrt + 0.001f;

    if (v0adj <= 0.0f) {
        return;
    }

    int v2int = this.bv();
    int v3int = p1.bv();
    if (v2int <= v3int) {
        v2int = v3int;
    }

    if (v2int != 0) {
        float v2f = v0adj / (float)v2int;
        v2f *= p2;
        if (v2f <= v0adj) {
            v0adj = v2f;
        }
    }

    v0adj *= 0.95f;
    if (v0adj > 1.0f) {
        v0adj *= 0.7f;
    }
    if (v0adj > 3.0f) {
        v0adj = (v0adj - 3.0f) * 0.7f + 3.0f;
    }
    if (v0adj > 6.0f) {
        v0adj = (v0adj - 6.0f) * 0.7f + 6.0f;
    }
    if (v0adj > 10.0f) {
        v0adj = (v0adj - 10.0f) * 0.7f + 10.0f;
    }

    float v2final = v0adj;
    float v6bu = this.bu();
    float v5bu = p1.bu();

    bp437 v0bp = null;
    if (p1 instanceof bp437) {
        v0bp = (bp437)p1;
    }

    float v3mult;
    if (this.bZ == p1.bZ && v0bp != null) {
        boolean v4flag = false;
        v3mult = 1.7f;

        if (this.Y > 200.0f || v0bp.Y > 200.0f) {
            v3mult = 5.0f;
        }

        if (this.af == v0bp) {
            v5bu *= v3mult;
            v4flag = true;
        }
        if (v0bp.af == this) {
            v6bu *= v3mult;
            v4flag = true;
        }

        if (v4flag) {
            v3mult = v6bu;
        } else {
            if (this.ag && v0bp.af != null) {
                v3mult *= v6bu;
            } else if (v0bp.ag && this.af != null) {
                v5bu *= v3mult;
                v3mult = v6bu;
            } else if (this.c == 0.0f && v0bp.c != 0.0f) {
                v3mult *= v6bu;
            } else if (v0bp.c == 0.0f && this.c != 0.0f) {
                v5bu *= v3mult;
                v3mult = v6bu;
            } else {
                v3mult = v6bu;
            }
        }
    } else {
        v3mult = v6bu;
    }

    if (p1 instanceof bn435) {
        v1 = v3mult / (v3mult + v5bu);
    }

    float v3sin = com.corrodinggames.rts.gameFramework.f1006.k(v7angle);
    float v4cos = com.corrodinggames.rts.gameFramework.f1006.j(v7angle);

    if (p1 instanceof bn435) {
        float v5move = v1 * v2final;
        p1.cb += v3sin * v5move;
        p1.cc += v5move * v4cos;
    }

    float v1other = (1.0f - v1) * v2final;
    this.cb -= v3sin * v1other;
    this.cc -= v1other * v4cos;

    com.corrodinggames.rts.gameFramework.k1104 v1game = com.corrodinggames.rts.gameFramework.k1104.t();
    int v1tick = v1game.bu;

    this.ab = p1;
    this.ac = v1tick;

    if (v0bp == null) {
        return;
    }

    v0bp.ab = this;
    v0bp.ac = v1tick;

    if (this.ae == 0 || this.ae != v0bp.ae) {
        return;
    }

    en734 v1en = this.ap();
    if (v1en == null) {
        v1en = v0bp.ap();
        if (v1en != null) {
            if (v1en.a == eo735.a || v1en.a == eo735.h) {
                v0bp.as();
            }
        }
    }

    if (v0bp.ap() == null) {
        en734 v0en = this.ap();
        if (v0en != null) {
            if (v0en.a == eo735.a || v0en.a == eo735.h) {
                this.as();
            }
        }
    }
    return;
}
