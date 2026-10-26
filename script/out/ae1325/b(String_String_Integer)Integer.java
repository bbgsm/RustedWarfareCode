public final Integer b(String p1, String p2, Integer p3) {
    String v0 = this.a(p1, p2, true);
    if (v0 == null) {
        return p3;
    }
    try {
        int v0int = Integer.parseInt(v0);
        p3 = Integer.valueOf(v0int);
        return p3;
    } catch (NumberFormatException v1) {
        throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static integer: " + v0);
    }
}
