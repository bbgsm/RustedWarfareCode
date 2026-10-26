private Float a(String p1, String p2, Float p3, boolean p4) {
    String s = a(p1, p2, true);
    if (s == null) {
        return p3;
    }
    try {
        p3 = Float.valueOf(a(s, p4, p1, p2));
        return p3;
    } catch (NumberFormatException e) {
        throw new RuntimeException("Failed to read time:" + s + " in key:" + p2 + " section:" + p1 + " expected a float with optional 's' or 'ms' postfix");
    }
}
