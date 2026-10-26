public static strictfp java.io.InputStream a(String p0) {
    java.io.InputStream v0 = com.corrodinggames.rts.game.b.b326.d(p0);
    if (v0 == null) {
        String movedName = new StringBuilder()
            .append(p0.replace(".tmx", ""))
            .append("_moved")
            .toString();
        java.io.InputStream movedStream = com.corrodinggames.rts.game.b.b326.d(movedName);
        if (movedStream != null) {
            String content = com.corrodinggames.rts.gameFramework.f1006.a(movedStream);
            content = content.trim();
            String logMessage = "Found moved map at:".concat(String.valueOf(content));
            com.corrodinggames.rts.gameFramework.k1104.d(logMessage);
            v0 = com.corrodinggames.rts.game.b.b326.d(content);
        }
    }
    return v0;
}
