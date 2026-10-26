public final Enum a(String p1, String p2, Enum p3, Class p4) {
    String v0 = this.a(p1, p2, null);
    try {
        return com.corrodinggames.rts.gameFramework.utility.ae1325.a(v0, p3, p4);
    } catch (com.corrodinggames.rts.game.units.custom.ch575 e) {
        throw new RuntimeException("[" + p1 + "]" + p2 + ": " + e.getMessage(), e);
    }
}
