private static com.corrodinggames.rts.gameFramework.m.e1216 b(String p0) {
    com.corrodinggames.rts.gameFramework.m.e1216 v0 = (com.corrodinggames.rts.gameFramework.m.e1216) com.corrodinggames.rts.game.units.custom.ag500.g.get(p0);
    if (v0 != null) {
        com.corrodinggames.rts.game.units.custom.ag500.j = com.corrodinggames.rts.game.units.custom.ag500.j + 1;
        com.corrodinggames.rts.game.units.custom.ag500.a(v0);
        return v0;
    }
    if (com.corrodinggames.rts.game.units.custom.ag500.k) {
        com.corrodinggames.rts.gameFramework.k1104.d("loadImageInConf: cache miss: " + String.valueOf(p0));
    }
    com.corrodinggames.rts.game.units.custom.ag500.i = com.corrodinggames.rts.game.units.custom.ag500.i + 1;
    return null;
}
