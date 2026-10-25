package com.corrodinggames.rts.game.units.d;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import com.corrodinggames.rts.R;
import com.corrodinggames.rts.game.f342;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.a.c360;
import com.corrodinggames.rts.game.units.a.s376;
import com.corrodinggames.rts.game.units.bt441;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.cj459;
import com.corrodinggames.rts.game.units.el732;
import com.corrodinggames.rts.gameFramework.a.e788;
import com.corrodinggames.rts.gameFramework.d.e921;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.j.bg1057;
import com.corrodinggames.rts.gameFramework.j.j1071;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.m.e1216;
import com.corrodinggames.rts.gameFramework.utility.ab1322;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c652 extends p665 {
    static e1216[] a = new e1216[10];
    static e1216 b = null;
    static e1216 f = null;
    static e1216[] g = new e1216[10];
    static s376 j = new d653();
    static s376 k = new e654();
    static ArrayList l;
    boolean c;
    int d;
    float e;
    PointF h;
    Rect i;

    static {
        ArrayList arrayList = new ArrayList();
        l = arrayList;
        arrayList.add(j);
        l.add(k);
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.d.f655, com.corrodinggames.rts.game.units.bp437, com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.bo889, com.corrodinggames.rts.gameFramework.ah801, com.corrodinggames.rts.gameFramework.ce909
    public final void a(bg1057 bg1057Var) throws IOException {
        bg1057Var.a(this.c);
        bg1057Var.c(this.d);
        super.a(bg1057Var);
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.d.f655, com.corrodinggames.rts.game.units.bp437, com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.bo889, com.corrodinggames.rts.gameFramework.ah801
    public final void a(j1071 j1071Var) throws IOException {
        this.c = j1071Var.b.readBoolean();
        if (j1071Var.c >= 30) {
            this.d = j1071Var.b.readInt();
        }
        super.a(j1071Var);
    }

    @Override // com.corrodinggames.rts.game.units.d.f655, com.corrodinggames.rts.game.units.ce454
    public final e1216 t() {
        if (this.bZ.l == -1) {
            return null;
        }
        return g[this.bZ.I()];
    }

    public static void b() {
        k1104 t = k1104.t();
        b = t.bL.a(R.drawable.antinuke_launcher_dead);
        a = p352.a(t.bL.a(R.drawable.antinuke_launcher));
        e1216 a2 = t.bL.a(R.drawable.unit_icon_building_turrent);
        f = a2;
        g = p352.a(a2);
    }

    @Override // com.corrodinggames.rts.game.units.d.f655
    public final boolean L() {
        k1104.t();
        this.M = b;
        this.eo = 0;
        this.bV = false;
        a(bt441.verylargeBuilding, true);
        return true;
    }

    @Override // com.corrodinggames.rts.game.units.bp437
    public final e1216 c() {
        return this.bX ? b : a[this.bZ.I()];
    }

    @Override // com.corrodinggames.rts.game.units.bp437
    public final e1216 j() {
        return null;
    }

    @Override // com.corrodinggames.rts.game.units.d.f655, com.corrodinggames.rts.game.units.bp437
    public final void a(int i) {
    }

    public c652(boolean z) {
        super(z);
        this.h = new PointF();
        this.i = new Rect();
        e1216[] e1216VarArr = a;
        this.M = e1216VarArr[e1216VarArr.length - 1];
        b(this.M);
        this.cl = 24.0f;
        this.cm = this.cl;
        this.cx = 2800.0f;
        this.cw = this.cx;
        this.n.set(-1, -1, 1, 1);
        this.o.set(-1, -1, 1, 1);
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.bp437, com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.ah801
    public final void a(float delta) {
        super.a(delta);
        if (!by() || this.bX) {
            return;
        }
        if (this.d <= 0) {
            return;
        }
        this.e = f1006.a(this.e, delta);
        f342 target = null;
        if (this.e == 0.0f) {
            this.e = 15.0f;
            Iterator it = f342.a.iterator();
            while (it.hasNext()) {
                f342 proj = (f342) it.next();
                if (!proj.D || proj.es <= 50.0f) {
                    continue;
                }
                if (f1006.a(this.eq, this.er, proj.eq, proj.er) >= 4840000.0f) {
                    continue;
                }
                if (f1006.a(this.eq, this.er, proj.n, proj.o) >= 1000000.0f) {
                    continue;
                }
                boolean hostile;
                if (proj.j == null) {
                    hostile = true;
                } else {
                    hostile = !proj.j.bZ.c(this.bZ) && proj.j.bZ != this.bZ;
                }
                if (!hostile) {
                    continue;
                }
                boolean alreadyTargeted = false;
                Object[] arr = f342.a.b;
                int size = f342.a.a;
                for (int i = 0; i < size; i++) {
                    f342 other = (f342) arr[i];
                    if (other != proj && other.q == proj) {
                        alreadyTargeted = true;
                        break;
                    }
                }
                if (!alreadyTargeted) {
                    target = proj;
                }
            }
        }
        if (target == null) {
            return;
        }
        k1104 game = k1104.t();
        if (this.d <= 0) {
            return;
        }
        this.d--;
        PointF spawn = z(0);
        f342 interceptor = f342.a(this, spawn.x, spawn.y);
        interceptor.eo = 10;
        interceptor.P = (short) 10;
        interceptor.RR = (short) 0;
        interceptor.x = 1.0f;
        interceptor.aC = true;
        interceptor.q = target;
        interceptor.h = 99999.0f;
        interceptor.t = 0.2f;
        interceptor.r = 6.5f;
        interceptor.ar = Color.argb(255, 80, 60, 180);
        interceptor.U = 600.0f;
        interceptor.aH = true;
        interceptor.aM = true;
        interceptor.aQ = true;
        interceptor.C = true;
        interceptor.aI = 80.0f;
        interceptor.aJ = 100.0f;
        interceptor.aL = 2.0f;
        game.bO.a(spawn.x, spawn.y, this.es, -0x113334);
        e921 flame = game.bO.d(spawn.x, spawn.y, 0.0f, -1);
        if (flame != null) {
            flame.G = 0.5f;
            flame.F = 2.1f;
            flame.ar = (short) 2;
            flame.V = 90.0f;
            flame.W = flame.V;
            flame.U = 0.0f;
        }
        game.bJ.a(e788.D, 0.15f, 1.5f, spawn.x, spawn.y);
    }

    @Override // com.corrodinggames.rts.game.units.bp437
    public final PointF z(int i) {
        bi.set(this.eq, this.er - 9.0f);
        return bi;
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.bp437
    public final void a(ce454 ce454Var, int i) {
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.bp437
    public final float l() {
        return 1000.0f;
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.bp437
    public final float c(int i) {
        return 4.0f;
    }

    @Override // com.corrodinggames.rts.game.units.bp437
    public final boolean b(int i, float f2) {
        return false;
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.d.f655, com.corrodinggames.rts.game.units.bp437, com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.ah801
    public final boolean b(float f2) {
        return super.b(f2);
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.ce454
    public final boolean k() {
        return false;
    }

    @Override // com.corrodinggames.rts.game.units.bp437
    public final float g(int i) {
        return 1.0f;
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.ce454
    public final float bA() {
        return super.bA();
    }

    @Override // com.corrodinggames.rts.game.units.d.p665, com.corrodinggames.rts.game.units.d.s668
    public final void a(q666 q666Var) {
        if (!q666Var.j.equals(k.j)) {
            return;
        }
        this.d++;
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final c360 bQ() {
        return this.d < 4 ? k.j : s376.i;
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final boolean bO() {
        return false;
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final ArrayList N() {
        return l;
    }

    @Override // com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.ah801
    public final void d(float f2) {
        super.d(f2);
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final void O() {
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final void bG() {
        ab1322.a((ce454) this, 990.0f, false, true);
    }

    @Override // com.corrodinggames.rts.game.units.ce454, com.corrodinggames.rts.gameFramework.ah801
    public final boolean a(k1104 k1104Var) {
        if (this.cI) {
            return true;
        }
        return super.a(k1104Var);
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final float a(ce454 ce454Var, float f2, f342 f342Var) {
        if (f2 > 2600.0f) {
            f2 = 2600.0f;
        }
        return super.a(ce454Var, f2, f342Var);
    }

    @Override // com.corrodinggames.rts.game.units.ce454
    public final /* bridge */ /* synthetic */ el732 q() {
        return cj459.AntiNukeLaucher;
    }
}
