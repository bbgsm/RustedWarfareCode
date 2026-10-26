public final strictfp float a(float p1, float p2, boolean p3, boolean p4) {
    float v7 = 360.0f;
    float v6 = 0.01f;
    float v2 = -1.0f;
    float v0 = 0.0f;
    float v3 = 1.0f;

    this.cj = p2;

    float v1 = com.corrodinggames.rts.gameFramework.f1006.d(this.ci - p2);
    if (v1 >= v6) {
        v1 = com.corrodinggames.rts.gameFramework.f1006.c(this.ci, p2, v7);

        if (p3) {
            if (p4) {
                float v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
                float v5 = 100.0f;
                if (v4 > v5) {
                    v1 = com.corrodinggames.rts.gameFramework.f1006.c(this.ci, p2 + 180.0f, v7);
                    if (!this.ck) {
                        this.b();
                        this.ck = true;
                    }
                } else {
                    if (this.ck) {
                        this.b();
                        this.ck = false;
                    }
                }
            } else {
                if (this.ck) {
                    this.b();
                    this.ck = false;
                }
            }
        }

        float v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
        if (v4 < v6) {
            return v0;
        }

        if (this.aB > 0.0f) {
            v0 = v1;
            return v0;
        }

        v4 = this.A();
        if (v4 > 0.0f) {
            if (v1 > 0.0f) {
                v2 = v3;
            }
            v3 = com.corrodinggames.rts.gameFramework.f1006.d(this.cg) / v4;
            float v5 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
            if (v5 < v3) {
                v3 = this.cg;
                v2 = v2 * v4;
                v4 = v4 * p1;
                v2 = com.corrodinggames.rts.gameFramework.f1006.a(v3, v2, v4);
                this.cg = v2;
            } else {
                v3 = this.cg;
                v5 = this.z();
                v2 = v2 * v5;
                v4 = v4 * p1;
                v2 = com.corrodinggames.rts.gameFramework.f1006.a(v3, v2, v4);
                this.cg = v2;
            }

            v2 = this.cg * p1;
            v3 = com.corrodinggames.rts.gameFramework.f1006.d(v2);
            v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
            if (v3 > v4) {
                this.cg = v0;
                v0 = v1;
            } else {
                v0 = v2;
            }
            this.i(v0);
            return v1;
        } else {
            if (v1 > 0.0f) {
                v0 = v3;
            } else {
                v0 = v2;
            }
            v0 = v0 * this.z() * p1;
            v2 = com.corrodinggames.rts.gameFramework.f1006.d(v0);
            v3 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
            if (v2 > v3) {
                v0 = v1;
            }
            this.i(v0);
            return v1;
        }
    } else {
        if (p3) {
            if (this.ck) {
                this.b();
                this.ck = false;
            }
        }
        return v0;
    }
}
