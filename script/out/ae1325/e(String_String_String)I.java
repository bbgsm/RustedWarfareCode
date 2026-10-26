public static int e(String p0, String p1, String p2) {
    try {
        return Integer.parseInt(p2);
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p0 + "]" + p1 + ": Failed to read int:" + p2);
    }
}
