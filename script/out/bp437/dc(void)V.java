private strictfp void dc() {
    boolean v2 = true;
    boolean v3 = false;

    if (this.ai == 0) {
        return;
    }

    com.corrodinggames.rts.game.units.en734 v7 = this.M();
    com.corrodinggames.rts.game.units.ce454[] v8 = com.corrodinggames.rts.game.units.ce454.bG.c;
    int v9 = com.corrodinggames.rts.game.units.ce454.bG.size();
    int v6 = 0;

    while (v6 < v9) {
        com.corrodinggames.rts.game.units.ce454 v0 = v8[v6];
        if (v0 instanceof com.corrodinggames.rts.game.units.bp437) {
            com.corrodinggames.rts.game.units.bp437 v0bp = (com.corrodinggames.rts.game.units.bp437) v0;
            if (v0bp.af == this) {
                float v1 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0bp.eq, v0bp.er);
                boolean v1b = v1 < 108900.0f;
                com.corrodinggames.rts.game.units.en734 v4 = v0bp.M();
                boolean v4b;
                boolean v5b;

                if (v7 != null && v4 != null) {
                    if (v7.b(v4)) {
                        v4b = v2;
                        v5b = v3;
                    } else {
                        v4b = v3;
                        v5b = v3;
                    }
                } else {
                    if (v7 == null && v4 == null) {
                        v4b = v3;
                        v5b = v2;
                    } else {
                        v4b = v3;
                        v5b = v3;
                    }
                }

                if (v4b && v1b) {
                    v0bp.as();
                } else {
                    if (!v5b) {
                        v0bp.a((com.corrodinggames.rts.game.units.bp437) null);
                    }
                }
            }
        }
        v6++;
    }
}
