public static float d(String p0, String p1, String p2) {
    try {
        return Float.parseFloat(p2);
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p0 + "]" + p1 + ": Failed to read float:" + p2);
    }
}
