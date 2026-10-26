public final aj503 a(l609 p1, String p2, String p3, String p4) {
    bu555 v1 = this.a(p2, p3, p4, true);
    if (v1 == null) {
        return null;
    }
    try {
        return new aj503(p1, v1);
    } catch (RuntimeException e) {
        e.printStackTrace();
        throw new ch575("[" + p2 + "]" + p3 + ": " + e.getMessage());
    }
}
