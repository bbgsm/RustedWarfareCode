public final strictfp com.corrodinggames.rts.game.b.l336 a(int p1) {
    int v1 = 0;
    while (v1 < this.t.size()) {
        com.corrodinggames.rts.game.b.l336 v0 = (com.corrodinggames.rts.game.b.l336) this.t.get(v1);
        boolean v3;
        if (p1 >= v0.l && p1 <= v0.m) {
            v3 = true;
        } else {
            v3 = false;
        }
        if (v3) {
            return v0;
        }
        v1++;
    }
    return null;
}
