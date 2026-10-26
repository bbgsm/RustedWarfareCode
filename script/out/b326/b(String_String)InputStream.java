public static strictfp InputStream b(String p0, String p1) throws IOException {
    Object v0 = com.corrodinggames.rts.gameFramework.e.a926.j(new StringBuilder().append(p0).append(p1).toString());
    if (v0 == null) {
        v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 3);
    }
    if (v0 == null) {
        v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 2);
    }
    if (v0 == null) {
        v0 = com.corrodinggames.rts.game.b.b326.a(p0, p1, 1);
    }
    if (v0 == null) {
        throw new IOException(new StringBuilder("File could not be found:").append(p0).append(p1).toString());
    }
    return (InputStream) v0;
}
