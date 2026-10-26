public final strictfp boolean a(com.corrodinggames.rts.game.units.ce454 p1, com.corrodinggames.rts.game.p352 p2) {
    boolean v0 = false;
    boolean bqResult = this.bq();
    if (!bqResult) {
        v0 = true;
    }

    float v1 = this.cl + com.corrodinggames.rts.game.units.custom.ag500.p;
    float v2 = 10.0f + v1;

    float v3 = this.eq;
    float v4 = this.eq;
    float v5 = this.er;
    float v6 = this.er;

    com.corrodinggames.rts.game.units.ce454[] v7 = com.corrodinggames.rts.game.units.ce454.bG.c;
    int i = 0;
    int v8 = com.corrodinggames.rts.game.units.ce454.bG.size();

    while (i < v8) {
        com.corrodinggames.rts.game.units.ce454 v9 = v7[i];
        float v10 = v9.eq;
        float v11 = v9.er;

        if ((v3 - v2) <= v10
                && v10 <= (v4 + v2)
                && (v5 - v2) <= v11
                && v11 <= (v6 + v2)
                && v9 != this) {
            if (v0 || v9.bq()) {
                if (v9.bX
                        && this.k(v9)
                        && v9 != p1
                        && (p2 == null || v9.d(p2))) {
                    v0 = true;
                    return v0;
                }
            }
        }

        i++;
    }

    v0 = false;
    return v0;
}
