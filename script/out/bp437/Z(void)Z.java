public final strictfp boolean Z() {
    boolean v0 = false;
    ce454 v1 = this.T;
    if (v1 != null && !v1.bX) {
        int v2 = this.aU();
        for (int i = 0; i < v2; i++) {
            ce454 v3 = this.cN[i].j;
            if (v3 != null && this.m(i)) {
                v0 = true;
                return v0;
            }
        }
    }
    return v0;
}
