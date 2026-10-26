public final Float a(String p1, String p2, Float p3) {
    String v0 = this.a(p1, p2, true);
    if (v0 == null) {
        return p3;
    }
    try {
        return Float.valueOf(Float.parseFloat(v0));
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static float: " + v0);
    }
}
