public final double a(String p1, String p2, double p3) {
    String string = this.a(p1, p2, true);
    if (string == null) {
        return p3;
    }
    try {
        p3 = Double.parseDouble(string);
        return p3;
    } catch (NumberFormatException e) {
        throw new RuntimeException("Failed to read float:" + string + " in key:" + p2 + " section:" + p1);
    }
}
