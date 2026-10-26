private static strictfp long b(String p0) {
    String v0 = String.valueOf(p0);
    String v1 = com.corrodinggames.rts.gameFramework.e.a926.e(v0);
    com.corrodinggames.rts.gameFramework.utility.ai1329 v2 = com.corrodinggames.rts.gameFramework.utility.ah1328.a(v1);
    if (v2 != null && !v1.endsWith(".rwmod")) {
        return v2.c(v1);
    }
    if (com.corrodinggames.rts.gameFramework.e.a926.c(v0)) {
        android.content.res.AssetManager assetManager = com.corrodinggames.rts.gameFramework.k1104.t().al.getAssets();
        try {
            android.content.res.AssetFileDescriptor assetFileDescriptor = assetManager.openFd(v1);
            return assetFileDescriptor.getLength();
        } catch (java.io.IOException e) {
            throw new RuntimeException(e);
        }
    }
    return new java.io.File(v1).length();
}
