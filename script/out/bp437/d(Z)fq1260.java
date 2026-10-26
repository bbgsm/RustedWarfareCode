private static strictfp com.corrodinggames.rts.gameFramework.m.fq1260 d(boolean p0) {
    com.corrodinggames.rts.gameFramework.m.fq1260 v0 = new com.corrodinggames.rts.gameFramework.m.fq1260();
    if (p0) {
        v0.setAntiAlias(true);
        v0.setFilterBitmap(true);
        v0.setDither(true);
    } else {
        v0.setAntiAlias(false);
        v0.setFilterBitmap(false);
        v0.setDither(false);
    }
    return v0;
}
