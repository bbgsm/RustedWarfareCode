public static strictfp void a(com.corrodinggames.rts.game.n350 p0) {
    if (com.corrodinggames.rts.gameFramework.k1104.aR && !com.corrodinggames.rts.gameFramework.k1104.aT) {
        return;
    }

    com.corrodinggames.rts.game.b.e329 e329Var = com.corrodinggames.rts.game.b.b326.am;

    android.graphics.RectF rectF = com.corrodinggames.rts.game.n350.n;
    rectF.left = p0.eq - (float) p0.c * 0.5f;
    rectF.right = p0.eq + (float) p0.c * 0.5f;
    rectF.top = p0.er - (float) p0.d * 0.5f;
    rectF.bottom = p0.er + (float) p0.d * 0.5f;

    int i = 0;
    while (i < e329Var.a) {
        int j = 0;
        while (j < e329Var.a) {
            com.corrodinggames.rts.game.b.f330[][] f330Array = e329Var.d;
            if (f330Array != null) {
                com.corrodinggames.rts.game.b.f330 f330Var = f330Array[i][j];
                android.graphics.Rect rect = f330Var.b();
                if (com.corrodinggames.rts.gameFramework.f1006.a(rect, rectF)) {
                    com.corrodinggames.rts.gameFramework.m.fi1252 fi1252Var = f330Var.a;
                    int c = f330Var.c();
                    int d = f330Var.d();
                    float m = e329Var.m;
                    p0.a(fi1252Var, c, d, m);
                    f330Var.d.j();
                }
            }
            j++;
        }
        i++;
    }
}
