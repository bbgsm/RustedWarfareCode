public strictfp android.graphics.Paint aA() {
    int v8 = 70;
    int v7 = 50;
    int v6 = 100;
    int v5 = 20;
    int v4 = 255;
    android.graphics.ColorFilter v0 = null;
    int v1;

    if (this.es < -0.3f) {
        v1 = android.graphics.Color.argb(bp437.k(this.es), v4, v4, v4);
    } else {
        v1 = -1;
    }

    if (this.co < 1.0f && this.co < this.az()) {
        float f = this.co;
        f = f / this.az();
        f = f * 220.0f + 20.0f;
        int alpha = (int) f;
        v1 = android.graphics.Color.argb(alpha, 140, 255, 140);
        v0 = bp437.aZ;
    }

    if (this.cr) {
        if (this.cu) {
            v1 = android.graphics.Color.argb(200, v5, v4, v5);
            v0 = bp437.ba;
        }

        if (this.cv) {
            v1 = android.graphics.Color.argb(200, v4, v5, v5);
            v0 = bp437.bb;
        }

        if (this.cs) {
            v1 = android.graphics.Color.argb(v7, v8, v8, 245);
            v0 = bp437.bc;

            if (this.cv) {
                v1 = android.graphics.Color.argb(v7, v4, v5, v5);
                v0 = bp437.bb;
            }
        }

        if (this.ct) {
            v1 = android.graphics.Color.argb(150, v6, v6, v6);
        }
    }

    boolean v2 = this.di();
    return this.a(v1, v0, v2);
}
