private static boolean a(int p0, com.corrodinggames.rts.game.units.ce454 p1) {
    if (!(p1 instanceof com.corrodinggames.rts.game.units.bp437)) {
        return false;
    }
    if (p1.bX) {
        return false;
    }
    if (p1.cw()) {
        return false;
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.a) {
        return false;
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.b) {
        return true;
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.c) {
        return p1.bq();
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.e) {
        if (!(p1 instanceof com.corrodinggames.rts.game.units.d.g656) && !p1.bR) {
            return false;
        }
        return true;
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.d) {
        if (p1.bq() && p1.br() && !(p1 instanceof com.corrodinggames.rts.game.units.d.a.c631) && !(p1 instanceof com.corrodinggames.rts.game.units.d.j659)) {
            return true;
        }
        return false;
    }
    if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.f) {
        if (p1.br()) {
            return true;
        }
        if (p1.ai()) {
            return true;
        }
        return false;
    }
    return false;
}
