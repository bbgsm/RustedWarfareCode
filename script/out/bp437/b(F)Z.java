public strictfp boolean b(float p1) {
    float v10 = 0.5f;
    boolean v9 = false;
    float v8 = 1.0f;

    com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.gameFramework.m.fi1252 v0 = v1.bL;
    android.graphics.Paint v5 = this.aA();
    float v6 = this.cg();

    if (this.ey) {
        android.graphics.PointF v3 = this.cA();
        float v2 = this.eq + v3.x - v1.ct;
        float v1Float = (this.er + v3.y - v1.cu) - this.es;

        this.aD();

        if (v6 != v8) {
            v0.i();
            v0.a(v6, v6, v2, v1Float);
        }

        float v4 = this.c(v9) - 90.0f;
        v0.a(this.M, v2, v1Float, v4, v5);

        if (v6 != v8) {
            v0.j();
        }
    } else {
        android.graphics.PointF v3 = this.cA();
        android.graphics.RectF v2 = this.ci();

        float v4 = v3.x;
        float v1Float = v3.y - this.es;

        v2.left += v4;
        v2.top += v1Float;
        v2.right += v4;
        v2.bottom += v1Float;

        android.graphics.Rect v1Rect = this.b(v9);

        float v3CenterX = (v2.left + v2.right) * v10;
        float v4CenterY = (v2.top + v2.bottom) * v10;

        v0.i();
        this.aD();

        if (v6 != v8) {
            v0.a(v6, v6, v3CenterX, v4CenterY);
        }

        float v6Angle = this.c(v9);
        v0.a(v6Angle, v3CenterX, v4CenterY);
        v0.a(this.M, v1Rect, v2, v5);
        v0.j();
    }

    return true;
}
