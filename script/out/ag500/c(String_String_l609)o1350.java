private static o1350 c(String p0, String p1, l609 p2) {
    boolean safeFlag = true;
    String v2 = ag500.a(p0, p1);
    b1019 v1 = null;
    if (p2 != null) {
        v1 = p2.J;
    } else {
        k1104.f("findAssetSteam meta==null");
    }
    if (v1 != null) {
        if (p1 != null) {
            if (p1.contains("..")) {
                if (!k1104.X()) {
                    try {
                        String v3 = new java.io.File(a926.e(v2)).getCanonicalPath();
                        String v4 = new java.io.File(a926.e("units")).getCanonicalPath();
                        if (!v3.startsWith(v4)) {
                            java.io.File tempFile = new java.io.File(v1.d());
                            v4 = tempFile.getCanonicalPath();
                            boolean startsWithMod = v3.startsWith(v4);
                            safeFlag = startsWithMod;
                            if (startsWithMod) {
                                k1104.b("File: \'" + v3 + "\' is not within mod: \'" + v4 + "\'");
                            }
                        }
                    } catch (java.io.IOException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        if (safeFlag) {
            throw new RuntimeException("File is outside mod: " + v2);
        }
    }
    o1350 result = a926.k(v2);
    if (result == null) {
        k1104.d("Orginal path: " + v2);
        throw new RuntimeException("IO Error: Failed to open: " + ag500.a(v1, v2));
    }
    return result;
}
