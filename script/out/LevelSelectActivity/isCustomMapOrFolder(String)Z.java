public static boolean isCustomMapOrFolder(String p0) {
    boolean v0;
    if (p0 != null) {
        v0 = p0.contains("/SD/");
        if (v0) {
            v0 = true;
        } else {
            v0 = false;
        }
    } else {
        v0 = false;
    }
    return v0;
}
