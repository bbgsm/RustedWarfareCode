private static RuntimeException a(String p0, Class p1) {
    String v1 = "";
    Object[] v3 = p1.getEnumConstants();
    int v4 = v3.length;
    int v2 = 0;
    while (v2 < v4) {
        Enum v0 = (Enum) v3[v2];
        if (!v1.equals("")) {
            v1 = v1 + ",";
        }
        v1 = v1 + v0.name();
        v2++;
    }
    String message = "Unknown value: " + p0 + " (Expected: " + com.corrodinggames.rts.gameFramework.f1006.b(v1, 100) + ")";
    throw new com.corrodinggames.rts.game.units.custom.ch575(message);
}
