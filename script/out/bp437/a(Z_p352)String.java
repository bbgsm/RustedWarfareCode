public final strictfp String a(boolean p1, com.corrodinggames.rts.game.p352 p2) {
    com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.units.custom.bx558 v0 = this.q().q();
    if (v0 != null) {
        String s = v0.a(this, this.eq, this.er);
        if (s != null) {
            return s;
        }
    }
    if (this.q().p()) {
        v1.bI.a(this.eq, this.er);
        com.corrodinggames.rts.game.b.i333 v0i = v1.bI.d(v1.bI.U, v1.bI.V);
        if (v0i == null || !v0i.i) {
            return "{2}";
        }
    }
    if (!p1) {
        if (this.a((com.corrodinggames.rts.game.units.ce454) null, p2)) {
            return "{0}";
        }
    }
    if (!this.q().p()) {
        android.graphics.Rect v8 = this.bI();
        android.graphics.Point v0p = this.a(v1.bI, com.corrodinggames.rts.game.units.bp437.bm);
        int v9 = v0p.x;
        int v10 = v0p.y;
        com.corrodinggames.rts.game.units.el732 v1e = this.q();
        com.corrodinggames.rts.game.units.cg456 v2 = v1e.o();
        for (int v3 = v9 + v8.left; v3 <= v9 + v8.right; v3++) {
            for (int v4 = v10 + v8.top; v4 <= v10 + v8.bottom; v4++) {
                String v0s = com.corrodinggames.rts.game.units.d.f655.a(this, v1e, v2, v3, v4, false, p2);
                if (v0s != null) {
                    return v0s;
                }
            }
        }
    }
    return null;
}
