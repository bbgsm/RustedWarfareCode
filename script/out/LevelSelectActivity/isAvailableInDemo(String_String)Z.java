public static boolean isAvailableInDemo(String p0, String p1) {
    java.util.regex.Matcher matcher = java.util.regex.Pattern.compile(".*\\[(.*)\\].*").matcher(p0);
    if (matcher.matches()) {
        String group = matcher.group(1).toLowerCase(java.util.Locale.ENGLISH) + "|";
        if (group.contains("demo|")) {
            return true;
        }
    }
    String replaced = p1.replace(".tmx", "");
    String path = replaced + "_demo";
    if (com.corrodinggames.rts.gameFramework.e.a926.i(path)) {
        return true;
    }
    return false;
}
