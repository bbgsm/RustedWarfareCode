public final strictfp boolean a(com.corrodinggames.rts.game.units.en734 p1, boolean p2) {
    boolean v0 = false;
    if (p1 == null) {
        if (p2) {
            com.corrodinggames.rts.gameFramework.k1104.b("isValidNewWaypoint: Skipping null waypoint");
        }
        return v0;
    }
    com.corrodinggames.rts.game.units.eo735 v1 = p1.a;
    if (v1 == com.corrodinggames.rts.game.units.eo735.c) {
        com.corrodinggames.rts.game.units.el732 v1_2 = p1.b;
        if (v1_2 == null) {
            if (p2) {
                com.corrodinggames.rts.gameFramework.k1104.b("isValidNewWaypoint: Skipping build waypoint with no buildType");
            }
            return v0;
        }
        com.corrodinggames.rts.game.units.a.s376 v1_3 = this.a(p1.b, p1.d, false);
        if (v1_3 == null) {
            if (p2) {
                com.corrodinggames.rts.gameFramework.k1104.b("Unit '" + this.q().i() + "' can not queue build:" + p1.b.i());
            }
            return v0;
        }
        if (!p1.n) {
            if (v1_3.g(this)) {
                if (p2) {
                    com.corrodinggames.rts.gameFramework.k1104.b("Builder '" + this.q().i() + "' tried to queue a locked building:" + v1_3.R());
                }
                return v0;
            }
            if (!v1_3.b(this)) {
                if (p2) {
                    com.corrodinggames.rts.gameFramework.k1104.b("Builder '" + this.q().i() + "' tried to queue a unavailable building:" + v1_3.R());
                }
                return v0;
            }
        }
    }
    v0 = true;
    return v0;
}
