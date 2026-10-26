public final strictfp float a(float p1, float p2, int p3) {
    com.corrodinggames.rts.game.units.ch457 v6 = this.cN[p3];
    float v0 = com.corrodinggames.rts.gameFramework.f1006.c(v6.a, p2, 360.0f);
    if (v0 == 0.0f) {
        return v0;
    }
    float v7 = r(p3);
    if (v7 <= 0.0f) {
        float v1 = com.corrodinggames.rts.gameFramework.f1006.c(v6.a, p2, c(p3) * p1);
        a(p3, v1);
        v0 -= v1;
        return v0;
    }
    float v8 = t(p3);
    float v1;
    if (v0 > 0.0f) {
        v1 = 1.0f;
    } else {
        v1 = -1.0f;
    }
    float v9 = com.corrodinggames.rts.gameFramework.f1006.d(v6.c) / v8;
    boolean v2 = v0 > 0.0f;
    boolean v5 = v6.c > 0.0f;
    boolean v3 = v2 == v5;
    if (com.corrodinggames.rts.gameFramework.f1006.d(v0) < v9 && v3) {
        v6.c = com.corrodinggames.rts.gameFramework.f1006.a(v6.c, v1 * v8, v8 * p1);
    } else {
        v6.c = com.corrodinggames.rts.gameFramework.f1006.a(v6.c, v1 * c(p3), v7 * p1);
    }
    float v1_2 = v6.c * p1;
    if (com.corrodinggames.rts.gameFramework.f1006.d(v1_2) > com.corrodinggames.rts.gameFramework.f1006.d(v0)) {
        v6.c = 0.0f;
        v1_2 = v0;
    }
    a(p3, v1_2);
    v0 -= v1_2;
    return v0;
}
