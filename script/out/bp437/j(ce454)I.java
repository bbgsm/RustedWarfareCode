public final strictfp int j(com.corrodinggames.rts.game.units.ce454 p1) {
    com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
    int v0 = 0;
    float v2 = w(p1);
    if (v2 > 58.0f) {
        float v4 = v2 - 41.0f;
        int v5 = v1.bI.n;
        float v6 = (float) v5 * 1.414f;
        v0 = (int) (v4 / v6);
    }
    return v0;
}
