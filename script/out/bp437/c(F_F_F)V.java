private strictfp void c(float p1, float p2, float p3) {
    float v7 = 600.0f;
    float v6 = 180.0f;

    float v0 = this.as;
    float v1 = -900.0f;
    if (v0 < v1) {
        v0 = this.eq;
        v1 = this.er;
        v0 = com.corrodinggames.rts.gameFramework.f1006.d(v0, v1, p2, p3);
        this.as = v0;
    }

    v0 = 10000.0f;
    if (p1 < v0) {
        if (this.bC()) {
            this.at = true;
        }
    }

    if (this.at) {
        double d0 = (double) this.cD;
        double d2 = (double) this.aN();
        double d4 = 0.6D;
        d2 *= d4;
        if (!(d0 < d2)) {
            this.j += com.corrodinggames.rts.gameFramework.f1006.k(this.as + v6) * v7;
            this.k += com.corrodinggames.rts.gameFramework.f1006.j(this.as + v6) * v7;
        } else {
            v0 = 40000.0f;
            if (p1 < v0) {
                this.at = false;
                this.as = -999.0f;
                this.ax();
            } else {
                v0 = this.cD;
                v1 = this.aN();
                if (v0 < v1) {
                    this.at = false;
                    this.as = -999.0f;
                    this.ax();
                } else {
                    this.j += com.corrodinggames.rts.gameFramework.f1006.k(this.as + v6) * v7;
                    this.k += com.corrodinggames.rts.gameFramework.f1006.j(this.as + v6) * v7;
                }
            }
        }
    }
    return;
}
