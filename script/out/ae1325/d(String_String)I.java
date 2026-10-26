public final int d(String p1, String p2) {
    String v0 = this.a(p1, p2, false);
    try {
        return Integer.parseInt(v0);
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static integer: " + v0);
    }
}
