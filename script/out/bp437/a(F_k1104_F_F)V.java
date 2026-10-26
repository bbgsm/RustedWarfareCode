private strictfp void a(float p1, com.corrodinggames.rts.gameFramework.k1104 p2, float p3, float p4) {
    com.corrodinggames.rts.game.b.b326 v23 = p2.bI;
    float v24 = v23.r;
    float v25 = v23.s;
    float v3f = this.eq * v24;
    float v4f = this.er * v25;
    float v5f = p3 * v24;
    float v6f = p4 * v25;
    android.graphics.PointF v9 = null;
    boolean v2 = false;
    boolean v16 = false;
    android.graphics.PointF v5Point = null;
    int v7 = com.corrodinggames.rts.gameFramework.f1006.f(v3f);
    int v15 = com.corrodinggames.rts.gameFramework.f1006.f(v4f);
    int v14 = com.corrodinggames.rts.gameFramework.f1006.f(v5f);
    int v8 = com.corrodinggames.rts.gameFramework.f1006.f(v6f);

    if (v7 == v14 && v15 == v8) {
        v2 = false;
        v5Point = null;
    } else if (this.cn != 0.0f) {
        v2 = false;
        v5Point = null;
    } else if (!p2.bR.a(this.g(), v14, v8)) {
        v2 = false;
        v5Point = null;
    } else {
        if (v7 == v14 || v15 == v8) {
            v9 = null;
            v2 = false;
        } else {
            boolean v2b = p2.bR.a(this.g(), v7, v8);
            boolean v11b = p2.bR.a(this.g(), v14, v15);
            if (v2b && v11b) {
                v9 = com.corrodinggames.rts.game.units.bp437.aI;
                v9.set(v3f, v4f);
                v16 = true;
            } else {
                v16 = false;
                v9 = null;
            }
            if (v9 == null && v2b) {
                v9 = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v7, v8);
            }
            if (v9 == null && v11b) {
                v9 = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v14, v15);
                v2 = v16;
            } else {
                v2 = v16;
            }
        }

        if (v9 != null) {
            v5Point = v9;
        } else {
            android.graphics.PointF v5tmp = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v14, v8);
            if (v5tmp != null) {
                v5Point = v5tmp;
            } else {
                com.corrodinggames.rts.game.units.bp437.aI.set(v3f, v4f);
                v5Point = com.corrodinggames.rts.game.units.bp437.aI;
                v2 = true;
            }
        }
    }

    boolean v3Flag = false;
    if (v5Point != null) {
        boolean v4Flag = false;
        boolean v6tmp = p2.bR.a(this.g(), v7, v15);
        if (v6tmp) {
            boolean v6b = p2.bR.b(this.g(), v14, v8);
            if (!v6b) {
                v4Flag = true;
            }
        }
        if (v4Flag) {
            v2 = false;
        } else {
            p3 = v5Point.x * (float) v23.n;
            p4 = v5Point.y * (float) v23.o;
            v3Flag = true;
        }
    }

    if (v3Flag) {
        this.b += p1;
        this.a = 0;
    } else {
        if (this.b != 0.0f && p1 > 0.0f) {
            this.a++;
            if (this.a >= 3) {
                this.b = 0.0f;
            }
        }
    }

    if (!v2) {
        int v2i = com.corrodinggames.rts.gameFramework.f1006.f(p3 * v24);
        int v3i = com.corrodinggames.rts.gameFramework.f1006.f(p4 * v25);
        this.eq = p3;
        this.er = p4;
        if (v7 != v2i || v15 != v3i) {
            this.a(true);
        }
    }
}
