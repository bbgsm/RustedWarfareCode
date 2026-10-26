private strictfp com.corrodinggames.rts.game.units.custom.d.b579 dn() {
    float v5 = 1.0f;
    float v4 = 60.0f;
    com.corrodinggames.rts.game.units.ce454 v2 = this.W();
    if (v2 == null) {
        return null;
    }
    com.corrodinggames.rts.game.units.en734 v0 = this.ap();
    if (v0 == null) {
        return null;
    }
    if (v0.a == com.corrodinggames.rts.game.units.eo735.d && !(v2.co < v5)) {
        com.corrodinggames.rts.game.units.custom.d.b579 v1 = com.corrodinggames.rts.game.units.bp437.a_(v2);
        float v3 = this.t(v2);
        if (v1 != null) {
            float f = v3 * v4;
            f = -f;
            return com.corrodinggames.rts.game.units.custom.d.b579.a(v1, f);
        }
    }
    if (v0.a == com.corrodinggames.rts.game.units.eo735.g) {
        if (!(v2.co < v5)) {
            com.corrodinggames.rts.game.units.custom.d.b579 v0b = com.corrodinggames.rts.game.units.bp437.a_(v2);
            float v1f = this.Y();
            if (v0b == null) {
                return null;
            }
            v1f = v1f * v4;
            return com.corrodinggames.rts.game.units.custom.d.b579.a(v0b, v1f);
        } else {
            if (com.corrodinggames.rts.game.units.bp437.o(v2)) {
                float v3 = this.p(v2);
                com.corrodinggames.rts.game.units.custom.d.b579 v1 = v2.cp();
                com.corrodinggames.rts.game.units.custom.d.b579 v0c = v2.cq();
                if (v0c == null) {
                    v0c = v1;
                }
                float f = v3 * v4;
                f = f / v2.cx;
                return com.corrodinggames.rts.game.units.custom.d.b579.a(v0c, f);
            } else {
                return null;
            }
        }
    }
    return null;
}
