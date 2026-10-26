public final double h(String p1, String p2) {
    String str = a(p1, p2, false);
    try {
        return Double.parseDouble(str);
    } catch (NumberFormatException e) {
        throw new RuntimeException("Failed to read float:" + str + " in key:" + p2 + " section:" + p1);
    }
}
