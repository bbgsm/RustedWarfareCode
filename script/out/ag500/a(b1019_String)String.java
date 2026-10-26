private static String a(com.corrodinggames.rts.gameFramework.i.b1019 p0, String p1) {
    if (p0 != null) {
        String v0 = p0.o;
        String v1 = com.corrodinggames.rts.gameFramework.e.a926.q(v0);
        v0 = com.corrodinggames.rts.gameFramework.e.a926.q(p1);
        if (v0.startsWith(v1)) {
            v0 = v0.substring(v1.length());
            if (v0.startsWith("/")) {
                v0 = v0.substring(1);
            }
            if (v0.startsWith("\\")) {
                v0 = v0.substring(1);
            }
        }
        p1 = v0 + " (in mod " + p0.a() + ")";
    }
    return p1;
}
