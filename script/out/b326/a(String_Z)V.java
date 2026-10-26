public final strictfp void a(String p1, boolean p2) {
    com.corrodinggames.rts.gameFramework.k1104.d(" --- Loading map ---");
    java.io.InputStream inputStream = com.corrodinggames.rts.game.b.b326.a(p1);
    if (inputStream == null) {
        String mapPath = com.corrodinggames.rts.game.b.b326.c(p1);
        throw new com.corrodinggames.rts.game.b.h332(
            new StringBuilder("Could not find map: ")
                .append(com.corrodinggames.rts.gameFramework.e.a926.d(mapPath))
                .toString()
        );
    }
    java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(inputStream);
    this.a(bufferedInputStream, p2);
    try {
        bufferedInputStream.close();
        inputStream.close();
    } catch (java.io.IOException e) {
        e.printStackTrace();
    }
}
