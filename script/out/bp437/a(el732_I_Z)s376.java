public final strictfp com.corrodinggames.rts.game.units.a.s376 a(com.corrodinggames.rts.game.units.el732 p1, int p2, boolean p3) {
    com.corrodinggames.rts.game.units.a.s376 v1 = null;
    java.util.ArrayList v0 = N();
    if (v0.size() > 0) {
        java.util.Iterator v4 = v0.iterator();
        while (v4.hasNext()) {
            com.corrodinggames.rts.game.units.a.s376 v0Element = (com.corrodinggames.rts.game.units.a.s376) v4.next();
            com.corrodinggames.rts.game.units.el732 v3 = v0Element.y();
            com.corrodinggames.rts.game.units.el732 v2;
            if (p3) {
                v2 = v0Element.G();
                if (v2 == null) {
                    v2 = v3;
                }
            } else {
                v2 = v3;
            }
            if (v2 == p1 && (p2 == -1 || p2 == v0Element.u())) {
                if (v0Element.b(this) && v0Element.a(this, false)) {
                    return v0Element;
                }
                v1 = v0Element;
            }
        }
    }
    return v1;
}
