private String g(String p1, String p2, String p3) {
    String v0 = this.a(p1, p2, null);
    String v1 = this.a(p1, p3, null);
    if (v0 != null && v1 != null) {
        throw new RuntimeException("[" + p1 + "]Cannot set " + p2 + " and " + p3 + " at the same time");
    }
    if (v0 != null) {
        return v0;
    }
    if (v1 != null) {
        return v1;
    }
    return null;
}
