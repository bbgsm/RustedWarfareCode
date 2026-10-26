public final strictfp void b(com.corrodinggames.rts.game.units.bp437 p1) {
    if (p1 != null) {
        this.p++;
        if (this.p <= 50) {
            this.o = true;
            return;
        }
    }
    com.corrodinggames.rts.gameFramework.k1104.M();
    this.e = new byte[this.b * this.c];
    byte[] v4 = this.e;
    if (!this.a.equals(com.corrodinggames.rts.game.units.cg456.d)) {
        return;
    }
    com.corrodinggames.rts.game.b.b326 v5 = this.q.q;
    com.corrodinggames.rts.game.units.ce454[] v6 = com.corrodinggames.rts.game.units.ce454.bG.c;
    int v7 = com.corrodinggames.rts.game.units.ce454.bG.size();
    for (int v3 = 0; v3 < v7; v3++) {
        com.corrodinggames.rts.game.units.ce454 v0 = v6[v3];
        if (!v0.bq() || !v0.bX) {
            continue;
        }
        android.graphics.Point point = v0.a(v5, this.n);
        int v8 = point.x;
        int v9 = point.y;
        android.graphics.Rect rect;
        if (this.a.equals(com.corrodinggames.rts.game.units.cg456.c)) {
            rect = v0.bI();
        } else {
            rect = v0.bH();
        }
        for (int x = rect.left + v8; x <= rect.right + v8; x++) {
            for (int y = rect.top + v9; y <= rect.bottom + v9; y++) {
                if (v5.c(x, y)) {
                    v4[this.c * x + y] = (byte) -1;
                }
            }
        }
    }
}
