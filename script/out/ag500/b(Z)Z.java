public static boolean b(boolean p0) {
    java.util.ArrayList v2 = com.corrodinggames.rts.game.units.custom.l609.d;
    java.util.ArrayList v0;
    if (p0) {
        v0 = com.corrodinggames.rts.game.units.custom.ag500.c(true);
    } else {
        v0 = com.corrodinggames.rts.game.units.custom.l609.d;
    }
    com.corrodinggames.rts.game.units.custom.ag500.s = null;
    com.corrodinggames.rts.game.units.custom.l609.d = v0;
    com.corrodinggames.rts.game.units.custom.ag500.l();
    boolean result = (com.corrodinggames.rts.game.units.custom.ag500.s == null);
    com.corrodinggames.rts.game.units.custom.l609.d = v2;
    com.corrodinggames.rts.game.units.custom.ag500.l();
    return result;
}
