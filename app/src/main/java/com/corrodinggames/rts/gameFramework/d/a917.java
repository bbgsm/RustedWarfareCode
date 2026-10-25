package com.corrodinggames.rts.gameFramework.d;

import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import com.corrodinggames.rts.game.b.b326;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.bp437;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.cj459;
import com.corrodinggames.rts.game.units.el732;
import com.corrodinggames.rts.game.units.en734;
import com.corrodinggames.rts.game.units.eo735;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.m.fq1260;
import com.corrodinggames.rts.gameFramework.utility.r1353;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a917 {
    static Paint C;
    static Paint D;
    float a;
    float b;
    public boolean c;
    public el732 d;
    public p352 e;
    public float g;
    public float h;
    public boolean i;
    public p352 j;
    public boolean k;
    public int l;
    public int m;
    public boolean n;
    public bp437 o;
    public int r;
    public float s;
    public boolean u;
    public ce454 v;
    public static r1353 w = new r1353();
    static Point x = new Point();
    static RectF y = new RectF();
    static RectF z = new RectF();
    static RectF A = new RectF();
    static RectF E = new RectF();
    public int f = 1;
    boolean p = false;
    public boolean q = false;
    public float t = 0.04f;
    Paint B = new Paint();

    public a917() {
        w.add(this);
        w.a();
    }

    static {
        fq1260 fq1260Var = new fq1260();
        C = fq1260Var;
        fq1260Var.setARGB(90, 0, 0, 255);
        C.setStyle(Paint.Style.STROKE);
        C.setStrokeWidth(2.0f);
        fq1260 fq1260Var2 = new fq1260();
        D = fq1260Var2;
        fq1260Var2.setARGB(40, 0, 0, 255);
        D.setStyle(Paint.Style.STROKE);
        D.setStrokeWidth(2.0f);
    }

    public static void a() {
        w.clear();
    }

    public static void a(float delta) {
        Iterator it = w.iterator();
        while (it.hasNext()) {
            a917 entry = (a917) it.next();
            entry.a += 1.0f;
            entry.b += delta;
            entry.s = f1006.a(entry.s, entry.t * delta);
            int v1;
            if (entry.n) {
                if (entry.a <= 6.0f) {
                    continue;
                }
                entry.a = 0.0f;
                bp437 o = entry.o;
                el732 d = entry.d;
                float g = entry.g;
                float h = entry.h;
                boolean found = false;
                for (v1 = 0; v1 < o.O; v1++) {
                    en734 part = o.Q[v1];
                    if (part.a == eo735.build && part.b == d
                            && f1006.d(part.e - g) < 10.0f
                            && f1006.d(part.f - h) < 10.0f) {
                        found = true;
                        break;
                    }
                }
                v1 = found ? 1 : 0;
                if (!entry.p && v1 != 0) {
                    entry.p = true;
                }
                if (v1 != 0) {
                    v1 = 0;
                } else if (entry.p) {
                    v1 = 1;
                } else {
                    v1 = entry.b > 180.0f ? 1 : 0;
                }
            } else {
                if (entry.a <= 2.0f || entry.c()) {
                    continue;
                }
                entry.c = true;
                w.b(entry);
                continue;
            }
            if (!entry.c()) {
                v1 = 1;
            }
            if (v1 == 0) {
                continue;
            }
            entry.c = true;
            w.b(entry);
        }
        w.a();
    }

    public static void b() {
        float f;
        float f2;
        ce454 d;
        Rect bI;
        Object[] objArr = w.d;
        int size = w.size();
        for (int i = 0; i < size; i++) {
            a917 a917Var = (a917) objArr[i];
            k1104 t = k1104.t();
            if (t.bp == a917Var.j && t.cL.contains(a917Var.g, a917Var.h) && (!a917Var.q || a917Var.p)) {
                float f3 = a917Var.g;
                float f4 = a917Var.h;
                boolean z2 = false;
                boolean z3 = false;
                if (a917Var.n) {
                    z3 = true;
                } else {
                    z2 = true;
                }
                boolean z4 = true;
                if (a917Var.i) {
                    z4 = false;
                }
                if (z3) {
                    float f5 = a917Var.s;
                    if (f5 <= 0.0f) {
                        f = 0.0f;
                    } else if (a917Var.s < 1.0f) {
                        f = 1.0f - f1006.k(f5 * 90.0f);
                    } else {
                        f = 1.0f;
                    }
                } else {
                    f = 0.0f;
                }
                if (z3 && a917Var.s < 1.0f && (d = ce454.d(a917Var.d)) != null && d.bq() && (bI = d.bI()) != null) {
                    E.set(bI);
                    E.top *= t.bI.o;
                    E.bottom *= t.bI.o;
                    E.left *= t.bI.n;
                    E.right *= t.bI.n;
                    E.offset(-(d.cB() - t.bI.p), -(d.cC() - t.bI.q));
                    f1006.a(E, (t.bI.p - 3) + (5.0f * f));
                    E.offset(a917Var.g - t.ct, (a917Var.h - t.cu) - 0.0f);
                    float f6 = 3.0f + (7.0f * f);
                    Paint paint = C;
                    if (a917Var.s <= 0.0f) {
                        paint = D;
                    }
                    t.bL.a(E.left - f6, E.top, E.right + f6, E.top, paint);
                    t.bL.a(E.left - f6, E.bottom, E.right + f6, E.bottom, paint);
                    t.bL.a(E.left, E.top - f6, E.left, E.bottom + f6, paint);
                    t.bL.a(E.right, E.top - f6, E.right, E.bottom + f6, paint);
                }
                if (!z3) {
                    f2 = 0.0f;
                } else {
                    f2 = 0.0f - (10.0f * f);
                }
                cj459.a(a917Var.d, f3, f4 + f2, 0.0f, a917Var.e, 1.0f, 500.0f, z2, z3, a917Var.f, z4, null);
            }
        }
    }

    public static boolean a(p352 p352Var, int i, int i2) {
        k1104 t = k1104.t();
        t.bI.a(i, i2);
        float f = t.bI.U + t.bI.p;
        float f2 = t.bI.q + t.bI.V;
        y.set(f, f2, f + 1.0f, 1.0f + f2);
        return a(p352Var, y, -1);
    }

    public static boolean a(p352 p352Var, bp437 bp437Var, int i) {
        y = bp437Var.a(k1104.t().bI, y);
        return a(p352Var, y, i);
    }

    public static boolean a(bp437 bp437Var, bp437 bp437Var2) {
        b326 b326Var = k1104.t().bI;
        y = bp437Var.a(b326Var, y);
        z = bp437Var2.a(b326Var, z);
        return f1006.a(y, z);
    }

    private static boolean a(p352 p352Var, RectF rectF, int i) {
        b326 b326Var = k1104.t().bI;
        RectF rectF2 = A;
        Iterator it = w.iterator();
        RectF rectF3 = rectF2;
        while (it.hasNext()) {
            a917 a917Var = (a917) it.next();
            if (a917Var.j == p352Var && a917Var.n && (i == -1 || i == a917Var.r)) {
                ce454 b = ce454.b(a917Var.d);
                if (b == null) {
                    k1104.d("isTileRectOverBlueprint: Failed to get shared unit for: " + a917Var.d);
                } else {
                    b.eq = a917Var.g;
                    b.er = a917Var.h;
                    rectF3 = b.a(b326Var, rectF3);
                    if (f1006.a(rectF3, rectF)) {
                        return true;
                    }
                }
            }
            rectF3 = rectF3;
        }
        return false;
    }

    public static a917 a(p352 p352Var, float f, float f2) {
        Iterator it = w.iterator();
        while (it.hasNext()) {
            a917 a917Var = (a917) it.next();
            if (a917Var.j == p352Var && a917Var.n) {
                float a = f1006.a(a917Var.g, a917Var.h, f, f2);
                float f3 = ce454.b(a917Var.d).cl + 1.0f;
                if (f3 < 20.0f) {
                    f3 = 20.0f;
                }
                if (a < f3 * f3) {
                    return a917Var;
                }
            }
        }
        return null;
    }

    private boolean c() {
        if (this.n) {
            if (this.o == null || this.o.bX || !cj459.a(this.d, this.g, this.h, this.e)) {
                return false;
            }
        } else if (this.v == null || this.v.bK()) {
            return false;
        }
        return true;
    }
}
