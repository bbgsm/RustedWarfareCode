public static strictfp com.corrodinggames.rts.game.b.i333 a(com.corrodinggames.rts.game.b.i333 p0, int p1, int p2) {
    if (p0 != null && p0.m != null) {
        int v0 = p0.m.length;
        int v1 = p1 * 13;
        int v2 = p2 * 1313;
        v1 += v2;
        v0 = v1 % (v0 + 1);
        v0 = v0 - 1;
        if (v0 >= 0) {
            p0 = p0.m[v0];
        }
    }
    return p0;
}
