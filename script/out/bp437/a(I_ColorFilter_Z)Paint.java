public final strictfp android.graphics.Paint a(int p1, android.graphics.ColorFilter p2, boolean p3) {
    int v1 = -1;
    if (p1 == -1 && p2 == null) {
        if (p3) {
            return bp437.C;
        }
        return bp437.B;
    }
    android.graphics.Paint v0;
    if (this.cr) {
        if (p2 == null) {
            v0 = bp437.z;
            v1 = bp437.A;
            bp437.A = p1;
        } else {
            v0 = bp437.z;
            if (p2 == bp437.bb) {
                v0 = bp437.be;
            }
            if (p2 == bp437.ba) {
                v0 = bp437.bd;
            }
            if (p2 == bp437.bc) {
                v0 = bp437.bf;
            }
        }
    } else {
        if (p3) {
            if (this.x == null) {
                this.x = bp437.d(true);
            }
            v0 = this.x;
            v1 = this.y;
            this.y = p1;
        } else {
            if (this.v == null) {
                this.v = bp437.d(false);
            }
            v0 = this.v;
            v1 = this.w;
            this.w = p1;
        }
    }
    if (v1 != p1) {
        v0.setColor(p1);
    }
    if (v0.getColorFilter() != p2) {
        v0.setColorFilter(p2);
    }
    return v0;
}
