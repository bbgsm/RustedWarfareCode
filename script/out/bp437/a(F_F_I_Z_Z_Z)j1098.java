public final strictfp com.corrodinggames.rts.gameFramework.k.j1098 a(float p1, float p2, int p3, boolean p4, boolean p5, boolean p6) {
    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.gameFramework.k.k1099 v7 = v6.bR;
    com.corrodinggames.rts.game.b.b326 v8 = v6.bI;
    com.corrodinggames.rts.gameFramework.k.j1098 v0 = v7.a(p5);
    v8.a(this.eq, this.er);
    boolean v5 = false;
    if (this.dl() || this.ck) {
        v5 = true;
    }
    v0.a(this.g(), (short) v8.U, (short) v8.V, Float.valueOf(this.ci), v5);
    v8.a(p1, p2);
    v0.a((short) v8.U, (short) v8.V, (short) p3);
    v0.p = p4;
    v0.q = this.aR();
    v0.r = p6;
    boolean v2 = this.cM;
    this.cM = true;
    if (p5 && v0.c()) {
        java.util.Iterator v3 = com.corrodinggames.rts.game.units.bp437.aX.iterator();
        while (v3.hasNext()) {
            com.corrodinggames.rts.gameFramework.k.j1098 v1 = (com.corrodinggames.rts.gameFramework.k.j1098) v3.next();
            int v4 = v1.g + 0x3c;
            int v5i = v6.bu;
            if (v4 < v5i) {
                v3.remove();
                continue;
            }
            if (v1.a(v0)) {
                return v1;
            }
        }
    }
    v7.a(v0, p5);
    this.cM = v2;
    if (p5 && v0.c()) {
        com.corrodinggames.rts.game.units.bp437.aX.add(v0);
    }
    return v0;
}
