public final strictfp boolean a(float p1, float p2, com.corrodinggames.rts.game.p352 p3) {
    if (this.F) {
        int v0 = (int) (this.r * p1);
        int v1 = (int) (this.s * p2);
        byte[][] v2 = p3.Q;
        if (v2 != null && this.c(v0, v1)) {
            v2 = p3.Q;
            if (v2[v0][v1] >= 5) {
                return false;
            }
        }
    }
    return true;
}
