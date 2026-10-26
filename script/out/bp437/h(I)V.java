public strictfp void H(int p1) {
    float v2 = 0.0f;
    int v0 = -1;
    if (p1 == v0) {
        int v1 = this.aU();
        v0 = 0;
        while (v0 < v1) {
            this.H(v0);
            v0 = v0 + 1;
        }
    } else {
        com.corrodinggames.rts.game.units.ch457 v0Obj = this.cN[p1];
        v0Obj.h = v2;
        v0Obj.i = v2;
        if (this.T != null) {
            float v1 = this.G(p1);
            if (v1 != v2) {
                v1 = this.T.cl;
                v2 = this.G(p1);
                v1 = v1 * v2;
                v0Obj.h = v0Obj.h + (float) com.corrodinggames.rts.gameFramework.f1006.a((com.corrodinggames.rts.gameFramework.ah801) this, (int) (-v1), (int) v1, p1 + 1);
                v0Obj.i = v0Obj.i + (float) com.corrodinggames.rts.gameFramework.f1006.a((com.corrodinggames.rts.gameFramework.ah801) this, (int) (-v1), (int) v1, p1 + 2);
            }
        }
    }
}
