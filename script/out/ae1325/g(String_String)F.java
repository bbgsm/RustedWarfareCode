public final float g(String p1, String p2) {
    String v0 = this.a(p1, p2, false);
    try {
        return Float.parseFloat(v0);
    } catch (NumberFormatException v1) {
        throw new RuntimeException("Failed to read float:" + v0 + " in key:" + p2 + " section:" + p1);
    }
}
