public static void a(com.corrodinggames.rts.gameFramework.m.e1216[] p0) {
    if (p0 == null) {
        return;
    }
    com.corrodinggames.rts.gameFramework.m.e1216 v1 = null;
    for (int v2 = 0; v2 < p0.length; v2++) {
        com.corrodinggames.rts.gameFramework.m.e1216 v0 = p0[v2];
        if (v0 != v1) {
            com.corrodinggames.rts.game.units.custom.ag500.a(v0);
        }
        if (v1 == null) {
            v1 = v0;
        }
    }
}
