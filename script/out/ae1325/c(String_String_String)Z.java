public static boolean c(String p0, String p1, String p2) {
    if (p2.equalsIgnoreCase("true")) {
        return true;
    } else if (p2.equalsIgnoreCase("false")) {
        return false;
    } else {
        throw new RuntimeException("[" + p0 + "]" + p1 + ": Unexpected boolean value:'" + p2 + "'");
    }
}
