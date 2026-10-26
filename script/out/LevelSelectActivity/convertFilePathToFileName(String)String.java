public static String convertFilePathToFileName(String p0) {
    if (p0 == null) {
        return null;
    } else if (p0.contains("/MOD|")) {
        return p0.substring(p0.indexOf("/MOD|"));
    } else if (p0.contains("/NEW_PATH|")) {
        return p0.substring(p0.indexOf("/NEW_PATH|"));
    } else {
        String[] v0 = p0.split("/");
        return v0[v0.length - 1];
    }
}
