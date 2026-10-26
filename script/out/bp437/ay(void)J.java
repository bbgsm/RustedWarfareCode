public final strictfp long ay() {
    long v2 = 0L;
    int v0 = 0;
    while (v0 < this.ay) {
        bx445 v1 = this.ax[v0];
        if (v1 != null) {
            int v4 = Float.floatToRawIntBits(v1.a);
            v2 += (long) v4;
            int v1Bits = Float.floatToRawIntBits(v1.b);
            v2 += (long) v1Bits;
        }
        v0++;
    }
    return v2;
}
