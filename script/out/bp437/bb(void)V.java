public final strictfp void bb() {
    com.corrodinggames.rts.gameFramework.k1104 v5 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.units.el732 v6 = this.q();
    if (!v6.p()) {
        android.graphics.Rect rect = this.bI();
        android.graphics.Point point = this.a(v5.bI, com.corrodinggames.rts.game.units.bp437.bn);
        int x = point.x;
        int y = point.y;
        this.q();
        int left = rect.left;
        int top = rect.top;
        int right = rect.right;
        int bottom = rect.bottom;
        com.corrodinggames.rts.game.b.b326 b326a = v5.bI;
        int ct = (int) v5.ct;
        int cu = (int) v5.cu;
        com.corrodinggames.rts.gameFramework.m.fi1252 fi = v5.bL;
        com.corrodinggames.rts.gameFramework.k1104 v5b = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.b.b326 b326b = v5b.bI;
        com.corrodinggames.rts.game.units.el732 el = v5b.bP.ac.h();
        com.corrodinggames.rts.game.units.cg456 cg = el.o();
        int i = left + x;
        while (i <= x + right) {
            int j = top + y;
            while (j <= bottom + y) {
                boolean b = com.corrodinggames.rts.game.units.d.f655.a(this, el, cg, i, j);
                int rLeft = b326b.n * i - ct;
                int rTop = b326b.o * j - cu;
                android.graphics.Rect r = b326a.ao;
                int rRight = b326b.n + rLeft - 1;
                int rBottom = b326b.o + rTop - 1;
                r.set(rLeft, rTop, rRight, rBottom);
                if (b) {
                    fi.b(b326a.ao, b326b.ae);
                } else {
                    fi.b(b326a.ao, b326b.ag);
                    fi.b(b326a.ao, b326b.af);
                }
                j++;
            }
            i++;
        }
    }
}
