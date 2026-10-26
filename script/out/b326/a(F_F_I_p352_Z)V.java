public final strictfp void a(float p1, float p2, int p3, com.corrodinggames.rts.game.p352 p4, boolean p5) {
    int v2 = 0;
    com.corrodinggames.rts.gameFramework.k1104 v3 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (this.F) {
        long v6;
        if (a) {
            v6 = com.corrodinggames.rts.gameFramework.cf910.a();
        } else {
            v6 = 0L;
        }
        boolean v0 = true;
        boolean v9 = p4.H;
        boolean v1 = v3.ac();
        if (!v1) {
            com.corrodinggames.rts.gameFramework.n.p1300 v1_obj = v3.cb;
            if (v1_obj != null) {
                boolean v3_bool = v1_obj.n;
                if (!v3_bool) {
                    boolean v1_bool = v1_obj.o;
                    if (!v1_bool) {
                        v0 = false;
                    }
                }
            }
        }
        if (!v0) {
            this.b(p1, p2, p3, p4, p5);
        } else {
            int v8 = v2;
            while (v8 < com.corrodinggames.rts.game.p352.c) {
                com.corrodinggames.rts.game.p352 v4 = com.corrodinggames.rts.game.p352.i(v8);
                if (v4 != null) {
                    if (v4 != p4 || (!v4.x && (v4.c(p4) || v9))) {
                        this.b(p1, p2, p3, v4, p5);
                    }
                }
                v8++;
            }
        }
        if (a) {
            this.aq += (com.corrodinggames.rts.gameFramework.cf910.a() - v6);
        }
    }
}
