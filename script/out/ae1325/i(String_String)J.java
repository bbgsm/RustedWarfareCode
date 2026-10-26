public final long i(String p1, String p2) {
    String v0 = this.a(p1, p2, true);
    if (v0 == null) {
        return 0L;
    }
    try {
        return Long.parseLong(v0);
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p1 + "]" + p2 + ": Failed to read long:" + v0 + " in key:" + p2 + " section:" + p1);
    }
}
