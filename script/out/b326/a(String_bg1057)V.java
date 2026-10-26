public static strictfp void a(String p0, com.corrodinggames.rts.gameFramework.j.bg1057 p1) {
    java.io.InputStream v0 = com.corrodinggames.rts.game.b.b326.a(p0);
    if (v0 == null) {
        throw new java.io.IOException("writeMapStream: Could not find map:" + String.valueOf(p0));
    }
    int v1 = (int) com.corrodinggames.rts.game.b.b326.b(p0);
    if (v1 == -1) {
        new java.io.IOException("writeMapStream: Failed to get map size");
    }
    if (v1 == 0) {
        new java.io.IOException("writeMapStream: Got empty map size");
    }
    com.corrodinggames.rts.gameFramework.k1104.d("Sending map stream of size: " + String.valueOf(v1));
    p1.a(v0, v1);
    return;
}
