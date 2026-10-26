private static com.corrodinggames.rts.game.units.custom.l609 a(com.corrodinggames.rts.game.units.custom.l609 p0) {
    String v3 = p0.D;
    com.corrodinggames.rts.gameFramework.k1104 v4 = com.corrodinggames.rts.gameFramework.k1104.t();
    String v0 = null;
    if (p0.J != null) {
        v0 = p0.J.P;
    }
    synchronized (com.corrodinggames.rts.game.units.custom.ag500.n) {
        com.corrodinggames.rts.game.units.custom.ag500.n.clear();
    }
    com.corrodinggames.rts.game.units.custom.ag500.s = null;
    com.corrodinggames.rts.game.units.custom.l609 v1 = null;
    try {
        v1 = com.corrodinggames.rts.game.units.custom.ag500.a(v3, p0.J, p0.K, p0.L);
    } catch (RuntimeException e) {
        e.printStackTrace();
        if (com.corrodinggames.rts.game.units.custom.ag500.s == null) {
            v4.g("Error loading unit:" + com.corrodinggames.rts.game.units.custom.ag500.a(p0.J, v3) + "\n" + e.getMessage());
        }
    }
    if (v1 == null && p0.J != null) {
        p0.J.P = v0;
    }
    if (v1 != null) {
        synchronized (com.corrodinggames.rts.game.units.custom.l609.c) {
            com.corrodinggames.rts.game.units.custom.l609.c.remove(p0);
        }
        com.corrodinggames.rts.game.units.custom.ag500.a(p0, v1);
        boolean removed = com.corrodinggames.rts.game.units.custom.l609.d.remove(p0);
        if (removed) {
            com.corrodinggames.rts.game.units.custom.l609.d.add(v1);
            if (p0.H != v1.H) {
                com.corrodinggames.rts.game.units.custom.ag500.d++;
            }
        } else {
            com.corrodinggames.rts.gameFramework.k1104.d("Changed unit was not enabled (original not found in customUnitTypes)");
        }
        com.corrodinggames.rts.game.p352.F();
        com.corrodinggames.rts.gameFramework.f.i988.n();
    }
    return v1;
}
