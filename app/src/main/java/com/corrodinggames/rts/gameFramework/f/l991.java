package com.corrodinggames.rts.gameFramework.f;

import android.graphics.Point;
import com.corrodinggames.rts.game.b.b326;
import com.corrodinggames.rts.game.b.i333;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.d.f655;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;

/* loaded from: classes.dex */
public final class l991 {
    static Point a = new Point();


    public static Point a(int i, int i2) {
        i333 d;
        Point point = null;
        float f = -1.0f;
        k1104 t = k1104.t();
        t.bI.a((float) i, (float) i2);
        int i3 = t.bI.U;
        int i4 = t.bI.V;
        for (int i5 = i3 - 3; i5 <= i3 + 3; i5++) {
            for (int i6 = i4 - 3; i6 <= i4 + 3; i6++) {
                if (t.bI.c(i5, i6) && (d = t.bI.d(i5, i6)) != null && d.i) {
                    ce454 c = f655.c(i5, i6);
                    if (c != null && !c.bK()) {
                        c = null;
                    }
                    if (c == null) {
                        float a2 = f1006.a(i3, i4, i5, i6);
                        if (f == -1.0f || a2 < f) {
                            t.bI.a(i5, i6);
                            a.set(t.bI.U, t.bI.V);
                            point = a;
                            f = a2;
                        }
                    }
                }
            }
        }
        return point;
    }
}
