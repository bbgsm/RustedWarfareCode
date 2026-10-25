package com.corrodinggames.rts.gameFramework.f.a;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.m.e1216;
import com.corrodinggames.rts.gameFramework.m.fi1252;
import com.corrodinggames.rts.gameFramework.m.fq1260;

public class i943 {

    public static final i943 j = new i943();
    public static final i943 k = new i943();
    public static final i943 l = new i943();
    public static final i943 m = new i943();
    public static final i943 n = new i943();

    static Rect w = new Rect();
    static Rect x = new Rect();
    static Rect y = new Rect();

    Paint o;
    e1216 p;
    Paint q;
    public i943 r;
    public int s;
    public int t;
    public int u;
    public i943 v;

    public i943() {
        this.o = new fq1260();
        this.q = new fq1260();
        this.s = 3;
        this.t = 3;
    }

    public static void b() {
        i943 v0 = j;
        v0.o.setColor(Color.argb(140, 100, 100, 100));
        v0.q.setColor(0xFF000000);
        v0.q.setStyle(Paint.Style.STROKE);

        v0 = k;
        v0.o.setColor(Color.argb(180, 100, 100, 190));
        v0.q.setColor(0xFF000000);
        v0.q.setStyle(Paint.Style.STROKE);

        l.o = null;
        l.q = null;

        m.o = null;
        m.q.setColor(0xFFFF0000);
        m.q.setAlpha(0x7F);
        m.q.setStyle(Paint.Style.STROKE);

        n.o.setAlpha(0xFF);
        n.p = k1104.t().bP.bl;
        n.q.setColor(0xFF888888);
        n.q.setAlpha(0xFF);
        n.q.setStyle(Paint.Style.STROKE);
    }

    public void a(i943 other) {
        this.p = other.p;

        if (other.o != null) {
            this.o = new Paint(other.o);
        } else {
            this.o = null;
        }

        if (other.q != null) {
            this.q = new Paint(other.q);
        } else {
            this.q = null;
        }
    }

    public void a(e1216 p) {
        this.p = p;
    }

    public void a(fi1252 renderer, Rect rect) {
        k1104 v0 = k1104.t();

        if (this.p != null) {
            v0.bL.a(this.p, rect, this.o, 0, 0, 0, 0);
        } else if (this.o != null) {
            renderer.b(rect, this.o);
        }

        if (this.q != null) {
            renderer.b(rect, this.q);
        }
    }

    public final void a(fi1252 renderer, Rect rect, int layer) {
        if (this.u > 0) {
            y.set(rect);
            rect = y;
            f1006.a(rect, (float) this.u);
        }

        if (this.r != null) {
            w.set(rect);
            w.offset(this.s, this.t);
            this.r.a(renderer, w);
        }

        if (layer == j944.b && this.v != null) {
            this.v.a(renderer, rect);
        } else {
            this.a(renderer, rect);
        }
    }

    public final void a(fi1252 renderer, RectF rectF) {
        x.left = (int) rectF.left;
        x.top = (int) rectF.top;
        x.right = (int) rectF.right;
        x.bottom = (int) rectF.bottom;
        a(renderer, x, j944.a);
    }

    public final void b(fi1252 renderer, Rect rect) {
        a(renderer, rect, j944.a);
    }
}
