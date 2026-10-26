private strictfp void d(float f) {
    this.bP.b(f);
    if (this.cb != null) {
        this.cb.a(f);
    }
    this.bT.b(f);
    if (this.ce) {
        this.bL.a("Look Mode", this.cl, this.cm, this.dm);
    }
    if (this.bj) {
        int v2 = 20;
        for (int v1 = 0; v1 < com.corrodinggames.rts.game.p352.c; v1++) {
            com.corrodinggames.rts.game.p352 v0 = com.corrodinggames.rts.game.p352.i(v1);
            if (v0 != null && v0 instanceof com.corrodinggames.rts.game.a.a296) {
                com.corrodinggames.rts.game.a.a296 a296Instance = (com.corrodinggames.rts.game.a.a296) v0;
                String str = new StringBuilder()
                    .append(a296Instance.l)
                    .append("| c:")
                    .append(a296Instance.p)
                    .toString();
                this.bL.a(str, 20.0f, (float) v2, this.dk);
                v2 += 20;
            }
        }
    }
}
