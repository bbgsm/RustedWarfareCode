private static String a(String p0, String p1) {
    if (!p0.endsWith("/")) {
        p0 = p0 + "/";
    }
    while (p1.startsWith("/") || p1.startsWith("\\")) {
        p1 = p1.substring(1);
    }
    return p0 + p1;
}
