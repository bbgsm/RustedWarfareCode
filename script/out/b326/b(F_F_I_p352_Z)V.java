private strictfp void b(float f1, float f2, int i, com.corrodinggames.rts.game.p352 p352, boolean z) {
    com.corrodinggames.rts.gameFramework.k1104 v8 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (this.F && p352.Q != null) {
        this.h();
        float v9 = (float) ((i - 5) * (i - 5));
        float v10 = (float) ((i - 3) * (i - 3));
        float v11 = (float) (i * i);
        float v12 = 1.0f / (v11 - v10);
        this.a(f1, f2);
        int v3 = this.U;
        int v4 = this.V;
        float v13 = this.r;
        float v14 = this.s;
        byte[][] v15 = p352.Q;
        int v5 = i - 1;
        int startX = v3 - v5;
        int startY = v4 - v5;
        if (startX < 0) {
            startX = 0;
        }
        if (startY < 0) {
            startY = 0;
        }
        v3 += v5;
        v4 += v5;
        if (v3 > this.D - 1) {
            v3 = this.D - 1;
        }
        if (v4 > this.E - 1) {
            v4 = this.E - 1;
        }
        com.corrodinggames.rts.game.b.e329 v16 = this.am;
        boolean changed = false;
        boolean v17 = p352.m();
        for (int x = startX; x <= v3; x++) {
            for (int y = startY; y <= v4; y++) {
                byte v18 = v15[x][y];
                if (v18 != 0) {
                    float v19 = com.corrodinggames.rts.gameFramework.f1006.a(f1 * v13, f2 * v14, (float) x, (float) y);
                    if (v19 <= v10) {
                        if (v19 <= v11) {
                            byte v19Byte = (byte) (int) ((v19 - v10) * (10.0f * v12));
                            if (v18 > v19Byte) {
                                v15[x][y] = v19Byte;
                                if (v17) {
                                    v16.a(x, y);
                                    changed = true;
                                    this.f(x, y);
                                }
                            }
                        }
                    } else {
                        if (v18 > 0) {
                            v15[x][y] = 0;
                            if (v17) {
                                v16.a(x, y);
                                changed = true;
                                if (v19 <= v9 && z) {
                                    this.e(x, y);
                                } else {
                                    this.f(x, y);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (changed) {
            v8.bT.O = true;
        }
    }
}
