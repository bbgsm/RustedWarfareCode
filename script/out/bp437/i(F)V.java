public strictfp void i(float p1) {
    this.ci += p1;
    if (this.ci > 180.0f) {
        this.ci -= 360.0f;
    }
    if (this.ci < -180.0f) {
        this.ci += 360.0f;
    }
    if (this.aV()) {
        int v1 = this.aU();
        for (int v0 = 0; v0 < v1; v0++) {
            com.corrodinggames.rts.game.units.ch457 v2 = this.cN[v0];
            v2.a += p1;
            if (v2.a > 180.0f) {
                v2.a -= 360.0f;
            }
            if (v2.a < -180.0f) {
                v2.a += 360.0f;
            }
        }
    }
}
