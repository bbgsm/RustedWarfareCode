private strictfp void a(float p1, float p2, int p3, boolean p4, boolean p5) {
    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.gameFramework.k.k1099 v2 = v6.bR;
    com.corrodinggames.rts.game.b.b326 v7 = v6.bI;

    this.cM = true;

    boolean v0 = false;
    boolean v1 = false;

    if (this.bU()) {
        v0 = true;
    }

    v7.a(this.eq, this.er);
    int v3 = v7.U;
    int v4 = v7.V;

    boolean v5Result = v2.a(this.g(), v3, v4);
    boolean v2Flag;
    if (v5Result) {
        boolean v2Result = v2.b(this.g(), v3, v4);
        if (!v2Result) {
            v2Flag = true;
            v0 = true;
            v1 = true;
        } else {
            v2Flag = v0;
        }
    } else {
        v2Flag = v0;
    }

    if (p1 != this.m || this.n != p2) {
        this.o = 0;
    }
    this.m = p1;
    this.n = p2;

    if (v2Flag) {
        this.s = false;
        this.ay = 0;
        this.aw = null;

        float v2f = v7.a(p1);
        float v0f = v7.b(p2);

        if (v1) {
            float v3f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v2f, v0f);
            v0f = com.corrodinggames.rts.gameFramework.f1006.b(this.eq, this.er, v2f, v0f);

            if (v0f > 60.0f) {
                v0f = 60.0f;
                this.s = true;

                if (this.q > 10.0f) {
                    this.q = 10.0f;
                }
            }

            float v1f = this.eq + com.corrodinggames.rts.gameFramework.f1006.k(v3f) * v0f;
            v0f = this.er + com.corrodinggames.rts.gameFramework.f1006.j(v3f) * v0f;

            this.a(this.ay, v1f, v0f);
        } else {
            this.a(this.ay, v2f, v0f);
        }

        this.ay = this.ay + 1;
        this.t = this.ay;
        return;
    }

    int v5 = 0;
    if (p4) {
        v5 = 3;
    }

    boolean v0Result = com.corrodinggames.rts.game.units.ci458.a(this.g(), this.eq, this.er, p1, p2, v5);

    if (v0Result) {
        this.s = false;
        this.ay = 0;
        this.aw = null;

        float v4f = v7.a(p1);
        float v5f = v7.b(p2);
        float v2f = this.eq;
        float v3f = this.er;

        float v0f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v4f, v5f);
        float v1f = com.corrodinggames.rts.gameFramework.f1006.b(this.eq, this.er, v4f, v5f);

        float v6f = com.corrodinggames.rts.gameFramework.f1006.k(v0f);
        float v7f = com.corrodinggames.rts.gameFramework.f1006.j(v0f);

        int v8 = (int)(0.05f * v1f - 1.0f);

        int v0i = 1;
        if (v8 < 4) {
            v0i = 0;
        }

        for (int v1i = 0; v1i < v8; v1i++) {
            v2f += 20.0f * v6f;
            v3f += 20.0f * v7f;

            if (v0i > 0) {
                v0i--;
            } else {
                this.a(this.ay, v2f, v3f);
                this.ay = this.ay + 1;

                if (this.ay >= 119) {
                    this.s = true;
                    break;
                }
            }
        }

        if (!this.s) {
            if (this.ay < 119) {
                this.a(this.ay, v4f, v5f);
                this.ay = this.ay + 1;
            } else {
                this.s = true;
            }
        }

        this.t = this.ay;
        return;
    }

    com.corrodinggames.rts.gameFramework.am806 v0Obj = null;
    com.corrodinggames.rts.game.units.en734 v1Obj = this.ap();

    if (v1Obj != null) {
        v0Obj = v1Obj.i;
    }

    if (v0Obj != null && v0Obj.g != null) {
        com.corrodinggames.rts.gameFramework.d925 v1Candidate = null;
        java.util.Iterator v2Iterator = v0Obj.g.iterator();

        while (v2Iterator.hasNext()) {
            com.corrodinggames.rts.gameFramework.d925 v0Candidate = (com.corrodinggames.rts.gameFramework.d925) v2Iterator.next();

            if (v0Candidate.a != null
                    && v0Candidate.a.b() != null
                    && !(com.corrodinggames.rts.gameFramework.f1006.d(v0Candidate.e - p1) > 10.0f)
                    && !(com.corrodinggames.rts.gameFramework.f1006.d(v0Candidate.f - p2) > 10.0f)
                    && v0Candidate.g + 0xb4 >= v6.bu
                    && v0Candidate.h == this.g()) {
                float v3f = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0Candidate.c, v0Candidate.d);

                if (v3f < 3600.0f) {
                    v1Candidate = v0Candidate;
                }
            }
        }

        if (v1Candidate != null) {
            this.aW = v1Candidate.a;
            return;
        }
    }

    int v3Final = p3;
    if (L && p3 > 2) {
        v3Final = 2;
    }

    this.aW = this.a(p1, p2, v3Final, p4, true, p5);
    return;
}
