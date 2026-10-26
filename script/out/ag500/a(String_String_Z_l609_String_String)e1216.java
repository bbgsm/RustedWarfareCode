public static com.corrodinggames.rts.gameFramework.m.e1216 a(String p0, String p1, boolean p2, com.corrodinggames.rts.game.units.custom.l609 p3, String p4, String p5) {
    try {
        long v0 = com.corrodinggames.rts.gameFramework.cf910.a();
        com.corrodinggames.rts.gameFramework.m.e1216 v2 = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3);
        com.corrodinggames.rts.game.units.custom.ag500.a(v0, com.corrodinggames.rts.game.units.custom.ah501.b);
        return v2;
    } catch (RuntimeException v0) {
        v0.printStackTrace();
        throw new RuntimeException("[" + p4 + "]" + p5 + ": " + v0.getMessage(), v0);
    }
}
