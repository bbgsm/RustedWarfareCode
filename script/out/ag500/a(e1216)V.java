private static void a(com.corrodinggames.rts.gameFramework.m.e1216 p0) {
    if (p0 == null || p0.v) {
        return;
    }
    if (com.corrodinggames.rts.gameFramework.k1104.ad() && p0 instanceof com.corrodinggames.rts.gameFramework.m.f1243) {
        return;
    }
    p0.v = true;
    int l = p0.l();
    com.corrodinggames.rts.gameFramework.i.b1019 e = com.corrodinggames.rts.game.units.custom.ag500.e;
    if (e != null) {
        e.E += l;
    }
}
