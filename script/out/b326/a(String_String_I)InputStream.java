private static strictfp java.io.InputStream a(String p0, String p1, int p2) {
    String[] v3 = p1.split("/");
    if (v3.length < p2) {
        return null;
    }
    String v2 = "";
    boolean v0 = true;
    int v1 = v3.length - p2;
    while (v1 < v3.length) {
        if (!v0) {
            v2 = v2 + "/";
        }
        v0 = false;
        v2 = v2 + v3[v1];
        v1++;
    }
    return com.corrodinggames.rts.gameFramework.e.a926.j(p0 + v2);
}
