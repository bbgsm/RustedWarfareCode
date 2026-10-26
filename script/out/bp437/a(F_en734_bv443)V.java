private strictfp void a(float p1, com.corrodinggames.rts.game.units.en734 p2, com.corrodinggames.rts.game.units.bv443 p3) {
    float v4 = p2.d();
    float v5 = p2.e();
    float v6 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v4, v5);
    if (p2.h == null || !p2.h.bX) {
        this.as();
        p2 = null;
    }
    if (p2 != null) {
        boolean v0;
        if (!p2.h.bq()) {
            float v0f = p2.h.cl + this.cl + 5.0f;
            v0f *= v0f;
            if (v6 < v0f) {
                v0 = true;
            } else {
                v0 = false;
            }
        } else {
            if (v6 >= 961.0f) {
                this.aa += p1;
            }
            if (this.aa > 240.0f) {
                v0 = true;
            } else {
                v0 = false;
            }
            float v3 = 21.0f;
            if (p2.h.bH().isEmpty()) {
                v3 = 11.0f;
            }
            if (this.b > 0.0f) {
                v3 = p2.h.cl + this.cl + 31.0f;
            }
            v3 *= v3;
            if (v6 < v3) {
                v0 = true;
            }
        }
        if (!v0) {
            this.i = true;
            this.j = v4;
            this.k = v5;
            this.l = 0;
            if (p2.h.bq()) {
                android.graphics.Rect v3rect = p2.h.bH();
                int v4i = v3rect.height() / 2;
                int v3i = v3rect.width() / 2;
                int v3l = com.corrodinggames.rts.gameFramework.f1006.c(v4i, v3i);
                v3l += 1;
                this.l = v3l;
            }
            if (this.q > 90.0f) {
                this.q = 90.0f;
            }
            this.p = 18;
            if (v6 >= 48400.0f) {
                p3.d = false;
                if (this.q > 0.0f && this.dd() == null) {
                    this.h = true;
                }
            }
            if (this.af != null && !this.af.by()) {
                p3.d = false;
            }
        }
        if (v0) {
            com.corrodinggames.rts.game.units.ce454 v0obj = p2.h;
            this.a(com.corrodinggames.rts.game.units.custom.af499.i, v0obj);
            this.as();
        }
    }
    return;
}
