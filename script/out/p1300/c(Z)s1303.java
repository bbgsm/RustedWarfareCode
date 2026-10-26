private s1303 c(boolean p1) {
    s1303 v5 = new s1303(this);
    v5.a = false;
    int v0 = this.v;
    cj459 v1 = null;
    if (this.p) {
        v1 = cj459.t;
    } else {
        if (this.u == 0) {
            v0 = v0 + 1;
            v1 = cj459.i;
        }
        if (this.u == 1) {
            v1 = cj459.j;
        }
        if (this.u == 2) {
            v1 = cj459.l;
        }
        if (this.u == 3) {
            v0 = this.w;
            v1 = cj459.w;
        }
        if (this.u == 4) {
            v0 = this.w;
            v1 = cj459.x;
            if (this.w % 2 == 0) {
                v1 = cj459.n;
            }
        }
        if (this.u == 5) {
            v5.a = true;
            v1 = cj459.F;
            v0 = 1;
        }
        if (p1) {
            this.u = this.u + 1;
            boolean v3 = true;
            if (this.w == 1) {
                if (this.u > 2) {
                    v3 = false;
                }
            } else if (this.w < 5) {
                if (this.u <= 4) {
                    v3 = false;
                }
            } else {
                boolean v2 = this.u <= 5;
                if (this.u > 4 || this.w % 2 != 0) {
                    v3 = v2;
                }
            }
            if (v3) {
                this.u = 0;
                this.v = this.v + 2;
                this.w = this.w + 1;
            }
        }
    }
    v5.a(v1, v0);
    return v5;
}
