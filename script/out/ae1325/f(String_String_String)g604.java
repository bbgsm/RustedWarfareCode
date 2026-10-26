public static g604 f(String p0, String p1, String p2) {
    String v0 = p2.trim();
    if (v0.contains(",")) {
        throw new ch575("[" + p0 + "]" + p1 + ": Unexpected single tag, got:'" + v0 + "'");
    }
    if (v0.contains("\"")) {
        throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain quote, got:'" + v0 + "'");
    }
    if (v0.contains("'")) {
        throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain quote, got:'" + v0 + "'");
    }
    if (v0.contains(" ")) {
        throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain space, got:'" + v0 + "'");
    }
    return g604.c(v0);
}
