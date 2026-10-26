public final strictfp void aw() {
    int v3 = 0;
    if (this.ai == 0) {
        return;
    }
    com.corrodinggames.rts.game.units.ce454[] v5 = com.corrodinggames.rts.game.units.ce454.bG.c;
    int v6 = com.corrodinggames.rts.game.units.ce454.bG.size();
    int v2 = v3;
    com.corrodinggames.rts.game.units.bp437 v1 = null;
    while (v2 < v6) {
        com.corrodinggames.rts.game.units.ce454 v0 = v5[v2];
        com.corrodinggames.rts.game.units.bp437 v0bp;
        if (v0 instanceof com.corrodinggames.rts.game.units.bp437) {
            com.corrodinggames.rts.game.units.bp437 cast = (com.corrodinggames.rts.game.units.bp437) v0;
            if (cast.af == this) {
                cast.a((com.corrodinggames.rts.game.units.bp437) null);
                v0bp = cast;
            } else {
                v0bp = v1;
            }
        } else {
            v0bp = v1;
        }
        v2++;
        v1 = v0bp;
    }
    if (this.ai != 0) {
        this.ai = v3;
    }
    if (v1 != null) {
        com.corrodinggames.rts.game.units.en734 v0 = v1.ap();
        if (v0 != null) {
            com.corrodinggames.rts.gameFramework.am806 v0a = v0.i;
            if (v0a != null) {
                v0a.b();
            }
        }
    }
    return;
}
