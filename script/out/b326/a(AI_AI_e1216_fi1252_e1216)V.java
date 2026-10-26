private static strictfp void a(int[] p0, int[] p1, com.corrodinggames.rts.gameFramework.m.e1216 p2, com.corrodinggames.rts.gameFramework.m.fi1252 p3, com.corrodinggames.rts.gameFramework.m.e1216 p4) {
    p3.m();
    android.graphics.Rect v2 = new android.graphics.Rect();
    android.graphics.Rect v3 = new android.graphics.Rect();
    android.graphics.Rect v4 = new android.graphics.Rect();
    android.graphics.Rect v5 = new android.graphics.Rect();
    v2.set(0, 0, 20, 20);
    int v0 = 0;
    int v1 = 0;
    while (v0 < p1.length) {
        int v6 = p1[v0] * 20;
        int v7 = p1[v0 + 1] * 20;
        v3.set(v6, v7, v6 + 20, v7 + 20);
        p3.a(p4, v3, v2, (android.graphics.Paint) null);
        v5.set(v3.right - 1, v3.top, v3.right, v3.bottom);
        v4.set(v2.right, v2.top, v2.right + 1, v2.bottom);
        p3.a(p4, v5, v4, (android.graphics.Paint) null);
        v5.set(v3.left, v3.bottom - 1, v3.right, v3.bottom);
        v4.set(v2.left, v2.bottom, v2.right, v2.bottom + 1);
        p3.a(p4, v5, v4, (android.graphics.Paint) null);
        v0 += 2;
    }
    p3.n();
    while (v1 < p0.length) {
        v0 = p0[v1] + 128;
        com.corrodinggames.rts.game.b.b326.a(v0, p2);
        v1++;
    }
    return;
}
