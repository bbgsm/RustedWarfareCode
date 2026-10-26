public final Boolean a(String p1, String p2, String p3, Boolean p4) {
    String v0 = this.g(p1, p2, p3);
    if (v0 == null) {
        return p4;
    }
    if ("true".equalsIgnoreCase(v0)) {
        return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(v0)) {
        return Boolean.FALSE;
    }
    if ("1".equalsIgnoreCase(v0)) {
        return Boolean.TRUE;
    }
    if ("0".equalsIgnoreCase(v0)) {
        return Boolean.FALSE;
    }
    throw new RuntimeException(p2 + ": unexpected boolean value:'" + v0 + "' in section:" + p1);
}
