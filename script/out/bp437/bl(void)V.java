public final strictfp void bl() {
    com.corrodinggames.rts.game.units.custom.d.b579 v0 = this.dn();
    com.corrodinggames.rts.game.units.custom.d.b579 v1 = this.bm();

    if (v0 == null) {
        v0 = v1;
    } else if (v1 != null) {
        v0 = com.corrodinggames.rts.game.units.custom.d.b579.a(v0, v1);
    }

    v1 = this.dL;
    if (v1 == null && v0 == null) {
        return;
    }

    v1 = this.dL;
    if (v1 != null && v0 != null) {
        if (this.dL.b(v0)) {
            return;
        }
    }

    com.corrodinggames.rts.game.p352.b((com.corrodinggames.rts.game.units.ce454) this);
    this.dL = v0;
    com.corrodinggames.rts.game.p352.c((com.corrodinggames.rts.game.units.ce454) this);
}
