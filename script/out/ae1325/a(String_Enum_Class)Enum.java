public static Enum a(String p0, Enum p1, Class p2) {
    if (p0 == null) {
        return p1;
    }
    String v2 = p0.trim();
    Object[] v3 = p2.getEnumConstants();
    int v4 = v3.length;
    for (int v1 = 0; v1 < v4; v1++) {
        Enum v0 = (Enum) v3[v1];
        if (v0.name().equalsIgnoreCase(v2)) {
            return v0;
        }
    }
    throw com.corrodinggames.rts.gameFramework.utility.ae1325.a(v2, p2);
}
