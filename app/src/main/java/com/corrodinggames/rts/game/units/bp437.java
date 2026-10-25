package com.corrodinggames.rts.game.units;

import android.graphics.Paint;
import android.graphics.PointF;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.a.h365;
import com.corrodinggames.rts.game.units.a.s376;
import com.corrodinggames.rts.game.units.custom.b.n533;
import com.corrodinggames.rts.game.units.custom.d.b579;
import com.corrodinggames.rts.game.units.d.ab644;
import com.corrodinggames.rts.game.units.d.f655;
import com.corrodinggames.rts.game.units.g.a747;
import com.corrodinggames.rts.gameFramework.a.e788;
import com.corrodinggames.rts.gameFramework.d.a917;
import com.corrodinggames.rts.gameFramework.d.e921;
import com.corrodinggames.rts.gameFramework.d.f922;
import com.corrodinggames.rts.gameFramework.d.h924;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.utility.ab1322;
import com.corrodinggames.rts.gameFramework.utility.p1351;

import java.io.IOException;

public abstract class bp437 extends c449 {

    // ==== from __header__.java ====
    private static int A;

    private static final com.corrodinggames.rts.gameFramework.m.fq1260 B = null;

    private static final com.corrodinggames.rts.gameFramework.m.fq1260 C = null;

    public static boolean L;

    public static final com.corrodinggames.rts.game.units.en734[] P = null;

    public static final com.corrodinggames.rts.gameFramework.m.fq1260 aG = null;

    public static final com.corrodinggames.rts.gameFramework.m.fq1260 aH = null;

    public static final android.graphics.PointF aI = null;

    public static com.corrodinggames.rts.game.units.f.j745 aJ;

    public static final com.corrodinggames.rts.gameFramework.utility.x1359 aO = null;

    static final com.corrodinggames.rts.game.units.bv443 aR = null;

    public static com.corrodinggames.rts.game.units.bw444 aS;

    public static com.corrodinggames.rts.game.units.bw444 aT;

    public static com.corrodinggames.rts.game.units.bz447 aU;

    public static com.corrodinggames.rts.game.units.bz447 aV;

    static com.corrodinggames.rts.gameFramework.utility.p1351 aX;

    public static final com.corrodinggames.rts.game.units.bx445 aY;

    protected static android.graphics.PorterDuffColorFilter aZ;

    public static final com.corrodinggames.rts.game.units.bx445[] av = null;

    protected static android.graphics.PorterDuffColorFilter ba;

    protected static android.graphics.PorterDuffColorFilter bb;

    protected static android.graphics.PorterDuffColorFilter bc;

    protected static android.graphics.Paint bd;

    protected static android.graphics.Paint be;

    protected static android.graphics.Paint bf;

    static final android.graphics.PointF bg = null;

    protected static final com.corrodinggames.rts.gameFramework.utility.am1333 bh = null;

    protected static final android.graphics.PointF bi = null;

    protected static final android.graphics.PointF bj = null;

    protected static final com.corrodinggames.rts.gameFramework.utility.am1333 bk = null;

    protected static final android.graphics.PointF bl = null;

    static final android.graphics.Point bm = null;

    static final android.graphics.Point bn = null;

    static final android.graphics.PointF bo = null;

    static final com.corrodinggames.rts.game.units.br439 bp = null;

    public static final com.corrodinggames.rts.game.units.bu442 bq = null;

    static com.corrodinggames.rts.gameFramework.utility.p1351 bs;

    private static final android.graphics.Paint z = null;

    protected com.corrodinggames.rts.gameFramework.m.e1216 M;

    protected com.corrodinggames.rts.gameFramework.m.e1216 N;

    public int O;

    public com.corrodinggames.rts.game.units.en734[] Q;

    public com.corrodinggames.rts.game.units.a384 R;

    int S;

    public com.corrodinggames.rts.game.units.ce454 T;

    public float U;

    public float V;

    public float W;

    public float X;

    public float Y;

    public float Z;

    private int a;

    public boolean aA;

    public float aB;

    public float aC;

    public com.corrodinggames.rts.game.a.u318 aD;

    public com.corrodinggames.rts.game.a.v319 aE;

    public boolean aF;

    public byte aK;

    public com.corrodinggames.rts.game.units.ce454[] aL;

    public float[] aM;

    public int aN;

    public boolean aP;

    public boolean aQ;

    com.corrodinggames.rts.gameFramework.k.j1098 aW;

    public float aa;

    public com.corrodinggames.rts.game.units.ce454 ab;

    public int ac;

    public float ad;

    public int ae;

    public com.corrodinggames.rts.game.units.bp437 af;

    public boolean ag;

    public boolean ah;

    public int ai;

    public short aj;

    public float ak;

    public boolean al;

    public float am;

    public float an;

    public float ao;

    public int ap;

    public float aq;

    public boolean ar;

    public float as;

    public boolean at;

    public boolean au;

    public com.corrodinggames.rts.gameFramework.k.c1091 aw;

    protected com.corrodinggames.rts.game.units.bx445[] ax;

    protected int ay;

    public boolean az;

    private float b;

    public com.corrodinggames.rts.gameFramework.utility.p1351 br;

    private float c;

    private float d;

    private float e;

    private boolean f;

    private int g;

    private boolean h;

    private boolean i;

    private float j;

    private float k;

    private int l;

    private float m;

    private float n;

    private byte o;

    private int p;

    private float q;

    private boolean r;

    private boolean s;

    private int t;

    private int u;

    private com.corrodinggames.rts.gameFramework.m.fq1260 v;

    private int w;

    private com.corrodinggames.rts.gameFramework.m.fq1260 x;

    private int y;

    // ==== from _clinit_(void)V.java ====
    static {
        L = false;
        P = new com.corrodinggames.rts.game.units.en734[0];
        av = new com.corrodinggames.rts.game.units.bx445[0];
        aG = new com.corrodinggames.rts.gameFramework.m.fq1260();
        aG.setARGB(128, 255, 255, 255);
        aG.d = true;
        aH = new com.corrodinggames.rts.gameFramework.m.fq1260();
        aH.set(aG);
        aH.setAntiAlias(true);
        aH.setFilterBitmap(true);
        aH.setDither(true);
        aH.d = true;
        aI = new android.graphics.PointF();
        z = new android.graphics.Paint();
        B = d(false);
        C = d(true);
        aJ = new com.corrodinggames.rts.game.units.bq438();
        aO = new com.corrodinggames.rts.gameFramework.utility.x1359();
        aR = new com.corrodinggames.rts.game.units.bv443();
        aS = new com.corrodinggames.rts.game.units.bw444(true);
        aT = new com.corrodinggames.rts.game.units.bw444(false);
        aU = new com.corrodinggames.rts.game.units.bz447(true);
        aV = new com.corrodinggames.rts.game.units.bz447(false);
        aX = new com.corrodinggames.rts.gameFramework.utility.p1351();
        aY = new com.corrodinggames.rts.game.units.bx445();
        aZ = new android.graphics.PorterDuffColorFilter(android.graphics.Color.rgb(200, 255, 200), android.graphics.PorterDuff.Mode.MULTIPLY);
        ba = new android.graphics.PorterDuffColorFilter(android.graphics.Color.rgb(70, 255, 70), android.graphics.PorterDuff.Mode.MULTIPLY);
        bb = new android.graphics.PorterDuffColorFilter(android.graphics.Color.rgb(255, 40, 40), android.graphics.PorterDuff.Mode.MULTIPLY);
        bc = new android.graphics.PorterDuffColorFilter(android.graphics.Color.rgb(120, 120, 255), android.graphics.PorterDuff.Mode.MULTIPLY);
        bd = com.corrodinggames.rts.gameFramework.utility.ab1322.b();
        be = com.corrodinggames.rts.gameFramework.utility.ab1322.b();
        bf = com.corrodinggames.rts.gameFramework.utility.ab1322.b();
        bg = new android.graphics.PointF();
        bh = new com.corrodinggames.rts.gameFramework.utility.am1333();
        bi = new android.graphics.PointF();
        bj = new android.graphics.PointF();
        bk = new com.corrodinggames.rts.gameFramework.utility.am1333();
        bl = new android.graphics.PointF();
        bm = new android.graphics.Point();
        bn = new android.graphics.Point();
        bo = new android.graphics.PointF();
        bp = new com.corrodinggames.rts.game.units.br439();
        bq = new com.corrodinggames.rts.game.units.bu442();
        bs = new com.corrodinggames.rts.gameFramework.utility.p1351();
    }

    // ==== from _init_(Z)V.java ====
    public bp437(boolean p1) {
        super(p1);
        this.O = 0;
        this.Q = com.corrodinggames.rts.game.units.bp437.P;
        this.R = com.corrodinggames.rts.game.units.a384.onlyInRange;
        this.S = -9999;
        this.g = -9999;
        this.j = 3.0f;
        this.k = 3.0f;
        this.al = false;
        this.am = 0.0f;
        this.an = 0.0f;
        this.ao = 0.0f;
        this.ap = 0;
        this.aq = 0.0f;
        this.as = -999.0f;
        this.at = false;
        this.au = false;
        this.ax = com.corrodinggames.rts.game.units.bp437.av;
        this.ay = 0;
        this.t = 0;
        this.az = true;
        this.v = null;
        this.x = null;
        this.aK = 0;
        this.aN = -9999;
        this.aW = null;
    }

    // ==== from a(bg1057)V.java ====
    public strictfp void a(com.corrodinggames.rts.gameFramework.j.bg1057 p1) throws IOException {
        p1.a(this.b);
        p1.a(this.c);
        p1.a(this.cN[0].e);

        p1.c(this.O);

        int v2 = this.O;
        p1.c(v2);

        for (int i = 0; i < v2; i++) {
            this.Q[i].a(p1);
        }

        p1.a((Enum) this.R);

        com.corrodinggames.rts.game.units.ce454 target = this.T;
        if (target != null && target.bX) {
            target = null;
        }
        p1.b(target);
        p1.a(this.U);
        p1.a(this.W);
        p1.a(this.X);
        p1.c("pathing_active:");
        p1.a(this.i);
        p1.a(this.j);
        p1.a(this.k);
        p1.a(this.q);
        p1.a(this.af);
        p1.a(this.ag);
        p1.a(this.ah);
        p1.a(this.al);
        p1.a(this.am);
        p1.a(this.an);
        p1.a(this.ao);
        p1.c(this.ap);

        p1.c(this.ae);

        p1.c("activePathCount:");

        p1.c(this.ay);
        for (int i = 0; i < this.ay; i++) {
            com.corrodinggames.rts.game.units.bx445 pathPoint = this.ax[i];
            p1.a(pathPoint.a);
            p1.a(pathPoint.b);
        }

        p1.c(this.ay);
        p1.c(this.t);

        p1.b(12);

        p1.a(this.m);
        p1.a(this.n);

        p1.a(this.d);
        p1.a(this.e);

        p1.a(this.s);

        p1.a(this.ak);
        p1.c(this.l);

        p1.a(this.Y);

        p1.a(this.as);
        p1.a(this.at);
        p1.a(this.au);

        p1.a(this.aj);

        p1.a(this.ad);

        p1.c(this.u);

        p1.a(this.Z);

        p1.a(this.aB);
        p1.a(this.aC);

        com.corrodinggames.rts.gameFramework.utility.p1351 br = this.br;
        int size;
        if (br == null) {
            size = 0;
        } else {
            size = br.size();
        }
        p1.a((short) size);

        if (size != 0) {
            p1.d("s");
            Object[] values = br.b;
            for (int j = 0; j < br.a; j++) {
                com.corrodinggames.rts.game.units.g.a747 item = (com.corrodinggames.rts.game.units.g.a747) values[j];
                p1.a((Enum) item.a());
                item.a(this, p1);
            }
            p1.e("s");
        }

        super.a(p1);
    }

    // ==== from a(bp437)V.java ====
    public final strictfp void a(com.corrodinggames.rts.game.units.bp437 p1) {
        com.corrodinggames.rts.game.units.bp437 v0;
        int v1;
        if (this.af != null) {
            v0 = this.af;
            v1 = v0.ai - 1;
            v0.ai = v1;
        }
        this.af = p1;
        if (p1 != null) {
            v0 = this.af;
            v1 = v0.ai + 1;
            v0.ai = v1;
        }
    }

    // ==== from a(bp437_bp437)V.java ====
    public static strictfp void a(com.corrodinggames.rts.game.units.bp437 p0, com.corrodinggames.rts.game.units.bp437 p1) {
        int v1 = 0;
        try {
            com.corrodinggames.rts.gameFramework.j.bg1057 v2 = new com.corrodinggames.rts.gameFramework.j.bg1057();
            int v3 = p0.O;
            int v0 = v1;
            while (v0 < v3) {
                com.corrodinggames.rts.game.units.en734 v4 = p0.Q[v0];
                v4.a(v2);
                v0++;
            }
            com.corrodinggames.rts.gameFramework.j.j1071 v4 = new com.corrodinggames.rts.gameFramework.j.j1071(v2.d());
            p1.O = v3;
            while (v1 < v3) {
                p1.Q(v1);
                int v0len = p1.Q.length;
                if (v1 < v0len) {
                    v0 = v1;
                } else {
                    String v0s = "Too many waypoints:".concat(String.valueOf(v1));
                    com.corrodinggames.rts.gameFramework.k1104.b(v0s);
                    v0 = p1.Q.length - 1;
                }
                com.corrodinggames.rts.game.units.en734 v2obj = p1.Q[v0];
                if (v2obj == null) {
                    p1.Q[v0] = new com.corrodinggames.rts.game.units.en734();
                }
                p1.Q[v0].a(v4);
                p1.Q[v0].a();
                v1++;
            }
            return;
        } catch (java.io.IOException v0) {
            throw new RuntimeException(v0);
        }
    }

    // ==== from a(bp437_ce454_F)V.java ====
    static void a(com.corrodinggames.rts.game.units.bp437 p0, com.corrodinggames.rts.game.units.ce454 p1, float p2) {
        boolean v0 = true;
        p0.a(p1, p2, v0);
    }

    // ==== from a(bp437_n533)Z.java ====
    public strictfp boolean a(com.corrodinggames.rts.game.units.bp437 p0, com.corrodinggames.rts.game.units.custom.b.n533 p1) {
        boolean v0 = false;
        return v0;
    }

    // ==== from a(bt441_Z)V.java ====
    public final strictfp void a(bt441 size, boolean p2) {
        k1104 game = k1104.t();

        if (size == bt441.verylargeBuilding) {
            // 播放大型建筑音效
            game.bJ.a(
                    e788.p,
                    0.8f,
                    this.eq,
                    this.er
            );

            game.bO.a(this.eq, this.er, this.es);
            game.bO.t = h924.critical;

            e921 effect = game.bO.c(
                    this.eq,
                    this.er,
                    this.es,
                    -0x113334
            );

            if (effect != null) {
                effect.G = 0.2f;
                effect.F = 2.0f;
                effect.ar = 2;
                effect.V = 45.0f;
                effect.W = effect.V;
                effect.U = 0.0f;
            }
        } else if (size == bt441.large
                || size == bt441.building
                || size == bt441.buildingNoShockwaveOrSmoke) {

            game.bJ.a(
                    e788.p,
                    0.8f,
                    this.eq,
                    this.er
            );

            game.bO.a(this.eq, this.er, this.es);
        } else if (size == bt441.verysmall) {
            float pitch = f1006.c(-0.07f, 0.07f) + 1.0f;

            game.bJ.a(
                    e788.o,
                    0.4f,
                    pitch,
                    this.eq,
                    this.er
            );

            game.bO.b(this.eq, this.er, this.es);
        } else if (size == bt441.largeUnit) {
            float pitch = f1006.c(-0.07f, 0.07f) + 1.0f;

            game.bJ.a(
                    e788.o,
                    0.8f,
                    pitch,
                    this.eq,
                    this.er
            );

            game.bO.b(this.eq, this.er, this.es);
            game.bO.t = h924.critical;

            e921 effect = game.bO.c(
                    this.eq,
                    this.er,
                    this.es,
                    -0x113334
            );

            if (effect != null) {
                effect.G = 0.2f;
                effect.F = 2.0f;
                effect.ar = 2;
                effect.V = 45.0f;
                effect.W = effect.V;
                effect.U = 0.0f;
            }
        } else {
            // small、normal
            float pitch = f1006.c(-0.07f, 0.07f) + 1.0f;

            game.bJ.a(
                    e788.o,
                    0.8f,
                    pitch,
                    this.eq,
                    this.er
            );

            game.bO.b(this.eq, this.er, this.es);
        }

        // verysmall 不执行后续的烟尘、冲击波等逻辑
        if (size == bt441.verysmall) {
            return;
        }

        if (size != bt441.buildingNoShockwaveOrSmoke) {
            e921 effect = game.bO.d(
                    this.eq,
                    this.er,
                    this.es,
                    0
            );

            if (effect != null) {
                effect.E = 0.9f;
            }
        }

        if (p2) {
            if (!bw()) {
                aX();
            }

            if (size != bt441.buildingNoShockwaveOrSmoke && !cn()) {
                f922.a(this.eq, this.er);
                f922.b(this.eq, this.er);
                aZ();
            }
        }
    }
    // ==== from a(ce454)Z.java ====
    public strictfp boolean a(com.corrodinggames.rts.game.units.ce454 ce454) {
        return false;
    }

    // ==== from a(ce454_F_I)V.java ====
    public strictfp void a(com.corrodinggames.rts.game.units.ce454 p1, float p2, int p3) {
        float f0 = this.W;
        f0 = com.corrodinggames.rts.gameFramework.f1006.a(f0, p2);
        this.W = f0;

        if (this.W == 0.0f) {
            this.W = 5.0f;

            if (this.i_()) {
                com.corrodinggames.rts.gameFramework.utility.am1333 v7 = this.aW();

                com.corrodinggames.rts.gameFramework.k1104 k = com.corrodinggames.rts.gameFramework.k1104.t();
                com.corrodinggames.rts.gameFramework.d.c919 c = k.bO;

                com.corrodinggames.rts.gameFramework.d.e921 e = c.a(
                        v7.a,
                        v7.b,
                        this.es + v7.c,
                        com.corrodinggames.rts.gameFramework.d.d920.a,
                        false,
                        com.corrodinggames.rts.gameFramework.d.h924.b
                );

                if (e != null) {
                    float v1 = p1.eq;
                    double v2 = (double) v1;
                    double v4 = -8.0;
                    double v8 = Math.random();
                    double v10 = 16.0;
                    v8 *= v10;
                    v4 += v8;
                    v2 += v4;
                    v1 = (float) v2;

                    float v2f = p1.er;
                    double v2d = (double) v2f;
                    double v4b = -8.0;
                    double v8b = Math.random();
                    double v10b = 16.0;
                    v8b *= v10b;
                    v4b += v8b;
                    v2d += v4b;
                    v2f = (float) v2d;

                    float v3 = v7.a;
                    float v4f = v7.b;
                    float result = com.corrodinggames.rts.gameFramework.f1006.d(v3, v4f, v1, v2f);

                    float v2res = com.corrodinggames.rts.gameFramework.f1006.k(result);
                    float v3res = com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                    v2res *= v3res;
                    e.P = v2res;

                    float v1res = com.corrodinggames.rts.gameFramework.f1006.j(result);
                    float v2res2 = com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                    v1res *= v2res2;
                    e.Q = v1res;

                    e.ap = 6;
                    e.V = 20.0f;
                    e.W = e.V;
                    e.r = true;
                    e.E = 0.8f;
                    e.G = 0.2f;
                    e.F = 1.0f;
                }
            }
        }

        return;
    }

    // ==== from a(ce454_F_Z)V.java ====
    private final strictfp void a(ce454 p1, float p2, boolean p3) {
        float v11 = 10.0f;
        float v10 = 6.0f;
        float v9 = 3.0f;
        float v8 = 0.7f;
        float v1 = 0.0f;

        if (p1 == this) {
            return;
        }
        if (this.bW == -1 || this.bW != p1.bW) {
            return;
        }
        if (this.bS == p1 || p1.bS == this) {
            return;
        }

        float v2 = this.eq + this.cb;
        float v3 = this.er + this.cc;
        float v4 = p1.eq + p1.cb;
        float v5 = p1.er + p1.cc;
        float v0 = com.corrodinggames.rts.gameFramework.f1006.a(v2, v3, v4, v5);
        float v6 = this.cl + p1.cl;

        if (p3) {
            float v7 = v6 * v6;
            if (v0 >= v7) {
                v1 = v0;
            } else {
                v1 = 0.0f;
            }

            if (p1 instanceof bp437) {
                bp437 v0obj = (bp437)p1;
                int v3b = v0obj.aK;
                for (int v2i = 0; v2i < v3b; v2i++) {
                    if (v0obj.aL[v2i] == this) {
                        return;
                    }
                }
            }

            if (this.aL == null) {
                this.aL = new ce454[10];
                this.aM = new float[10];
            }

            ce454[] v3arr = this.aL;
            float[] v4arr = this.aM;

            int v0i = 0;
            while (v0i < this.aK) {
                if (v1 < v4arr[v0i]) {
                    break;
                }
                v0i++;
            }

            if (v0i >= this.aK) {
                v0i = -1;
            }

            if (v0i == -1) {
                int v0byte = this.aK;
                if (v0byte >= v3arr.length) {
                    return;
                }
                v0i = v0byte;
            }

            if (this.aK < v3arr.length) {
                this.aK = (byte)(this.aK + 1);
            }

            for (int v2i = this.aK - 1; v2i > v0i; v2i--) {
                v3arr[v2i] = v3arr[v2i - 1];
            }

            v3arr[v0i] = p1;
            v4arr[v0i] = v1;
            return;
        }

        float v7 = v6 * v6;
        if (v0 >= v7) {
            return;
        }
        if (p1.a(this, p2)) {
            return;
        }
        if (this.a(p1, p2)) {
            return;
        }

        float v7angle = com.corrodinggames.rts.gameFramework.f1006.d(v2, v3, v4, v5);
        float v0sqrt = (float)Math.sqrt((double)v0);
        float v0adj = v6 - v0sqrt + 0.001f;

        if (v0adj <= 0.0f) {
            return;
        }

        int v2int = this.bv();
        int v3int = p1.bv();
        if (v2int <= v3int) {
            v2int = v3int;
        }

        if (v2int != 0) {
            float v2f = v0adj / (float)v2int;
            v2f *= p2;
            if (v2f <= v0adj) {
                v0adj = v2f;
            }
        }

        v0adj *= 0.95f;
        if (v0adj > 1.0f) {
            v0adj *= 0.7f;
        }
        if (v0adj > 3.0f) {
            v0adj = (v0adj - 3.0f) * 0.7f + 3.0f;
        }
        if (v0adj > 6.0f) {
            v0adj = (v0adj - 6.0f) * 0.7f + 6.0f;
        }
        if (v0adj > 10.0f) {
            v0adj = (v0adj - 10.0f) * 0.7f + 10.0f;
        }

        float v2final = v0adj;
        float v6bu = this.bu();
        float v5bu = p1.bu();

        bp437 v0bp = null;
        if (p1 instanceof bp437) {
            v0bp = (bp437)p1;
        }

        float v3mult;
        if (this.bZ == p1.bZ && v0bp != null) {
            boolean v4flag = false;
            v3mult = 1.7f;

            if (this.Y > 200.0f || v0bp.Y > 200.0f) {
                v3mult = 5.0f;
            }

            if (this.af == v0bp) {
                v5bu *= v3mult;
                v4flag = true;
            }
            if (v0bp.af == this) {
                v6bu *= v3mult;
                v4flag = true;
            }

            if (v4flag) {
                v3mult = v6bu;
            } else {
                if (this.ag && v0bp.af != null) {
                    v3mult *= v6bu;
                } else if (v0bp.ag && this.af != null) {
                    v5bu *= v3mult;
                    v3mult = v6bu;
                } else if (this.c == 0.0f && v0bp.c != 0.0f) {
                    v3mult *= v6bu;
                } else if (v0bp.c == 0.0f && this.c != 0.0f) {
                    v5bu *= v3mult;
                    v3mult = v6bu;
                } else {
                    v3mult = v6bu;
                }
            }
        } else {
            v3mult = v6bu;
        }

        if (p1 instanceof bn435) {
            v1 = v3mult / (v3mult + v5bu);
        }

        float v3sin = com.corrodinggames.rts.gameFramework.f1006.k(v7angle);
        float v4cos = com.corrodinggames.rts.gameFramework.f1006.j(v7angle);

        if (p1 instanceof bn435) {
            float v5move = v1 * v2final;
            p1.cb += v3sin * v5move;
            p1.cc += v5move * v4cos;
        }

        float v1other = (1.0f - v1) * v2final;
        this.cb -= v3sin * v1other;
        this.cc -= v1other * v4cos;

        com.corrodinggames.rts.gameFramework.k1104 v1game = com.corrodinggames.rts.gameFramework.k1104.t();
        int v1tick = v1game.bu;

        this.ab = p1;
        this.ac = v1tick;

        if (v0bp == null) {
            return;
        }

        v0bp.ab = this;
        v0bp.ac = v1tick;

        if (this.ae == 0 || this.ae != v0bp.ae) {
            return;
        }

        en734 v1en = this.ap();
        if (v1en == null) {
            v1en = v0bp.ap();
            if (v1en != null) {
                if (v1en.a == eo735.a || v1en.a == eo735.h) {
                    v0bp.as();
                }
            }
        }

        if (v0bp.ap() == null) {
            en734 v0en = this.ap();
            if (v0en != null) {
                if (v0en.a == eo735.a || v0en.a == eo735.h) {
                    this.as();
                }
            }
        }
        return;
    }

    // ==== from a(ce454_I)V.java ====
    public abstract void a(com.corrodinggames.rts.game.units.ce454 arg0, int arg1);

    // ==== from a(ce454_p352)Z.java ====
    public final strictfp boolean a(com.corrodinggames.rts.game.units.ce454 p1, com.corrodinggames.rts.game.p352 p2) {
        boolean v0 = false;
        boolean bqResult = this.bq();
        if (!bqResult) {
            v0 = true;
        }

        float v1 = this.cl + com.corrodinggames.rts.game.units.custom.ag500.p;
        float v2 = 10.0f + v1;

        float v3 = this.eq;
        float v4 = this.eq;
        float v5 = this.er;
        float v6 = this.er;

        com.corrodinggames.rts.game.units.ce454[] v7 = com.corrodinggames.rts.game.units.ce454.bG.c;
        int i = 0;
        int v8 = com.corrodinggames.rts.game.units.ce454.bG.size();

        while (i < v8) {
            com.corrodinggames.rts.game.units.ce454 v9 = v7[i];
            float v10 = v9.eq;
            float v11 = v9.er;

            if ((v3 - v2) <= v10
                    && v10 <= (v4 + v2)
                    && (v5 - v2) <= v11
                    && v11 <= (v6 + v2)
                    && v9 != this) {
                if (v0 || v9.bq()) {
                    if (v9.bX
                            && this.k(v9)
                            && v9 != p1
                            && (p2 == null || v9.d(p2))) {
                        v0 = true;
                        return v0;
                    }
                }
            }

            i++;
        }

        v0 = false;
        return v0;
    }

    // ==== from a(ce454_Z)Z.java ====
    public final strictfp boolean a(com.corrodinggames.rts.game.units.ce454 p1, boolean p2) {
        if (this.bZ == p1.bZ) {
            return false;
        }
        if (!p1.bX) {
            return false;
        }
        if (this.bZ.b(p1.bZ)) {
            return false;
        }
        if (this.R == com.corrodinggames.rts.game.units.a384.d) {
            return false;
        }
        if (this.R == com.corrodinggames.rts.game.units.a384.c) {
            return false;
        }
        if (p1.cP == null) {
            return false;
        }
        if (!this.f(p1)) {
            return false;
        }
        if (!p1.b(this)) {
            return false;
        }
        if (!p2) {
            return true;
        }
        float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, p1.eq, p1.er);
        float range = this.e(false);
        range = range * range;
        return dist < range;
    }

    // ==== from a(el732)Z.java ====
    public final strictfp boolean a(com.corrodinggames.rts.game.units.el732 p1) {
        boolean v1 = true;
        boolean v0 = false;
        com.corrodinggames.rts.game.units.a.s376 v2 = this.a(p1, -1, v1);
        if (v2 == null) {
            return v0;
        }
        if (v2.g(this)) {
            return v0;
        }
        if (v2.b(this)) {
            v0 = v1;
        }
        return v0;
    }

    // ==== from a(el732_I_Z)s376.java ====
    public final strictfp com.corrodinggames.rts.game.units.a.s376 a(com.corrodinggames.rts.game.units.el732 p1, int p2, boolean p3) {
        com.corrodinggames.rts.game.units.a.s376 v1 = null;
        java.util.ArrayList v0 = N();
        if (v0.size() > 0) {
            java.util.Iterator v4 = v0.iterator();
            while (v4.hasNext()) {
                com.corrodinggames.rts.game.units.a.s376 v0Element = (com.corrodinggames.rts.game.units.a.s376) v4.next();
                com.corrodinggames.rts.game.units.el732 v3 = v0Element.y();
                com.corrodinggames.rts.game.units.el732 v2;
                if (p3) {
                    v2 = v0Element.G();
                    if (v2 == null) {
                        v2 = v3;
                    }
                } else {
                    v2 = v3;
                }
                if (v2 == p1 && (p2 == -1 || p2 == v0Element.u())) {
                    if (v0Element.b(this) && v0Element.a(this, false)) {
                        return v0Element;
                    }
                    v1 = v0Element;
                }
            }
        }
        return v1;
    }

    // ==== from a(en734)V.java ====
    public strictfp void a(com.corrodinggames.rts.game.units.en734 p0) {
    }

    // ==== from a(en734_bv443)V.java ====
    private strictfp void a(en734 p1, bv443 p2) {
        float v7 = p1.d();
        float v8 = p1.e();
        float v9 = f1006.a(this.eq, this.er, v7, v8);

        boolean v1 = (p1.a == eo735.k || p1.a == eo735.n);
        boolean v4 = p1.a == eo735.k;
        ce454 v0 = p1.h;

        if (v1) {
            if (v0 == null || v0.bX) {
                this.as();
                p1 = null;
            }
            if (p1 != null && v0 != null && !v0.bL() && this.bZ.b(v0.bZ)) {
                this.as();
                p1 = null;
            }
        }

        if (p1 == null) {
            return;
        }

        float v1f = this.cl;
        if (v1) {
            v1f = v0.cl + v1f;
        }

        if (p1.a == eo735.n) {
            if (this.cM) {
                v1f += 30.0f;
            } else {
                v1f += 50.0f;
            }
        } else {
            if (this.cM) {
                v1f += 80.0f;
            } else {
                v1f += 100.0f;
            }
        }

        v1f *= v1f;
        if (v9 > v1f) {
            this.i = true;
            this.j = v7;
            this.k = v8;
            this.l = 2;
            if (this.q > 90.0f) {
                this.q = 90.0f;
            }
            this.p = 18;
            if (this.af != null && !this.af.by()) {
                p2.d = false;
            }
        } else {
            this.u = 0;
        }
        p2.d = false;

        boolean v1Flag;
        boolean v5Flag = false;

        if (this.T != null && !this.T.bX) {
            if (this.b(this.T, false)) {
                float dist = f1006.a(this.eq, this.er, this.T.eq, this.T.er);
                float range = this.v(this.T);
                boolean within = dist < range * range;
                if (within) {
                    v5Flag = this.Z();
                } else {
                    v5Flag = false;
                }

                if (v9 < 22500.0f) {
                    this.u = 0;
                }

                boolean v1tmp;
                if (!v5Flag) {
                    if (this.u == 1 || v9 > 122500.0f) {
                        this.u = 1;
                        v1tmp = true;
                    } else {
                        v1tmp = false;
                    }
                } else {
                    v1tmp = false;
                }

                if (v9 > 302500.0f || (this.u == 1 && v9 > 202500.0f)) {
                    this.u = 1;
                    v1tmp = true;
                }

                if (v1tmp) {
                    v1Flag = false;
                } else {
                    this.u = 0;
                    if (v5Flag) {
                        this.i = false;
                        v1Flag = true;
                    } else {
                        if (this.q > 90.0f) {
                            this.q = 90.0f;
                        }
                        this.i = true;
                        this.j = this.T.eq;
                        this.k = this.T.er;
                        this.l = 0;
                        this.h = true;
                        v1Flag = true;
                    }
                }
            } else {
                v1Flag = false;
            }
        } else {
            v1Flag = false;
        }

        if (v4 && !v1Flag) {
            ce454 v5 = v0.o(2.0f);
            if (v5 != null) {
                if (!this.b(v5, true)) {
                    v5 = null;
                }
            }
            if (v5 == null && this.u != 1) {
                v5 = this.o(2.0f);
                if (v5 != null) {
                    if (!this.b(v5, true)) {
                        v5 = null;
                    }
                }
            }
            if (v5 != null) {
                if (this.q > 90.0f) {
                    this.q = 90.0f;
                }
                this.i = true;
                this.j = v5.eq;
                this.k = v5.er;
                this.l = 0;
                this.h = true;
                v1Flag = true;
            }
        }

        if (v4 && !v1Flag && this.a(v0)) {
            if (v0.cw < v0.cx || v0.co < 1.0f) {
                if (this.a(v0)) {
                    en734 v2 = this.am();
                    if (v2 != null) {
                        v2.b(v0);
                        v2.m = true;
                        if (this.q > 20.0f) {
                            this.q = 20.0f;
                        }
                        v1Flag = true;
                    }
                }
            }
        }

        if (v4 && !v1Flag && this.ai()) {
            if (v0 instanceof bp437) {
                bp437 v0bp = (bp437) v0;
                ce454 v0new = v0bp.W();
                if (v0new != null && this.a(v0new)) {
                    en734 v1r = this.am();
                    if (v1r != null) {
                        v1r.b(v0new);
                        v1r.m = true;
                        if (this.q > 20.0f) {
                            this.q = 20.0f;
                        }
                    }
                }
            }
        }
    }

    // ==== from a(en734_Z)Z.java ====
    public final strictfp boolean a(com.corrodinggames.rts.game.units.en734 p1, boolean p2) {
        boolean v0 = false;
        if (p1 == null) {
            if (p2) {
                com.corrodinggames.rts.gameFramework.k1104.b("isValidNewWaypoint: Skipping null waypoint");
            }
            return v0;
        }
        com.corrodinggames.rts.game.units.eo735 v1 = p1.a;
        if (v1 == com.corrodinggames.rts.game.units.eo735.c) {
            com.corrodinggames.rts.game.units.el732 v1_2 = p1.b;
            if (v1_2 == null) {
                if (p2) {
                    com.corrodinggames.rts.gameFramework.k1104.b("isValidNewWaypoint: Skipping build waypoint with no buildType");
                }
                return v0;
            }
            com.corrodinggames.rts.game.units.a.s376 v1_3 = this.a(p1.b, p1.d, false);
            if (v1_3 == null) {
                if (p2) {
                    com.corrodinggames.rts.gameFramework.k1104.b("Unit '" + this.q().i() + "' can not queue build:" + p1.b.i());
                }
                return v0;
            }
            if (!p1.n) {
                if (v1_3.g(this)) {
                    if (p2) {
                        com.corrodinggames.rts.gameFramework.k1104.b("Builder '" + this.q().i() + "' tried to queue a locked building:" + v1_3.R());
                    }
                    return v0;
                }
                if (!v1_3.b(this)) {
                    if (p2) {
                        com.corrodinggames.rts.gameFramework.k1104.b("Builder '" + this.q().i() + "' tried to queue a unavailable building:" + v1_3.R());
                    }
                    return v0;
                }
            }
        }
        v0 = true;
        return v0;
    }

    // ==== from a(F)V.java ====
    public strictfp void a(float f) {
        super.a(f);

        if (this.aA) {
            this.aA = false;
        }

        if (this.cn != 0.0f) {
            this.cn = f1006.a(this.cn, f);
        }

        if (!this.bX && this.by()) {
            k1104 k = k1104.t();

            if (this.aB > 0.0f) {
                this.aB = f1006.a(this.aB, f);
            }

            if (this.aC > 0.0f) {
                this.aC = f1006.a(this.aC, f);
            }

            if (this.br != null) {
                p1351 list = this.br;
                if (list != null) {
                    int now = k.bv;
                    Object[] arr = list.a();
                    for (int i = list.a - 1; i >= 0; i--) {
                        a747 item = (a747) arr[i];
                        if (item.a <= now) {
                            list.remove(i);
                        }
                    }
                }
            }

            float oldEq = this.eq;
            float oldEr = this.er;

            int count = this.aU();
            for (int i = 0; i < count; i++) {
                ch457 slot = this.cN[i];

                if (slot.d == 0.0f) {
                    float targetAngle = this.x(i);

                    if (this.b(i, f) && slot.a != targetAngle) {
                        float delta = f1006.c(slot.a, targetAngle, 360.0f);
                        if (f1006.d(delta) < 0.5f) {
                            slot.d = 20.0f;
                            slot.c = 0.0f;
                        } else {
                            this.a(f, targetAngle, i);
                        }
                    }
                } else {
                    slot.d = f1006.a(slot.d, f);
                }
            }

            k1104 k2 = k1104.t();

            if (this.bS != null) {
                this.bS = null;
            }

            if (this.bT != null) {
                this.bU = f1006.a(this.bU, f);
                this.bS = this.bT;
                if (this.bU == 0.0f) {
                    this.bT = null;
                }
            }

            if (this.q != 0.0f) {
                this.q = f1006.a(this.q, f);
            }

            if (this.ch != 0.0f) {
                this.c = f1006.a(this.c, f);
            }

            en734 active = this.ap();

            this.h = false;
            boolean wasI = this.i;
            this.i = false;
            this.r = false;
            this.p = 0x96;

            if (active != null && active.l > 0.0f && active.l < this.X) {
                this.cV();
                active = null;
            }

            bv443 result = bp437.aR;
            result.a = false;
            result.b = false;
            result.c = false;
            result.e = 0.0f;
            result.f = 0.0f;
            result.d = true;

            en734 waypoint = active;

            if (waypoint != null) {
                this.X += f;

                eo735 type = waypoint.a;

                if (type == eo735.move
                        || type == eo735.attackMove
                        || type == eo735.patrol) {
                    float tx = waypoint.d();
                    float ty = waypoint.e();
                    float dist2 = f1006.a(this.eq, this.er, tx, ty);

                    k1104 game = k1104.t();

                    if (!this.aE()) {
                        boolean handled = false;

                        n533 custom = this.cO();
                        if (custom != null && custom.H) {
                            this.bg();
                            handled = true;
                        }

                        if (!handled) {
                            this.cV();

                            en734 other = null;

                            float range = 7.0f;
                            if (dist2 < 1681.0f) {
                                this.aa += f;
                            }
                            if (this.aa > 240.0f) {
                                range = 16.0f;
                            }
                            if (this.aa > 340.0f) {
                                range = 36.0f;
                            }

                            if (other != null && other.a == eo735.patrol) {
                                int mode = this.cU();
                                if (mode != 1) {
                                    range = 20.0f;
                                    float r = 30.0f;
                                    if (!wasI
                                            || this.ac == game.bu
                                            || this.ac == game.bu - 1) {
                                        r = 70.0f;
                                    }
                                    if (dist2 < r * r) {
                                        this.b(other);
                                        this.cV();
                                        other = null;
                                    }
                                } else {
                                    range = 30.0f;
                                    if (!wasI
                                            || this.ac == game.bu
                                            || this.ac == game.bu - 1) {
                                        range = 80.0f;
                                    }
                                }
                            }

                            if (other != null) {
                                if (dist2 < range * range) {
                                    if (other.a == eo735.patrol) {
                                        if (this.cU() == 1) {
                                            // keep other
                                        }
                                    } else if (other.a == eo735.attackMove) {
                                        boolean ok = false;
                                        if (this.T != null
                                                && !this.T.bX
                                                && this.a(this.T, false)) {
                                            ok = true;
                                        }
                                        if (!ok) {
                                            this.cV();
                                            other = null;
                                        }
                                    } else {
                                        this.cV();
                                        other = null;
                                    }
                                } else {
                                    this.i = true;
                                    this.j = tx;
                                    this.k = ty;
                                    this.l = 0;
                                    if (other.a == eo735.patrol) {
                                        this.r = true;
                                        this.av();
                                    }
                                }
                            }

                            if (other != null) {
                                eo735 ot = other.a;
                                if (ot == eo735.attackMove || ot == eo735.patrol) {
                                    if (this.T != null && !this.T.bX) {
                                        if (this.a(this.T, false)) {
                                            this.a(f, this.T, result, true);
                                        }
                                    }
                                    if (this.af != null && this.af.T != null) {
                                        result.d = false;
                                    }
                                }

                                if (other.a == eo735.patrol) {
                                    if (this.T == null) {
                                        ce454 target = this.o(3.0f);
                                        if (target != null && this.b(target, true)) {
                                            if (this.q > 90.0f) {
                                                this.q = 90.0f;
                                            }
                                            this.i = true;
                                            this.j = target.eq;
                                            this.k = target.er;
                                            this.l = 0;
                                            this.h = true;
                                        }
                                    }

                                    if (this.ai()
                                            && game.bu % 10 == (int) (this.ej % 10)) {
                                        en734 created = ab644.a(this, f, 150.0f, true);
                                        if (created != null) {
                                            created.m = false;
                                            created.k = 200.0f;
                                            this.i = false;
                                            this.ax();
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (type == eo735.attack) {
                    // 原 smali 50044 起的 attack waypoint 处理分支
                    k1104 game = k1104.t();
                    int order = this.aO();

                    if (order == b421.d) {
                        if (waypoint != null) {
                            ce454 target = waypoint.h;
                            if (target == null
                                    || target.bX
                                    || target.bZ == this.bZ) {
                                if (!this.au) {
                                    if (this.T != null && this.T.bX) {
                                        this.T = null;
                                    }
                                    this.a(game, f, this.e(true) + 200.0f);
                                    if (this.T != null) {
                                        waypoint.h = this.T;
                                        this.av();
                                        this.ax();
                                    } else {
                                        this.au = true;
                                        this.at = true;
                                    }
                                }
                            }
                        }

                        if (waypoint != null) {
                            ce454 target = waypoint.h;
                            if (target == null
                                    || target.bX
                                    || target.bZ == this.bZ) {
                                if (waypoint.h == null) {
                                    this.as();
                                    waypoint = null;
                                } else if (!this.at) {
                                    this.as();
                                    waypoint = null;
                                }
                            }
                        }

                        if (waypoint != null) {
                            ce454 target = waypoint.h;
                            if (target != null && !target.bX && !target.bL()) {
                                if (this.bZ.b(target.bZ)) {
                                    if (ci458.b(this, target)) {
                                        this.as();
                                    }
                                }
                            }

                            if (waypoint != null
                                    && !this.aE()
                                    && !this.k()) {
                                this.as();
                                waypoint = null;
                            }

                            if (waypoint != null) {
                                this.a(f, waypoint.h, result, false);
                            }
                        }
                    } else {
                        if (waypoint.h == null
                                || waypoint.h.bX
                                || waypoint.h.bZ == this.bZ) {
                            boolean canAttack = true;
                            if (this.cU() > 1) {
                                canAttack = false;
                            }

                            waypoint.h = null;

                            if (canAttack) {
                                if (this.T != null && this.T.bX) {
                                    this.T = null;
                                }
                                this.a(game, f, this.e(true));
                                if (this.T != null) {
                                    waypoint.h = this.T;
                                    this.av();
                                    this.ax();
                                }
                            }

                            if (waypoint.h == null) {
                                this.as();
                                waypoint = null;
                            }
                        }
                    }
                } else if (type == eo735.build) {
                    float tx = waypoint.d();
                    float ty = waypoint.e();
                    float dist2 = f1006.a(this.eq, this.er, tx, ty);
                    k1104 game = k1104.t();

                    el732 buildType = waypoint.b;
                    if (buildType == null) {
                        this.a("activeBuildingType==null, removing waypoint");
                        this.as();
                        waypoint = null;
                    }

                    if (waypoint != null) {
                        float buildDist = this.g(buildType);
                        boolean closeEnough = false;

                        if (buildDist <= 25.0f && this.es > 4.0f) {
                            closeEnough = true;
                        }

                        if (this.af != null) {
                            en734 parent = this.af.ap();
                            if (parent == null || parent.a != eo735.build) {
                                result.d = false;
                            }
                            if (parent != null && !waypoint.b(parent)) {
                                result.d = false;
                            }
                        }

                        boolean mayBuild = ab1322.a(this.S, 0xC8);
                        boolean inRange = buildDist * buildDist >= dist2;
                        boolean tooFar = buildDist > 800000.0f;

                        if (tooFar || inRange || closeEnough) {
                            if (this.aE()) {
                                this.i = true;
                                this.j = tx;
                                this.k = ty;
                                this.l = 0;

                                if (buildDist > 58.0f) {
                                    this.l = (int) ((buildDist - 41.0f)
                                            / (game.bI.n * 1.414f));
                                }
                                if (this.q > 90.0f) {
                                    this.q = 90.0f;
                                }
                                if (this.o > 3) {
                                    this.as();
                                }
                            }
                        } else if (mayBuild) {
                            if (this.u()) {
                                float angle = f1006.d(this.b(f, tx, ty));
                                if (angle > 30.0f) {
                                    // 不处理
                                }
                            }

                            el732 build = waypoint.b;
                            int team = waypoint.d;
                            float bx = waypoint.e;
                            float by = waypoint.f;

                            s376 buildDef = this.a(build, team, false);
                            br439 br;

                            if (buildDef == null) {
                                k1104.b("Unit '" + this.q().i()
                                        + "' can not build:" + build.i());
                                br = bp437.bp.a();
                            } else {
                                if (!waypoint.n) {
                                    if (buildDef.g(this)) {
                                        k1104.b("Builder '" + this.q().i()
                                                + "' tried to build a locked building:"
                                                + buildDef.R());
                                        br = bp437.bp.a();
                                    } else if (!buildDef.b(this)
                                            && !buildDef.h.a()) {
                                        k1104.b("Builder '" + this.q().i()
                                                + "' tried to build a unavailable building:"
                                                + buildDef.R()
                                                + " (add isLocked:false to fix)");
                                        br = bp437.bp.a();
                                    } else {
                                        br = null;
                                    }
                                } else {
                                    br = null;
                                }
                            }

                            if (br == null) {
                                if (!build.k() && !buildDef.x()) {
                                    if (this.bZ.r() >= this.bZ.s()) {
                                        if (this.bZ == game.bp) {
                                            game.bP.a(game.bP.g.al);
                                        }
                                        br = bp437.bp.a();
                                    }
                                }

                                if (br == null) {
                                    ce454 newUnit = ce454.b(build);
                                    if (newUnit == null) {
                                        k1104.d("Build unit type missing: "
                                                + (waypoint.b != null
                                                ? waypoint.b.i()
                                                : "{build is null}"));
                                        br = bp437.bp.a();
                                    } else {
                                        ce454 newUnit2 = f655.h(build);
                                        if (build.u() == null
                                                || buildDef.B() == null
                                                || !b579.b(build.u(), buildDef.B())
                                                || !b579.b(build.B(), buildDef.P())) {
                                            newUnit2.bz = buildDef.B();
                                            newUnit2.bA = buildDef.P();
                                        }

                                        if (buildDef instanceof h365) {
                                            newUnit2.bz = null;
                                            newUnit2.bA = null;
                                        }

                                        newUnit2.co = 0.0f;
                                        newUnit2.cp = 0.0f;

                                        game.bI.b(bx - newUnit2.cB() + 1.0f,
                                                by - newUnit2.cC() + 1.0f);
                                        newUnit2.eq = game.bI.U + newUnit2.cB();
                                        newUnit2.er = game.bI.V + newUnit2.cC();
                                        newUnit2.f(this.bZ);
                                        newUnit2.s(this);

                                        if (team != 1 && newUnit2 instanceof bp437) {
                                            ((bp437) newUnit2).a(team);
                                        }

                                        newUnit2.cs();

                                        boolean canPlace = true;
                                        if (newUnit2 instanceof bp437) {
                                            bp437 b = (bp437) newUnit2;
                                            ce454 owner = null;
                                            if (this.aj()) {
                                                owner = this;
                                            } else if (!this.bV && !this.bq()) {
                                                owner = this;
                                            }
                                            if (!b.a(owner, null)) {
                                                canPlace = false;
                                            } else {
                                                canPlace = b.a(true, null) == null;
                                            }
                                        }

                                        if (!canPlace) {
                                            newUnit2.a();
                                            br = bp437.bp.a();
                                            ((bp437) newUnit2).dm();
                                        } else {
                                            b579 price = buildDef.B();
                                            if (waypoint.n) {
                                                price = b579.a;
                                            }
                                            if (!price.c(this)) {
                                                newUnit2.a();
                                                br = bp437.bp.a();
                                                this.S = game.bv;
                                                if (this.X < 1000.0f) {
                                                    br.c = true;
                                                    a917 area = a917.a(this.bZ,
                                                            newUnit2.eq, newUnit2.er);
                                                    if (area != null) {
                                                        area.i = true;
                                                    }
                                                }
                                            } else {
                                                this.h(newUnit2);
                                                if (newUnit2 instanceof bp437) {
                                                    bp437 b = (bp437) newUnit2;
                                                    b.ba();
                                                    if (newUnit2.bq()) {
                                                        game.bR.a(b);
                                                    }
                                                }
                                                p352.c(newUnit2);
                                                br = bp437.bp.a();
                                                br.a = newUnit2;
                                                br.d = buildDef;
                                            }
                                        }
                                    }
                                }
                            }

                            ce454 built = null;
                            if (br.a != null) {
                                built = br.a;
                            } else if (br.b != null) {
                                built = br.b;
                            }

                            if (built != null) {
                                br.d.a(this, built);
                                if (this.a(built)) {
                                    if (this.w() > 10000.0f) {
                                        built.p(1.0f);
                                        this.cV();
                                    } else {
                                        waypoint.b();
                                        waypoint.a = eo735.repair;
                                        waypoint.h = built;
                                        this.ax();
                                    }
                                } else {
                                    this.as();
                                }
                                this.S = -0x270F;
                            } else {
                                if (waypoint.b == null) {
                                    k1104.d("active.build==null");
                                }
                                if (!br.c) {
                                    this.as();
                                }
                            }
                        }
                    }
                } else if (type == eo735.repair || type == eo735.reclaim) {
                    // 原 smali 50052 起的 repair/reclaim 分支
                    k1104 game = k1104.t();

                    if (waypoint != null) {
                        float tx = waypoint.d();
                        float ty = waypoint.e();
                        float dist2 = f1006.a(this.eq, this.er, tx, ty);

                        boolean reclaimTargetValid = waypoint.a == eo735.reclaim
                                && waypoint.h != null
                                && waypoint.h.f() > 0.0f;

                        en734 cur = waypoint;
                        boolean repairing = waypoint.h != null
                                && !waypoint.h.bX
                                && waypoint.h.cP != null;

                        if (repairing) {
                            if (reclaimTargetValid) {
                                // keep
                            } else {
                                this.cV();
                                cur = null;
                            }
                        }

                        if (cur != null && reclaimTargetValid && cur.h != null) {
                            if (this.g < game.bv - 100) {
                                boolean ok = this.e(cur.h, false);
                                if (!ok) {
                                    this.g = game.bv;
                                }
                            }
                        }

                        if (cur != null && cur.h != null) {
                            ce454 target = cur.h;

                            if (target.f() > 0.0f
                                    && target.cw >= target.cx
                                    && target.co >= 1.0f) {
                                this.cV();
                                cur = null;
                            }

                            if (cur != null && target == this) {
                                this.as();
                                cur = null;
                            }

                            if (cur != null && target.f() != 0.0f) {
                                if (cur.a == eo735.repair) {
                                    this.as();
                                    cur = null;
                                }
                            }

                            if (cur != null && cur.a == eo735.reclaim
                                    && target.bZ != this.bZ
                                    && target.f() == 0.0f) {
                                boolean crossTeam = true;
                                if (game.G() && this.bZ.c(target.bZ)) {
                                    crossTeam = false;
                                }
                                if (crossTeam) {
                                    this.as();
                                    cur = null;
                                }
                            }
                        }

                        if (cur != null) {
                            if (cur.a == eo735.reclaim) {
                                int range = this.n(cur.h);
                                boolean allowed = this.bY();
                                // 后续移动/回收逻辑
                            } else {
                                int range = this.m(cur.h);
                                boolean allowed = this.bZ();
                            }
                        }
                    }
                } else if (type == eo735.loadInto) {
                    float tx = waypoint.d();
                    float ty = waypoint.e();
                    float dist2 = f1006.a(this.eq, this.er, tx, ty);

                    if (waypoint.h == null || waypoint.h.bX) {
                        this.as();
                        waypoint = null;
                    }

                    if (waypoint != null && waypoint.h != null) {
                        if (!waypoint.h.c(this, false)) {
                            this.as();
                        }
                    }

                    if (waypoint != null) {
                        this.bS = waypoint.h;
                        ce454 target = waypoint.h;

                        boolean inRange = false;
                        if (target.bq()) {
                            if (dist2 < 961.0f) {
                                this.aa += f;
                            }
                            if (this.aa > 240.0f) {
                                inRange = true;
                            }

                            float range = 21.0f;
                            if (target.bH().isEmpty()) {
                                range = 11.0f;
                            }
                            if (this.b > 0.0f) {
                                range = target.cl + 31.0f;
                            }
                            if (dist2 < range * range) {
                                inRange = true;
                            }
                        } else {
                            if (dist2 < 441.0f) {
                                inRange = true;
                            }
                        }

                        if (!inRange) {
                            this.i = true;
                            this.j = tx;
                            this.k = ty;
                            if (this.q > 90.0f) {
                                this.q = 90.0f;
                            }
                            this.p = 18;
                            if (dist2 < 48400.0f) {
                                result.d = false;
                                if (this.q > 0.0f && this.aW == null) {
                                    this.h = true;
                                }
                            }
                            if (this.af != null && !this.af.by()) {
                                result.d = false;
                            }
                        } else {
                            target.d(this, false);
                            this.as();
                        }
                    }
                } else if (type == eo735.unloadAt) {
                    float tx = waypoint.d();
                    float ty = waypoint.e();
                    float dist2 = f1006.a(this.eq, this.er, tx, ty);

                    if (waypoint.h == null
                            || waypoint.h.bX
                            || !waypoint.h.by()) {
                        this.as();
                        waypoint = null;
                    }

                    if (waypoint != null && !this.c(waypoint.h, false)) {
                        this.as();
                    }

                    if (waypoint != null) {
                        this.bS = waypoint.h;
                        if (dist2 > 441.0f) {
                            this.i = true;
                            this.j = tx;
                            this.k = ty;
                            if (this.q > 90.0f) {
                                this.q = 90.0f;
                            }
                            this.p = 18;
                            if (dist2 < 72900.0f) {
                                result.d = false;
                                if (this.q > 0.0f && this.aW == null) {
                                    this.h = true;
                                }
                            }
                            if (this.af != null && !this.af.by()) {
                                result.d = false;
                            }
                        } else {
                            waypoint.h.d(this, false);
                            this.as();
                        }
                    }
                } else if (type == eo735.touchTarget) {
                    this.a(f, waypoint, result);
                } else if (type == eo735.guard
                        || type == eo735.guardAt
                        || type == eo735.follow) {
                    this.a(waypoint, result);
                } else if (type == eo735.triggerAction
                        || type == eo735.triggerActionWhenInRange) {
                    this.c(waypoint);
                } else if (type == eo735.setPassiveTarget) {
                    ce454 target = waypoint.f();
                    if (target != null) {
                        this.T = target;
                        if (this.V > 5.0f) {
                            this.V = 5.0f;
                        }
                        this.as();
                    }
                }
            }

            if (waypoint != this.ap()) {
                waypoint = null;
            }

            this.f = result.a;

            if (waypoint != null && waypoint.m && this.O > 1) {
                boolean keep = true;
                en734 next = this.cT();
                if (next != null
                        && (next.a == eo735.guard || next.a == eo735.patrol)) {
                    keep = false;
                }
                if (keep) {
                    this.as();
                    waypoint = null;
                }
            }

            if (waypoint == null) {
                this.i = false;
            }

            if (this.i) {
                n533 custom = this.cO();
                if (custom != null && custom.H) {
                    this.bg();
                }
            } else {
                if (this.o != 0) {
                    this.o = 0;
                }
            }

            this.a(k2, f);
            this.a(k2, f, waypoint, result);

            for (int i = 0; i < count; i++) {
                ch457 slot = this.cN[i];
                if (slot.e != 0.0f) {
                    slot.e = f1006.a(slot.e, f);
                }
            }

            boolean aS = this.aS();
            boolean hasExtraVelocity = this.ce != 0.0f || this.cf != 0.0f;

            if ((this.ch != 0.0f || hasExtraVelocity) && this.H()) {
                float angle = this.ci;
                float speed = this.y();

                if (this.aT()) {
                    angle = this.cj;
                }

                if (!aS) {
                    float move = this.ch * speed;
                    float step = move * f;

                    float dx = f1006.k(angle) * step;
                    float dy = f1006.j(angle) * step * this.aK();

                    float nx = oldEq + dx;
                    float ny = oldEr + dy;

                    if (hasExtraVelocity) {
                        nx += this.ce * f;
                        ny += this.cf * f * this.aK();

                        float v2 = f1006.a(0.0f, 0.0f, this.ce, this.cf);
                        if (v2 > speed * speed) {
                            this.ce -= this.ce * 0.05 * f;
                            this.cf -= this.cf * 0.05 * f;
                        }

                        this.ce = f1006.a(this.ce, 0.0f, speed * 0.5f * f);
                        this.cf = f1006.a(this.cf, 0.0f, speed * 0.5f * f);
                    }

                    oldEq = nx;
                    oldEr = ny;
                } else {
                    float maxSpeed = this.B() * 1.41f;
                    float move = this.ch * speed;

                    float dx = 0.0f;
                    float dy = 0.0f;

                    if (this.ch != 0.0f) {
                        dx = f1006.k(angle) * move;
                        dy = f1006.j(angle) * move;
                    } else {
                        maxSpeed = this.C() * 1.41f;
                    }

                    float v2 = f1006.a(this.ce, this.cf, dx, dy);
                    if (v2 > speed * speed) {
                        this.ce -= this.ce * 0.05 * f;
                        this.cf -= this.cf * 0.05 * f;
                    }

                    float step = maxSpeed * f;
                    if (v2 < step * step) {
                        this.ce = dx;
                        this.cf = dy;
                    } else {
                        float ang = f1006.d(this.ce, this.cf, dx, dy);
                        this.ce += f1006.k(ang) * step;
                        this.cf += f1006.j(ang) * step;
                    }

                    oldEq = this.eq + this.ce * f;
                    oldEr = this.er + this.cf * f * this.aK();
                }

                this.aA = true;
            } else {
                oldEq = this.eq;
                oldEr = this.er;
            }

            if (this.cb != 0.0f || this.cc != 0.0f) {
                this.cb = f1006.b(this.cb, -9.0f, 9.0f);
                this.cc = f1006.b(this.cc, -9.0f, 9.0f);

                oldEq += this.cb;
                oldEr += this.cc;

                this.cc = 0.0f;
                this.cb = 0.0f;
                this.aA = true;
            }

            if (this.aA && this.H() && this.cQ == null) {
                this.a(f, k, oldEq, oldEr);
            }

            if (this.az) {
                this.az = false;
                this.a(false);
                this.aA = true;
            }
        }
    }

    // ==== from a(F_bv443_en734_Z)V.java ====
    private strictfp void a(float p1, com.corrodinggames.rts.game.units.bv443 p2, com.corrodinggames.rts.game.units.en734 p3, boolean p4) {
        float v2c = 0.0f;
        float v3f = 0.0f;
        com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (this.i && p2.b && p4) {
            float v7 = p2.e;
            float v8 = p2.f;
            float v9f = this.y();
            float v10 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v7, v8);
            float v4f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v7, (v8 - this.er) * this.aL() + this.er);
            boolean v2b = false;
            float v5f = this.aM();
            if (v5f > 0.95f) {
                v2b = true;
            } else if (v5f > 0.87) {
                if (this.aj <= 1 && this.ay > 0 && this.ay <= 9 && this.ag && v10 < 250000.0f) {
                    v2b = true;
                }
            } else if (v5f > 0.7) {
                if (this.aj <= 1 && this.ay > 0 && this.ay <= 4 && this.ag && v10 < 40000.0f) {
                    v2b = true;
                }
            } else if (v5f > 0.4) {
                if (this.aj <= 1 && this.ay > 0 && this.ay <= 2 && this.ag && v10 < 10000.0f) {
                    v2b = true;
                }
            }
            if (this.T != null && this.D() && this.aT() && !this.aI()) {
                this.cj = v4f;
                v5f = 179.0f;
            } else if (this.aB < 0.0f) {
                v5f = this.a(p1, v4f, true, v2b);
            } else {
                v5f = 179.0f;
            }
            float v2f = 20.0f;
            if (v10 > 361.0f) {
                v2f = 46.0f;
            }
            if (v10 > 3600.0f) {
                v2f = 89.0f;
            }
            v4f = this.z();
            if (v4f >= 1.4) {
                if (v10 > 6400.0f) {
                    v2f *= 0.5f;
                } else {
                    v2f = 17.0f;
                }
            }
            if (v9f > 5.0f && this.ch >= 0.01f) {
                v2f = 1.0f;
            }
            if (v4f >= 1.1) {
                v2f *= 0.7f;
            }
            if (this.ch > 0.4f && v10 > 16900.0f) {
                v2f = 180.0f;
            }
            if (this.aT()) {
                v2f = 181.0f;
            }
            boolean v4b = this.ay == 1;
            v3f = 0.0f;
            if (!v4b || v10 < 16.0f) {
                float v5d = com.corrodinggames.rts.gameFramework.f1006.d(v5f);
                if (v5d < v2f) {
                    v2f = 1.0f;
                    if (p2.c) {
                        if (v10 >= 2500.0f) {
                            v2f = 0.85f;
                        }
                        if (v10 >= 900.0f) {
                            v2f -= 0.15f;
                        }
                        if (v10 >= 225.0f) {
                            v2f -= 0.3f;
                        }
                        v3f = v2f;
                    } else {
                        if (this.af != null) {
                            if (v10 > 400.0f) {
                                v2f = 1.2f;
                            }
                            if (v10 >= 49.0f) {
                                v2f -= 0.15f;
                            }
                            if (v10 >= 9.0f) {
                                v2f -= 0.15f;
                            }
                            v3f = v2f;
                        } else {
                            v3f = v2f;
                        }
                    }
                    if (v10 >= 9.0f) {
                        v3f = 0.0f;
                    }
                }
            }
            if (v4b && v3f != 0.0f) {
                if (v10 >= 324.0f) {
                    if (this.C() >= 0.13f && this.y() > 1.0f) {
                        v3f *= 0.5f;
                    }
                }
                if (v10 >= 169.0f) {
                    if (this.C() >= 0.15f && this.y() > 0.9f) {
                        v3f *= 0.5f;
                    }
                }
                if (v9f > 5.0f) {
                    if (v10 >= 324.0f && v3f > 0.5f) {
                        v3f = 0.5f;
                    }
                    if (v10 >= 81.0f && v3f > 0.25f) {
                        v3f = 0.25f;
                    }
                }
            }
            boolean v2b2 = false;
            if (!v4b && v10 >= 256.0f) {
                v2b2 = true;
            }
            if (v4b && v10 >= 16.0f) {
                v2b2 = true;
            }
            int ac = this.ac;
            int bu = v6.bu;
            if (ac == bu || ac == bu - 1) {
                if (this.ab != null && this.ab.a(v7, v8, 2.0f)) {
                    v2b2 = true;
                }
            }
            if (v3f > 0.0f) {
                this.Y += p1;
                if (this.Y > 200.0f && v10 >= 3600.0f && this.ay >= 2) {
                    float y = this.Y;
                    this.dh();
                    this.Y = y;
                }
                if (this.Y > 600.0f && this.ay >= 2 && this.aw == null) {
                    this.ax();
                }
                if (this.Y > 80.0f && this.b > 30.0f) {
                    this.ax();
                }
                if (this.Y > 40.0f && this.ay >= 2 && this.aw == null) {
                    com.corrodinggames.rts.game.units.bx445 v5bx = this.ax[1];
                    float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v5bx.a, v5bx.b);
                    if (dist >= v10) {
                        float y = this.Y;
                        this.dh();
                        this.Y = y;
                    }
                }
            }
            if (v2b2) {
                this.dh();
                if (v4b) {
                    this.d = 0.0f;
                    this.c = 0.0f;
                    if (!this.s && this.af == null && p3 != null && p3.a == com.corrodinggames.rts.game.units.eo735.a) {
                        this.cV();
                    }
                }
            }
            v2c = v3f;
        } else {
            v2c = 0.0f;
        }
        if (this.ck && !this.aT()) {
            v2c = -v2c * this.aM();
        }
        if (this.aB > 0.0f) {
            v2c = 0.0f;
        }
        if (!this.aS()) {
            if (this.ch >= v2c) {
                this.ch = com.corrodinggames.rts.gameFramework.f1006.a(this.ch, v2c, this.B() * p1);
            }
            if (this.ch > v2c) {
                this.ch = com.corrodinggames.rts.gameFramework.f1006.a(this.ch, v2c, this.C() * p1);
            }
        } else {
            this.ch = v2c;
        }
        this.cM = p2.b && p4;
    }

    // ==== from a(F_bx445_bv443_en734)V.java ====
    private strictfp void a(float p1, com.corrodinggames.rts.game.units.bx445 p2, com.corrodinggames.rts.game.units.bv443 p3, com.corrodinggames.rts.game.units.en734 p4) {
        com.corrodinggames.rts.gameFramework.k1104 k = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.units.bp437 v5 = this.af;
        float targetX = v5.eq + this.am;
        float targetY = v5.er + this.an;
        int v6 = k.bv - v5.ap;
        float v7 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, targetX, targetY);

        if (v6 > 300 || this.b > 1.0f) {
            this.d += p1;
        }

        boolean flag = false;
        if (this.d > 300.0f) {
            flag = true;
        }
        if (v6 > 300 && v7 > 250000.0f) {
            flag = true;
        }
        if (this.b > 1.0f) {
            if (this.c != 0.0f) {
                flag = true;
            }
            if (this.d > 10.0f) {
                flag = true;
            }
        }
        if (flag) {
            this.c = 90.0f;
        }

        if (this.c == 0.0f) {
            this.ax();
            p3.e = targetX;
            p3.f = targetY;

            com.corrodinggames.rts.game.units.bx445 target = null;
            if (v6 < 3000 && v5.t > 2 && (v5.t - v5.ay) <= 2) {
                target = v5.R(2);
            }
            if (v6 < 1500 && target == null && v5.t > 0 && v5.ay >= v5.t) {
                com.corrodinggames.rts.game.units.bx445 point = v5.R(0);
                float angle = com.corrodinggames.rts.gameFramework.f1006.d(v5.eq, v5.er, point.a, point.b);
                float radius = 80.0f;
                if (v6 > 300) {
                    radius = 80.0f - ((float) (v6 - 300) * 0.06666667f);
                }
                com.corrodinggames.rts.game.units.bx445 staticTarget = com.corrodinggames.rts.game.units.bp437.aY;
                staticTarget.a = v5.eq + com.corrodinggames.rts.gameFramework.f1006.k(angle) * radius;
                staticTarget.b = v5.er + com.corrodinggames.rts.gameFramework.f1006.j(angle) * radius;
                target = staticTarget;
            }

            if (target != null) {
                p3.c = true;
                p3.e = target.a + this.am;
                p3.f = target.b + this.an;
            } else {
                if (v5.t >= 2 && v5.ay > 0) {
                    com.corrodinggames.rts.game.units.bx445 start;
                    com.corrodinggames.rts.game.units.bx445 end;
                    if (v5.ay >= 2) {
                        start = v5.R(0);
                        end = v5.R(1);
                    } else {
                        start = v5.R(0);
                        end = v5.R(0);
                    }
                    if (start != null && end != null) {
                        int angleInt = com.corrodinggames.rts.gameFramework.f1006.c(v5.eq, v5.er, start.a, start.b);
                        float fraction = (float) angleInt;
                        fraction = 1.0f - ((fraction - 15.0f) * 0.05f);
                        if (fraction > 2.0f) {
                            fraction = 2.0f;
                        }
                        if (fraction < 0.0f) {
                            fraction = 0.0f;
                        }

                        float dispX;
                        float dispY;
                        if (fraction > 1.0f) {
                            if (v5.ay >= 3) {
                                com.corrodinggames.rts.game.units.bx445 extra = v5.R(2);
                                float t = fraction - 1.0f;
                                dispX = t * (extra.a - end.a) + (end.a - start.a);
                                dispY = t * (extra.b - end.b) + (end.b - start.b);
                            } else {
                                dispX = end.a - start.a;
                                dispY = end.b - start.b;
                            }
                        } else {
                            dispX = (end.a - start.a) * fraction;
                            dispY = (end.b - start.b) * fraction;
                        }
                        p3.e = start.a + this.am + dispX;
                        p3.f = start.b + this.an + dispY;
                    }
                }
            }

            float threshold;
            if (this.b > 1.0f) {
                threshold = 45.0f;
                if (v6 < 500) {
                    if (!(this.b > 1.0f)) {
                        threshold = 110.0f;
                    }
                }
            } else {
                threshold = 60.0f;
            }
            float thresholdSq = threshold * threshold;
            if (v7 < thresholdSq) {
                this.d = 0.0f;
            }

            boolean near = false;
            com.corrodinggames.rts.game.units.en734 currentTarget = v5.ap();
            if (currentTarget == null) {
                this.e += p1;
                boolean special = false;
                if (p4 != null) {
                    if (p4.a == com.corrodinggames.rts.game.units.eo735.a || p4.a == com.corrodinggames.rts.game.units.eo735.h || p4.a == com.corrodinggames.rts.game.units.eo735.j) {
                        special = true;
                    }
                }
                float radius;
                if (special && this.e > 600.0f) {
                    radius = 260.0f;
                } else if (special && this.e > 360.0f) {
                    radius = 140.0f;
                } else if (special && this.e > 180.0f) {
                    radius = 70.0f;
                } else if (special && this.e > 120.0f) {
                    radius = 50.0f;
                } else {
                    radius = 16.0f;
                }
                float radiusSq = radius * radius;
                if (v7 < radiusSq) {
                    near = true;
                }
            }

            if (!near) {
                p3.b = true;
                return;
            }

            boolean v1b = (currentTarget == null);
            if (v1b) {
                float f = this.a(p1, this.ao);
                f = com.corrodinggames.rts.gameFramework.f1006.d(f);
                if (f < 3.0f) {
                    if (p4 != null) {
                        if (p4.a == com.corrodinggames.rts.game.units.eo735.a || p4.a == com.corrodinggames.rts.game.units.eo735.h) {
                            this.as();
                            if (v5 != null) {
                                boolean contains = false;
                                com.corrodinggames.rts.game.units.en734 a = this.ap();
                                com.corrodinggames.rts.game.units.en734 b = v5.ap();
                                if (a != null && b != null && a.b(b)) {
                                    contains = true;
                                }
                                if (!contains) {
                                    this.a((com.corrodinggames.rts.game.units.bp437) null);
                                }
                            }
                        }
                    }
                }
            }
            return;
        } else {
            com.corrodinggames.rts.game.units.bx445 target = null;
            if (v5.t > 2 && 8 < v5.ay) {
                target = v5.R(8);
            }
            if (target == null) {
                target = com.corrodinggames.rts.game.units.bp437.aY;
                target.a = v5.eq;
                target.b = v5.er;
            }
            float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, target.a, target.b);
            float radius = this.cl + v5.cl + 15.0f;
            float radiusSq = radius * radius;
            if (dist < radiusSq) {
                this.d = 0.0f;
                this.c = 0.0f;
            }

            if (this.aW == null && p2 != null) {
                if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - target.a) > 300.0f || com.corrodinggames.rts.gameFramework.f1006.d(this.n - target.b) > 300.0f) {
                    if (this.q > 30.0f) {
                        this.q = 30.0f;
                    }
                }
            }

            if (this.q == 0.0f && this.aW == null) {
                this.q = 700.0f;
                this.a(target.a, target.b, 0, false, false);
            }

            if (p2 != null) {
                p3.e = p2.a;
                p3.f = p2.b;
                p3.b = true;
            }
            return;
        }
    }

    // ==== from a(F_ce454_bv443_Z)V.java ====
    private strictfp void a(float p1, com.corrodinggames.rts.game.units.ce454 p2, com.corrodinggames.rts.game.units.bv443 p3, boolean p4) {
        int v3 = this.aO();
        float v4 = p2.eq;
        float v5 = p2.er;
        float v6 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v4, v5);

        if (this.af != null) {
            if (v6 < 490000.0f) {
                if (v6 < 48400.0f) {
                    p3.d = false;
                }
                float v0 = com.corrodinggames.rts.gameFramework.f1006.a(this.af.eq, this.af.er, v4, v5);
                if (v0 < 10.0f) {
                    p3.d = false;
                }
                if (v0 < 270400.0f && this.aI()) {
                    p3.d = false;
                }
            }
            if (this.af.T == p2) {
                p3.d = false;
            }
            if (p3.d) {
                this.ak = 0.0f;
            } else {
                this.ak += p1;
            }
        } else {
            this.ak = 500.0f;
        }

        float v0 = this.v(p2);
        boolean v7;
        if (v6 < v0 * v0) {
            if (this.T != p2) {
                if (com.corrodinggames.rts.game.units.ci458.a(this, p2)) {
                    this.T = p2;
                    this.U = 10.0f;
                    this.H(-1);
                }
            } else {
                this.U = 10.0f;
            }

            if (!this.D()) {
                v0 -= 1.0f;
                if (this.aI()) {
                    v0 -= 2.0f;
                }
                if (this.e(0) > 5.0f) {
                    v0 -= 3.0f;
                }
            }

            if (v6 < v0 * v0) {
                if (this.aO() == com.corrodinggames.rts.game.units.b421.d) {
                    v7 = true;
                } else if (p2 == null) {
                    v7 = false;
                } else if (this.e(p2)) {
                    if (p4) {
                        this.i = false;
                    }
                    v7 = false;
                } else {
                    v7 = this.u(p2);
                }
            } else {
                v7 = true;
            }
        } else {
            v7 = true;
        }

        if (!v7) {
            return;
        }

        this.i = true;
        this.j = v4;
        this.k = v5;
        this.l = 0;
        if (v3 == com.corrodinggames.rts.game.units.b421.d) {
            this.c(v6, v4, v5);
        }
        this.l = this.j(p2);
        if (this.q > 90.0f) {
            this.q = 90.0f;
        }
        if (v6 < 810000.0f) {
            if (this.bU() || this.aI()) {
                this.h = true;
            }
            if (!p3.d && this.ak < 120.0f) {
                this.q = 0.1f;
                this.h = true;
            }
        }
    }

    // ==== from a(F_en734_bv443)V.java ====
    private strictfp void a(float p1, com.corrodinggames.rts.game.units.en734 p2, com.corrodinggames.rts.game.units.bv443 p3) {
        float v4 = p2.d();
        float v5 = p2.e();
        float v6 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v4, v5);
        if (p2.h == null || !p2.h.bX) {
            this.as();
            p2 = null;
        }
        if (p2 != null) {
            boolean v0;
            if (!p2.h.bq()) {
                float v0f = p2.h.cl + this.cl + 5.0f;
                v0f *= v0f;
                if (v6 < v0f) {
                    v0 = true;
                } else {
                    v0 = false;
                }
            } else {
                if (v6 >= 961.0f) {
                    this.aa += p1;
                }
                if (this.aa > 240.0f) {
                    v0 = true;
                } else {
                    v0 = false;
                }
                float v3 = 21.0f;
                if (p2.h.bH().isEmpty()) {
                    v3 = 11.0f;
                }
                if (this.b > 0.0f) {
                    v3 = p2.h.cl + this.cl + 31.0f;
                }
                v3 *= v3;
                if (v6 < v3) {
                    v0 = true;
                }
            }
            if (!v0) {
                this.i = true;
                this.j = v4;
                this.k = v5;
                this.l = 0;
                if (p2.h.bq()) {
                    android.graphics.Rect v3rect = p2.h.bH();
                    int v4i = v3rect.height() / 2;
                    int v3i = v3rect.width() / 2;
                    int v3l = com.corrodinggames.rts.gameFramework.f1006.c(v4i, v3i);
                    v3l += 1;
                    this.l = v3l;
                }
                if (this.q > 90.0f) {
                    this.q = 90.0f;
                }
                this.p = 18;
                if (v6 >= 48400.0f) {
                    p3.d = false;
                    if (this.q > 0.0f && this.dd() == null) {
                        this.h = true;
                    }
                }
                if (this.af != null && !this.af.by()) {
                    p3.d = false;
                }
            }
            if (v0) {
                com.corrodinggames.rts.game.units.ce454 v0obj = p2.h;
                this.a(com.corrodinggames.rts.game.units.custom.af499.i, v0obj);
                this.as();
            }
        }
        return;
    }

    // ==== from a(F_F)F.java ====
    public final strictfp float a(float f, float f2) {
        boolean v0;
        boolean v3;
        if (this.ck) {
            if (this.dl()) {
                v0 = true;
                v3 = true;
            } else {
                v0 = false;
                v3 = false;
            }
        } else {
            v0 = false;
            v3 = false;
        }
        return a(f, f2, v0, v3);
    }

    // ==== from a(F_F_I)F.java ====
    public final strictfp float a(float p1, float p2, int p3) {
        com.corrodinggames.rts.game.units.ch457 v6 = this.cN[p3];
        float v0 = com.corrodinggames.rts.gameFramework.f1006.c(v6.a, p2, 360.0f);
        if (v0 == 0.0f) {
            return v0;
        }
        float v7 = r(p3);
        if (v7 <= 0.0f) {
            float v1 = com.corrodinggames.rts.gameFramework.f1006.c(v6.a, p2, c(p3) * p1);
            a(p3, v1);
            v0 -= v1;
            return v0;
        }
        float v8 = t(p3);
        float v1;
        if (v0 > 0.0f) {
            v1 = 1.0f;
        } else {
            v1 = -1.0f;
        }
        float v9 = com.corrodinggames.rts.gameFramework.f1006.d(v6.c) / v8;
        boolean v2 = v0 > 0.0f;
        boolean v5 = v6.c > 0.0f;
        boolean v3 = v2 == v5;
        if (com.corrodinggames.rts.gameFramework.f1006.d(v0) < v9 && v3) {
            v6.c = com.corrodinggames.rts.gameFramework.f1006.a(v6.c, v1 * v8, v8 * p1);
        } else {
            v6.c = com.corrodinggames.rts.gameFramework.f1006.a(v6.c, v1 * c(p3), v7 * p1);
        }
        float v1_2 = v6.c * p1;
        if (com.corrodinggames.rts.gameFramework.f1006.d(v1_2) > com.corrodinggames.rts.gameFramework.f1006.d(v0)) {
            v6.c = 0.0f;
            v1_2 = v0;
        }
        a(p3, v1_2);
        v0 -= v1_2;
        return v0;
    }

    // ==== from a(F_F_I_Z_Z)V.java ====
    private strictfp void a(float p1, float p2, int p3, boolean p4, boolean p5) {
        com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.gameFramework.k.k1099 v2 = v6.bR;
        com.corrodinggames.rts.game.b.b326 v7 = v6.bI;

        this.cM = true;

        boolean v0 = false;
        boolean v1 = false;

        if (this.bU()) {
            v0 = true;
        }

        v7.a(this.eq, this.er);
        int v3 = v7.U;
        int v4 = v7.V;

        boolean v5Result = v2.a(this.g(), v3, v4);
        boolean v2Flag;
        if (v5Result) {
            boolean v2Result = v2.b(this.g(), v3, v4);
            if (!v2Result) {
                v2Flag = true;
                v0 = true;
                v1 = true;
            } else {
                v2Flag = v0;
            }
        } else {
            v2Flag = v0;
        }

        if (p1 != this.m || this.n != p2) {
            this.o = 0;
        }
        this.m = p1;
        this.n = p2;

        if (v2Flag) {
            this.s = false;
            this.ay = 0;
            this.aw = null;

            float v2f = v7.a(p1);
            float v0f = v7.b(p2);

            if (v1) {
                float v3f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v2f, v0f);
                v0f = com.corrodinggames.rts.gameFramework.f1006.b(this.eq, this.er, v2f, v0f);

                if (v0f > 60.0f) {
                    v0f = 60.0f;
                    this.s = true;

                    if (this.q > 10.0f) {
                        this.q = 10.0f;
                    }
                }

                float v1f = this.eq + com.corrodinggames.rts.gameFramework.f1006.k(v3f) * v0f;
                v0f = this.er + com.corrodinggames.rts.gameFramework.f1006.j(v3f) * v0f;

                this.a(this.ay, v1f, v0f);
            } else {
                this.a(this.ay, v2f, v0f);
            }

            this.ay = this.ay + 1;
            this.t = this.ay;
            return;
        }

        int v5 = 0;
        if (p4) {
            v5 = 3;
        }

        boolean v0Result = com.corrodinggames.rts.game.units.ci458.a(this.g(), this.eq, this.er, p1, p2, v5);

        if (v0Result) {
            this.s = false;
            this.ay = 0;
            this.aw = null;

            float v4f = v7.a(p1);
            float v5f = v7.b(p2);
            float v2f = this.eq;
            float v3f = this.er;

            float v0f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v4f, v5f);
            float v1f = com.corrodinggames.rts.gameFramework.f1006.b(this.eq, this.er, v4f, v5f);

            float v6f = com.corrodinggames.rts.gameFramework.f1006.k(v0f);
            float v7f = com.corrodinggames.rts.gameFramework.f1006.j(v0f);

            int v8 = (int)(0.05f * v1f - 1.0f);

            int v0i = 1;
            if (v8 < 4) {
                v0i = 0;
            }

            for (int v1i = 0; v1i < v8; v1i++) {
                v2f += 20.0f * v6f;
                v3f += 20.0f * v7f;

                if (v0i > 0) {
                    v0i--;
                } else {
                    this.a(this.ay, v2f, v3f);
                    this.ay = this.ay + 1;

                    if (this.ay >= 119) {
                        this.s = true;
                        break;
                    }
                }
            }

            if (!this.s) {
                if (this.ay < 119) {
                    this.a(this.ay, v4f, v5f);
                    this.ay = this.ay + 1;
                } else {
                    this.s = true;
                }
            }

            this.t = this.ay;
            return;
        }

        com.corrodinggames.rts.gameFramework.am806 v0Obj = null;
        com.corrodinggames.rts.game.units.en734 v1Obj = this.ap();

        if (v1Obj != null) {
            v0Obj = v1Obj.i;
        }

        if (v0Obj != null && v0Obj.g != null) {
            com.corrodinggames.rts.gameFramework.d925 v1Candidate = null;
            java.util.Iterator v2Iterator = v0Obj.g.iterator();

            while (v2Iterator.hasNext()) {
                com.corrodinggames.rts.gameFramework.d925 v0Candidate = (com.corrodinggames.rts.gameFramework.d925) v2Iterator.next();

                if (v0Candidate.a != null
                        && v0Candidate.a.b() != null
                        && !(com.corrodinggames.rts.gameFramework.f1006.d(v0Candidate.e - p1) > 10.0f)
                        && !(com.corrodinggames.rts.gameFramework.f1006.d(v0Candidate.f - p2) > 10.0f)
                        && v0Candidate.g + 0xb4 >= v6.bu
                        && v0Candidate.h == this.g()) {
                    float v3f = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0Candidate.c, v0Candidate.d);

                    if (v3f < 3600.0f) {
                        v1Candidate = v0Candidate;
                    }
                }
            }

            if (v1Candidate != null) {
                this.aW = v1Candidate.a;
                return;
            }
        }

        int v3Final = p3;
        if (L && p3 > 2) {
            v3Final = 2;
        }

        this.aW = this.a(p1, p2, v3Final, p4, true, p5);
        return;
    }

    // ==== from a(F_F_I_Z_Z_Z)j1098.java ====
    public final strictfp com.corrodinggames.rts.gameFramework.k.j1098 a(float p1, float p2, int p3, boolean p4, boolean p5, boolean p6) {
        com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.gameFramework.k.k1099 v7 = v6.bR;
        com.corrodinggames.rts.game.b.b326 v8 = v6.bI;
        com.corrodinggames.rts.gameFramework.k.j1098 v0 = v7.a(p5);
        v8.a(this.eq, this.er);
        boolean v5 = false;
        if (this.dl() || this.ck) {
            v5 = true;
        }
        v0.a(this.g(), (short) v8.U, (short) v8.V, Float.valueOf(this.ci), v5);
        v8.a(p1, p2);
        v0.a((short) v8.U, (short) v8.V, (short) p3);
        v0.p = p4;
        v0.q = this.aR();
        v0.r = p6;
        boolean v2 = this.cM;
        this.cM = true;
        if (p5 && v0.c()) {
            java.util.Iterator v3 = com.corrodinggames.rts.game.units.bp437.aX.iterator();
            while (v3.hasNext()) {
                com.corrodinggames.rts.gameFramework.k.j1098 v1 = (com.corrodinggames.rts.gameFramework.k.j1098) v3.next();
                int v4 = v1.g + 0x3c;
                int v5i = v6.bu;
                if (v4 < v5i) {
                    v3.remove();
                    continue;
                }
                if (v1.a(v0)) {
                    return v1;
                }
            }
        }
        v7.a(v0, p5);
        this.cM = v2;
        if (p5 && v0.c()) {
            com.corrodinggames.rts.game.units.bp437.aX.add(v0);
        }
        return v0;
    }

    // ==== from a(F_F_Z_Z)F.java ====
    public final strictfp float a(float p1, float p2, boolean p3, boolean p4) {
        float v7 = 360.0f;
        float v6 = 0.01f;
        float v2 = -1.0f;
        float v0 = 0.0f;
        float v3 = 1.0f;

        this.cj = p2;

        float v1 = com.corrodinggames.rts.gameFramework.f1006.d(this.ci - p2);
        if (v1 >= v6) {
            v1 = com.corrodinggames.rts.gameFramework.f1006.c(this.ci, p2, v7);

            if (p3) {
                if (p4) {
                    float v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
                    float v5 = 100.0f;
                    if (v4 > v5) {
                        v1 = com.corrodinggames.rts.gameFramework.f1006.c(this.ci, p2 + 180.0f, v7);
                        if (!this.ck) {
                            this.b();
                            this.ck = true;
                        }
                    } else {
                        if (this.ck) {
                            this.b();
                            this.ck = false;
                        }
                    }
                } else {
                    if (this.ck) {
                        this.b();
                        this.ck = false;
                    }
                }
            }

            float v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
            if (v4 < v6) {
                return v0;
            }

            if (this.aB > 0.0f) {
                v0 = v1;
                return v0;
            }

            v4 = this.A();
            if (v4 > 0.0f) {
                if (v1 > 0.0f) {
                    v2 = v3;
                }
                v3 = com.corrodinggames.rts.gameFramework.f1006.d(this.cg) / v4;
                float v5 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
                if (v5 < v3) {
                    v3 = this.cg;
                    v2 = v2 * v4;
                    v4 = v4 * p1;
                    v2 = com.corrodinggames.rts.gameFramework.f1006.a(v3, v2, v4);
                    this.cg = v2;
                } else {
                    v3 = this.cg;
                    v5 = this.z();
                    v2 = v2 * v5;
                    v4 = v4 * p1;
                    v2 = com.corrodinggames.rts.gameFramework.f1006.a(v3, v2, v4);
                    this.cg = v2;
                }

                v2 = this.cg * p1;
                v3 = com.corrodinggames.rts.gameFramework.f1006.d(v2);
                v4 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
                if (v3 > v4) {
                    this.cg = v0;
                    v0 = v1;
                } else {
                    v0 = v2;
                }
                this.i(v0);
                return v1;
            } else {
                if (v1 > 0.0f) {
                    v0 = v3;
                } else {
                    v0 = v2;
                }
                v0 = v0 * this.z() * p1;
                v2 = com.corrodinggames.rts.gameFramework.f1006.d(v0);
                v3 = com.corrodinggames.rts.gameFramework.f1006.d(v1);
                if (v2 > v3) {
                    v0 = v1;
                }
                this.i(v0);
                return v1;
            }
        } else {
            if (p3) {
                if (this.ck) {
                    this.b();
                    this.ck = false;
                }
            }
            return v0;
        }
    }

    // ==== from a(F_k1104_F_F)V.java ====
    private strictfp void a(float p1, com.corrodinggames.rts.gameFramework.k1104 p2, float p3, float p4) {
        com.corrodinggames.rts.game.b.b326 v23 = p2.bI;
        float v24 = v23.r;
        float v25 = v23.s;
        float v3f = this.eq * v24;
        float v4f = this.er * v25;
        float v5f = p3 * v24;
        float v6f = p4 * v25;
        android.graphics.PointF v9 = null;
        boolean v2 = false;
        boolean v16 = false;
        android.graphics.PointF v5Point = null;
        int v7 = com.corrodinggames.rts.gameFramework.f1006.f(v3f);
        int v15 = com.corrodinggames.rts.gameFramework.f1006.f(v4f);
        int v14 = com.corrodinggames.rts.gameFramework.f1006.f(v5f);
        int v8 = com.corrodinggames.rts.gameFramework.f1006.f(v6f);

        if (v7 == v14 && v15 == v8) {
            v2 = false;
            v5Point = null;
        } else if (this.cn != 0.0f) {
            v2 = false;
            v5Point = null;
        } else if (!p2.bR.a(this.g(), v14, v8)) {
            v2 = false;
            v5Point = null;
        } else {
            if (v7 == v14 || v15 == v8) {
                v9 = null;
                v2 = false;
            } else {
                boolean v2b = p2.bR.a(this.g(), v7, v8);
                boolean v11b = p2.bR.a(this.g(), v14, v15);
                if (v2b && v11b) {
                    v9 = com.corrodinggames.rts.game.units.bp437.aI;
                    v9.set(v3f, v4f);
                    v16 = true;
                } else {
                    v16 = false;
                    v9 = null;
                }
                if (v9 == null && v2b) {
                    v9 = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v7, v8);
                }
                if (v9 == null && v11b) {
                    v9 = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v14, v15);
                    v2 = v16;
                } else {
                    v2 = v16;
                }
            }

            if (v9 != null) {
                v5Point = v9;
            } else {
                android.graphics.PointF v5tmp = com.corrodinggames.rts.game.units.ci458.a(this.g(), v3f, v4f, v5f, v6f, v14, v8);
                if (v5tmp != null) {
                    v5Point = v5tmp;
                } else {
                    com.corrodinggames.rts.game.units.bp437.aI.set(v3f, v4f);
                    v5Point = com.corrodinggames.rts.game.units.bp437.aI;
                    v2 = true;
                }
            }
        }

        boolean v3Flag = false;
        if (v5Point != null) {
            boolean v4Flag = false;
            boolean v6tmp = p2.bR.a(this.g(), v7, v15);
            if (v6tmp) {
                boolean v6b = p2.bR.b(this.g(), v14, v8);
                if (!v6b) {
                    v4Flag = true;
                }
            }
            if (v4Flag) {
                v2 = false;
            } else {
                p3 = v5Point.x * (float) v23.n;
                p4 = v5Point.y * (float) v23.o;
                v3Flag = true;
            }
        }

        if (v3Flag) {
            this.b += p1;
            this.a = 0;
        } else {
            if (this.b != 0.0f && p1 > 0.0f) {
                this.a++;
                if (this.a >= 3) {
                    this.b = 0.0f;
                }
            }
        }

        if (!v2) {
            int v2i = com.corrodinggames.rts.gameFramework.f1006.f(p3 * v24);
            int v3i = com.corrodinggames.rts.gameFramework.f1006.f(p4 * v25);
            this.eq = p3;
            this.er = p4;
            if (v7 != v2i || v15 != v3i) {
                this.a(true);
            }
        }
    }

    // ==== from A(I)am1333.java ====
    public strictfp com.corrodinggames.rts.gameFramework.utility.am1333 A(int p1) {
        com.corrodinggames.rts.gameFramework.utility.am1333 v0 = com.corrodinggames.rts.game.units.bp437.bk;
        android.graphics.PointF v1 = this.B(p1);
        v0.a(v1);
        v0 = com.corrodinggames.rts.game.units.bp437.bk;
        v0.c = 0.0f;
        v0 = com.corrodinggames.rts.game.units.bp437.bk;
        return v0;
    }

    // ==== from a(I)V.java ====
    public strictfp void a(int p0) {
    }

    // ==== from a(I_ce454_Z_Z)Z.java ====
    public strictfp boolean a(int p1, com.corrodinggames.rts.game.units.ce454 p2, boolean p3, boolean p4) {
        if (!p3 && p4) {
            if (!d(p2)) {
                return false;
            }
        }
        return true;
    }

    // ==== from a(I_ColorFilter_Z)Paint.java ====
    public final strictfp android.graphics.Paint a(int p1, android.graphics.ColorFilter p2, boolean p3) {
        int v1 = -1;
        if (p1 == -1 && p2 == null) {
            if (p3) {
                return bp437.C;
            }
            return bp437.B;
        }
        android.graphics.Paint v0;
        if (this.cr) {
            if (p2 == null) {
                v0 = bp437.z;
                v1 = bp437.A;
                bp437.A = p1;
            } else {
                v0 = bp437.z;
                if (p2 == bp437.bb) {
                    v0 = bp437.be;
                }
                if (p2 == bp437.ba) {
                    v0 = bp437.bd;
                }
                if (p2 == bp437.bc) {
                    v0 = bp437.bf;
                }
            }
        } else {
            if (p3) {
                if (this.x == null) {
                    this.x = bp437.d(true);
                }
                v0 = this.x;
                v1 = this.y;
                this.y = p1;
            } else {
                if (this.v == null) {
                    this.v = bp437.d(false);
                }
                v0 = this.v;
                v1 = this.w;
                this.w = p1;
            }
        }
        if (v1 != p1) {
            v0.setColor(p1);
        }
        if (v0.getColorFilter() != p2) {
            v0.setColorFilter(p2);
        }
        return v0;
    }

    // ==== from a(I_F)V.java ====
    public strictfp void a(int p1, float p2) {
        com.corrodinggames.rts.game.units.ch457 v0 = this.cN[p1];
        v0.a += p2;
    }

    // ==== from a(I_F_F)V.java ====
    private strictfp void a(int p1, float p2, float p3) {
        h(p1);
        if (this.ax[p1] == null) {
            this.ax[p1] = new bx445();
        }
        this.ax[p1].a = p2;
        this.ax[p1].b = p3;
    }

    // ==== from a(j1071)V.java ====
    public strictfp void a(com.corrodinggames.rts.gameFramework.j.j1071 p1) throws java.io.IOException {
        int v3 = 0;
        this.b = p1.b.readFloat();
        this.c = p1.b.readFloat();
        this.cN[0].e = p1.b.readFloat();
        this.O = p1.b.readInt();
        if (this.O > 0) {
            Q(com.corrodinggames.rts.gameFramework.f1006.c(this.O - 1, 0x1d));
        }
        int v0 = 0x1e;
        if (p1.c >= 0x2a) {
            v0 = p1.b.readInt();
        }
        for (int v2 = 0; v2 < v0; v2++) {
            Q(v2);
            int v1;
            if (v2 >= this.Q.length) {
                com.corrodinggames.rts.gameFramework.k1104.b("Too many waypoints:" + v2);
                v1 = this.Q.length - 1;
            } else {
                v1 = v2;
            }
            if (this.Q[v1] == null) {
                this.Q[v1] = new com.corrodinggames.rts.game.units.en734();
            }
            this.Q[v1].a(p1);
        }
        this.R = (com.corrodinggames.rts.game.units.a384) p1.b(com.corrodinggames.rts.game.units.a384.class);
        if (this.R == com.corrodinggames.rts.game.units.a384.a) {
            if (!H()) {
                this.R = com.corrodinggames.rts.game.units.a384.b;
            }
            if (p1.c < 0x4a) {
                this.R = com.corrodinggames.rts.game.units.a384.b;
            }
        }
        long v4 = p1.b.readLong();
        this.U = p1.b.readFloat();
        this.W = p1.b.readFloat();
        this.X = p1.b.readFloat();
        this.i = p1.b.readBoolean();
        this.j = p1.b.readFloat();
        this.k = p1.b.readFloat();
        this.q = p1.b.readFloat();
        this.a(p1.c());
        this.ag = p1.b.readBoolean();
        this.ah = p1.b.readBoolean();
        this.al = p1.b.readBoolean();
        this.am = p1.b.readFloat();
        this.an = p1.b.readFloat();
        this.ao = p1.b.readFloat();
        this.ap = p1.b.readInt();
        if (p1.c >= 0x12) {
            this.ae = p1.b.readInt();
        }
        if (p1.c >= 0x15) {
            int v1 = p1.b.readInt();
            for (int v0_ = 0; v0_ < v1; v0_++) {
                h(v0_);
                if (this.ax[v0_] == null) {
                    this.ax[v0_] = new com.corrodinggames.rts.game.units.bx445();
                }
                this.ax[v0_].a(p1);
            }
        } else {
            for (int v0_ = 0; v0_ < 0x3c; v0_++) {
                h(v0_);
                if (this.ax[v0_] == null) {
                    this.ax[v0_] = new com.corrodinggames.rts.game.units.bx445();
                }
                this.ax[v0_].a(p1);
            }
        }
        this.ay = p1.b.readInt();
        this.t = p1.b.readInt();
        byte v0b = p1.b.readByte();
        if (v0b > 0) {
            this.m = p1.b.readFloat();
            this.n = p1.b.readFloat();
        }
        if (v0b >= 2) {
            this.d = p1.b.readFloat();
            this.e = p1.b.readFloat();
        }
        if (v0b >= 3) {
            this.s = p1.b.readBoolean();
        }
        if (v0b >= 4) {
            this.ak = p1.b.readFloat();
            this.l = p1.b.readInt();
        }
        if (v0b >= 5) {
            this.Y = p1.b.readFloat();
        }
        if (v0b >= 6) {
            this.as = p1.b.readFloat();
            this.at = p1.b.readBoolean();
            this.au = p1.b.readBoolean();
        }
        if (v0b >= 7) {
            this.aj = p1.b.readShort();
        }
        if (v0b >= 8) {
            this.ad = p1.b.readFloat();
        }
        if (v0b >= 9) {
            this.u = p1.b.readInt();
        }
        if (v0b >= 10) {
            this.Z = p1.b.readFloat();
        }
        if (v0b >= 11) {
            this.aB = p1.b.readFloat();
            this.aC = p1.b.readFloat();
        }
        if (v0b >= 12) {
            short v2s = p1.b.readShort();
            if (v2s <= 0) {
                this.br = (com.corrodinggames.rts.gameFramework.utility.p1351) null;
            } else {
                if (this.br == null) {
                    this.br = new com.corrodinggames.rts.gameFramework.utility.p1351();
                } else {
                    this.br.clear();
                }
                com.corrodinggames.rts.gameFramework.utility.p1351 v6 = this.br;
                p1.a("s", false);
                for (int v1_ = 0; v1_ < v2s; v1_++) {
                    com.corrodinggames.rts.game.units.g.b748 v0e = (com.corrodinggames.rts.game.units.g.b748) p1.b(com.corrodinggames.rts.game.units.g.b748.class);
                    if (v0e == null) {
                        throw new java.io.IOException("Unknown status effect type");
                    }
                    com.corrodinggames.rts.game.units.g.a747 effect = v0e.a();
                    effect.a(this, p1);
                    v6.add(effect);
                }
                p1.c("s");
            }
        }
        super.a(p1);
        if (!this.bX) {
            this.T = com.corrodinggames.rts.gameFramework.ah801.a(v4, false);
            for (int v0_ = 0; v0_ < this.O; v0_++) {
                if (this.Q[v0_] == null) {
                    com.corrodinggames.rts.gameFramework.k1104.d("readIn: convertUnitIds is null: " + v0_ + " waypointsCount:" + this.O);
                } else {
                    this.Q[v0_].a();
                }
            }
        }
        S();
        if (this.bX) {
            this.ey = true;
        }
    }

    // ==== from a(k1104_F)V.java ====
    private strictfp void a(k1104 p1, float p2) {
        int v8 = this.aU();
        boolean v0;
        if (this.k()) {
            if (this.T == null || ((n533) (Object) this.T).M) {
                v0 = true;
            } else {
                v0 = false;
            }
        } else {
            v0 = false;
        }

        boolean v0End = false;
        if (v0) {
            boolean v7;
            boolean v0main = false;
            if (this.T != null) {
                n533 v1 = this.cR;
                if (v1 != null && this.cQ != null && v1.L) {
                    if (this.cQ.T == this.T) {
                        v0main = true;
                    }
                }
                boolean v1res = this.a(this.T, false);
                if (!v1res && !v0main) {
                    this.T = null;
                }
                v7 = v0main;
            } else {
                v7 = false;
            }

            boolean v0b;
            if (this.T != null && !v7) {
                v0b = !this.d(this.T);
            } else {
                v0b = false;
            }

            this.U = f1006.a(this.U, p2);
            this.V = f1006.a(this.V, p2);

            if (this.T == null || v0b) {
                if (this.U == 0.0f && this.aP()) {
                    this.U = 20.0f + (this.eq % 5.0f) + (this.er % 5.0f);
                    float v0e = this.e(false);
                    this.a(p1, p2, v0e);
                    if (this.T != null) {
                        this.V = 0.0f;
                    }
                }
            }

            if (this.T != null && this.V == 0.0f) {
                this.V = 20.0f + (this.eq % 5.0f) + (this.er % 5.0f);
                int v9 = this.aU();
                if (this.ab()) {
                    boolean v0flag = false;
                    for (int i = 0; i < v9; i++) {
                        ch457 v2 = this.cN[i];
                        if (this.q(i) == -1) {
                            if (this.a(i, this.T, false, false)) {
                                v2.j = this.T;
                            } else {
                                v0flag = true;
                                if (v2.j == this.T) {
                                    v2.j = null;
                                }
                            }
                        }
                    }
                    if (v0flag) {
                        float v3e = this.e(false);
                        bz447 v4 = bp437.aV;
                        float v2e = this.e(false);
                        v4.d = this.aU();
                        for (int i = 0; i < v4.d; i++) {
                            float v1 = this.u(i);
                            if (v1 > v2e) {
                                v1 = v2e;
                            }
                            v4.b[i] = v1 * v1 + 1.0f;
                            v4.c[i] = false;
                            if (this.q(i) == -1) {
                                if (this.cN[i].j == null) {
                                    v4.c[i] = true;
                                }
                            }
                        }
                        v4.f = true;
                        p1.bZ.a(this.eq, this.er, v3e, this, p2, bp437.aV);
                    }
                    for (int i = 0; i < v9; i++) {
                        int v1q = this.q(i);
                        if (v1q != -1) {
                            this.cN[i].j = this.cN[v1q].j;
                        }
                    }
                } else {
                    for (int i = 0; i < v9; i++) {
                        this.cN[i].j = this.T;
                    }
                }
            }

            for (int i = 0; i < v8; i++) {
                this.cN[i].g = false;
            }

            v0End = false;
            if (this.T != null) {
                float v0dist = f1006.a(this.eq, this.er, this.T.eq, this.T.er);
                float v1range = this.v(this.T);
                v1range *= v1range;
                if (v0dist < v1range || v7) {
                    int v3 = this.aG();
                    for (int i = 0; i < v8; i++) {
                        ch457 v4 = this.cN[i];
                        ce454 v1 = v4.j;
                        if (v1 != null) {
                            boolean v0same = (v1 == this.T);
                            if (!v0same) {
                                if (!this.b(v1, true)) {
                                    v4.j = null;
                                    continue;
                                }
                            }
                            boolean v0arg = !v0same;
                            if (!this.a(i, v1, false, v0arg)) {
                                v4.j = null;
                                continue;
                            }
                            PointF v0p = this.B(i);
                            PointF v5p = this.F(i);
                            v5p.x += v1.eq;
                            v5p.y += v1.er;
                            float v5f = f1006.d(v0p.x, v0p.y, v5p.x, v5p.y);
                            if (this.q(i) == -1 && i != v3) {
                                if (!this.D()) {
                                    v4.a(0x46);
                                    v4.b = v4.a;
                                    float v0angle = 179.0f;
                                    if (!(v4.d < 0.0f)) {
                                        v0angle = this.a(p2, v5f, i);
                                    }
                                    if (f1006.d(v0angle) < this.s(i)) {
                                        v4.g = true;
                                    }
                                } else {
                                    boolean v0b2 = false;
                                    en734 v1e = this.ap();
                                    if (v1e != null) {
                                        if (v1e.a == eo735.c || v1e.a == eo735.d || v1e.a == eo735.g) {
                                            v0b2 = true;
                                        }
                                    }
                                    if (!v0b2) {
                                        if (!this.i || this.aT()) {
                                            float v0angle2 = this.a(p2, v5f);
                                            v4.b = v4.a;
                                            if (f1006.d(v0angle2) < this.s(i)) {
                                                v4.g = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    boolean v0loop = false;
                    for (int i = 0; i < v8; i++) {
                        ch457 v1slot = this.cN[i];
                        ce454 v3c = v1slot.j;
                        if (v3c != null) {
                            boolean v4p = this.p(i);
                            if (v4p && v1slot.e == 0.0f) {
                                v0loop = true;
                            }
                            if (this.p(i)) {
                                ch457 v4 = this.cN[i];
                                int v1q = this.q(i);
                                if (v1q != -1) {
                                    v4.a = this.cN[v1q].a;
                                }
                                boolean v5 = this.n(i);
                                boolean v1flag = false;
                                if (v5) {
                                    if (v4.f < this.e(i)) {
                                        if (v4.f == 0.0f) {
                                            this.k(i);
                                        }
                                        v4.f += p2;
                                    } else {
                                        v4.f = this.e(i);
                                    }
                                    v1flag = true;
                                }
                                if (v4.e == 0.0f && this.m(i)) {
                                    if (this.a(i, v3c, false, false) == 0) {
                                        v4.e = -10.0f;
                                        continue;
                                    }
                                    if (!v5) {
                                        if (v4.f < this.e(i)) {
                                            if (v4.f == 0.0f) {
                                                this.k(i);
                                            }
                                            v4.f += p2;
                                        } else {
                                            v1flag = true;
                                        }
                                    }
                                    if (v1flag) {
                                        v4.e = this.b(i) + this.o(i);
                                        if (!v5) {
                                            v4.f = 0.0f;
                                        }
                                        this.a(v3c, i);
                                        this.H(i);
                                        v4.m = !v4.m;
                                    }
                                }
                            }
                        }
                    }
                    v0End = v0loop;
                } else {
                    if (!this.i && this.al()) {
                        this.h = true;
                        this.i = true;
                        this.j = this.T.eq;
                        this.k = this.T.er;
                        this.l = 0;
                    }
                    v0End = false;
                }
            } else {
                v0End = false;
            }
        }

        if (this.aP && this.W() != null) {
            v0End = true;
        }
        for (int i = 0; i < v8; i++) {
            ch457 v2 = this.cN[i];
            if (!v0End && v2.f != 0.0f) {
                v2.f = f1006.a(v2.f, this.f(i) * p2);
            }
        }
    }

    // ==== from a(k1104_F_en734_bv443)V.java ====
    private strictfp void a(com.corrodinggames.rts.gameFramework.k1104 p1, float p2, com.corrodinggames.rts.game.units.en734 p3, com.corrodinggames.rts.game.units.bv443 p4) {
        boolean v8 = H();
        if (this.aW != null) {
            b(p1);
        }
        if (this.af != null) {
            if (!this.af.bX || this.af.by()) {
                a((com.corrodinggames.rts.game.units.bp437) null);
            }
        }
        if (this.i) {
            com.corrodinggames.rts.game.units.bx445 v7 = dd();
            com.corrodinggames.rts.game.units.en734 v0 = ap();
            if (v0 == null) {
                p4.d = false;
            }
            if (com.corrodinggames.rts.game.units.bp437.L) {
                p4.d = false;
            }
            if (this.ag && this.ai > 0 && df()) {
                this.ap = p1.bv;
            }
            if (v0 != null) {
                if (this.af != null && p4.d) {
                    com.corrodinggames.rts.game.units.en734 v2 = this.af.ap();
                    if (v2 != null && v2.b(v0)) {
                        p4.d = false;
                    }
                }
            }
            if (this.af != null && p4.d) {
                a(p2, v7, p4, p3);
            } else if (this.cn != 0.0f) {
                p4.e = this.j;
                p4.f = this.k;
                p4.b = true;
            } else {
                boolean v0Bool;
                if (this.aW == null) {
                    v0Bool = false;
                } else {
                    if (v7 == null) {
                        v0Bool = false;
                    } else {
                        v0Bool = this.s && !(this.q < 450.0f);
                        if (this.q == 0.0f) {
                            v0Bool = true;
                        }
                    }
                    if (this.q == 0.0f && (!bU() || aI())) {
                        float v2 = l() - 1.0f;
                        if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > v2
                                || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > v2) {
                            v0Bool = true;
                        }
                    }
                    if (p3 != null && this.q == 0.0f
                            && (p3.a == com.corrodinggames.rts.game.units.eo735.e
                            || p3.a == com.corrodinggames.rts.game.units.eo735.i)) {
                        if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > 12.0f
                                || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > 12.0f) {
                            v0Bool = true;
                        }
                    }
                    if (p3 != null) {
                        float v2 = (float) this.p;
                        if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - this.j) > v2
                                || com.corrodinggames.rts.gameFramework.f1006.d(this.n - this.k) > v2) {
                            if (this.q > 30.0f) {
                                this.q = 30.0f;
                            }
                            if (this.q == 0.0f) {
                                v0Bool = true;
                            }
                        }
                    }
                }
                if (v0Bool) {
                    this.q = 500.0f;
                    boolean v4 = this.ag && this.aj > 1;
                    a(this.j, this.k, this.l, v4, this.r);
                }
                com.corrodinggames.rts.game.units.bx445 v0Ref;
                if (v7 != null && this.aw != null && this.ay >= 2 && y() > 5.0f) {
                    com.corrodinggames.rts.game.units.bx445 v1 = this.ax[1];
                    float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v7.a, v7.b);
                    float v3 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v1.a, v1.b);
                    if (v2 < 36.0f) {
                        if (v3 < 361.0f) {
                            v0Ref = v7;
                        } else {
                            dh();
                            v0Ref = dd();
                        }
                    } else {
                        dh();
                        v0Ref = dd();
                    }
                } else {
                    v0Ref = v7;
                }
                if (v0Ref != null) {
                    p4.e = v0Ref.a;
                    p4.f = v0Ref.b;
                    p4.b = true;
                } else if (this.h) {
                    p4.e = this.j;
                    p4.f = this.k;
                    p4.b = true;
                }
            }
        }
        a(p2, p4, p3, v8);
        return;
    }

    // ==== from a(k1104_F_F)V.java ====
    private strictfp void a(com.corrodinggames.rts.gameFramework.k1104 p1, float p2, float p3) {
        com.corrodinggames.rts.game.units.bp437.aS.a(p3);
        p1.bZ.a(this.eq, this.er, p3, this, p2, com.corrodinggames.rts.game.units.bp437.aS);
        if (com.corrodinggames.rts.game.units.bp437.aS.a != 0) {
            if (this.T == null || !this.d(this.T)) {
                com.corrodinggames.rts.game.units.bp437.aT.a(p3);
                p1.bZ.a(this.eq, this.er, p3, this, p2, com.corrodinggames.rts.game.units.bp437.aT);
            }
        }
    }

    // ==== from a(S)n533.java ====
    public strictfp com.corrodinggames.rts.game.units.custom.b.n533 a(short p1) {
        return null;
    }

    // ==== from a(s376_F_F)Z.java ====
    public strictfp boolean a(com.corrodinggames.rts.game.units.a.s376 arg0, float arg1, float arg2) {
        return true;
    }

    // ==== from a(s376_Z_F_F)V.java ====
    public strictfp void a(com.corrodinggames.rts.game.units.a.s376 p0, boolean p1, float p2, float p3) {
        return;
    }

    // ==== from a(String)V.java ====
    public final strictfp void a(String p1) {
        com.corrodinggames.rts.game.units.el732 v0 = q();
        String v0Text;
        if (v0 != null) {
            v0Text = q().i();
        } else {
            v0Text = "<NO UNIT TYPE>";
        }
        StringBuilder v1 = new StringBuilder("(Unit log:");
        v1.append(v0Text);
        v1.append(" id:");
        v1.append(this.ej);
        v1.append("): ");
        v1.append(p1);
        com.corrodinggames.rts.gameFramework.k1104.d(v1.toString());
        return;
    }

    // ==== from A(void)F.java ====
    public strictfp float A() {
        return -1.0f;
    }

    // ==== from a(void)V.java ====
    public strictfp void a() {
        if (this.cQ != null) {
            this.bg();
        }
        this.at();
        this.dg();
        super.a();
    }

    // ==== from a(Z)V.java ====
    public strictfp void a(boolean p1) {
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (this.cP != null || this.cQ != null) {
            return;
        }
        int v3 = this.b_();
        if (v3 <= 0) {
            return;
        }
        v0.bI.a(this.eq, this.er, v3, this.bZ, p1);
    }

    // ==== from a(Z_p352)String.java ====
    public final strictfp String a(boolean p1, com.corrodinggames.rts.game.p352 p2) {
        com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.units.custom.bx558 v0 = this.q().q();
        if (v0 != null) {
            String s = v0.a(this, this.eq, this.er);
            if (s != null) {
                return s;
            }
        }
        if (this.q().p()) {
            v1.bI.a(this.eq, this.er);
            com.corrodinggames.rts.game.b.i333 v0i = v1.bI.d(v1.bI.U, v1.bI.V);
            if (v0i == null || !v0i.i) {
                return "{2}";
            }
        }
        if (!p1) {
            if (this.a((com.corrodinggames.rts.game.units.ce454) null, p2)) {
                return "{0}";
            }
        }
        if (!this.q().p()) {
            android.graphics.Rect v8 = this.bI();
            android.graphics.Point v0p = this.a(v1.bI, com.corrodinggames.rts.game.units.bp437.bm);
            int v9 = v0p.x;
            int v10 = v0p.y;
            com.corrodinggames.rts.game.units.el732 v1e = this.q();
            com.corrodinggames.rts.game.units.cg456 v2 = v1e.o();
            for (int v3 = v9 + v8.left; v3 <= v9 + v8.right; v3++) {
                for (int v4 = v10 + v8.top; v4 <= v10 + v8.bottom; v4++) {
                    String v0s = com.corrodinggames.rts.game.units.d.f655.a(this, v1e, v2, v3, v4, false, p2);
                    if (v0s != null) {
                        return v0s;
                    }
                }
            }
        }
        return null;
    }

    // ==== from a_(ce454)b579.java ====
    public static strictfp com.corrodinggames.rts.game.units.custom.d.b579 a_(com.corrodinggames.rts.game.units.ce454 p0) {
        com.corrodinggames.rts.game.units.custom.d.b579 v0 = p0.bA;
        if (v0 != null) {
            v0 = p0.bA;
        } else {
            com.corrodinggames.rts.game.units.el732 v1 = p0.q();
            v0 = v1.B();
        }
        return v0;
    }

    // ==== from aa(void)ce454.java ====
    public final strictfp com.corrodinggames.rts.game.units.ce454 aa() {
        if (this.T != null && !this.T.bX) {
            return this.T;
        }
        com.corrodinggames.rts.game.units.en734 v0 = this.ap();
        if (v0 != null && v0.h != null && !v0.h.bX) {
            return v0.h;
        }
        return null;
    }

    // ==== from aA(void)Paint.java ====
    public strictfp android.graphics.Paint aA() {
        int v8 = 70;
        int v7 = 50;
        int v6 = 100;
        int v5 = 20;
        int v4 = 255;
        android.graphics.ColorFilter v0 = null;
        int v1;

        if (this.es < -0.3f) {
            v1 = android.graphics.Color.argb(bp437.k(this.es), v4, v4, v4);
        } else {
            v1 = -1;
        }

        if (this.co < 1.0f && this.co < this.az()) {
            float f = this.co;
            f = f / this.az();
            f = f * 220.0f + 20.0f;
            int alpha = (int) f;
            v1 = android.graphics.Color.argb(alpha, 140, 255, 140);
            v0 = bp437.aZ;
        }

        if (this.cr) {
            if (this.cu) {
                v1 = android.graphics.Color.argb(200, v5, v4, v5);
                v0 = bp437.ba;
            }

            if (this.cv) {
                v1 = android.graphics.Color.argb(200, v4, v5, v5);
                v0 = bp437.bb;
            }

            if (this.cs) {
                v1 = android.graphics.Color.argb(v7, v8, v8, 245);
                v0 = bp437.bc;

                if (this.cv) {
                    v1 = android.graphics.Color.argb(v7, v4, v5, v5);
                    v0 = bp437.bb;
                }
            }

            if (this.ct) {
                v1 = android.graphics.Color.argb(150, v6, v6, v6);
            }
        }

        boolean v2 = this.di();
        return this.a(v1, v0, v2);
    }

    // ==== from aB(void)F.java ====
    public strictfp float aB() {
        return 1.0f;
    }

    // ==== from ab(void)Z.java ====
    public strictfp boolean ab() {
        int v0 = 1;
        int v1 = aU();
        if (v1 > v0) {
            return true;
        }
        return false;
    }

    // ==== from aC(void)PointF.java ====
    public strictfp android.graphics.PointF aC() {
        android.graphics.PointF v0 = com.corrodinggames.rts.game.units.bp437.bg;
        float v1 = F();
        float v2 = G();
        v0.set(v1, v2);
        v0 = com.corrodinggames.rts.game.units.bp437.bg;
        return v0;
    }

    // ==== from ac(void)Z.java ====
    public strictfp boolean ac() {
        return false;
    }

    // ==== from aD(void)Z.java ====
    public strictfp boolean ad() {
        return true;
    }

    // ==== from aE(void)Z.java ====
    public strictfp boolean ae() {
        return true;
    }

    // ==== from aF(void)Z.java ====
    public strictfp boolean af() {
        return true;
    }

    // ==== from aG(void)I.java ====
    public strictfp int aG() {
        return -1;
    }

    // ==== from ag(void)Z.java ====
    public final strictfp boolean ag() {
        java.util.ArrayList arrayList = this.N();
        java.util.Iterator iterator = arrayList.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.units.a.s376 unit = (com.corrodinggames.rts.game.units.a.s376) iterator.next();
            if (unit.f()) {
                return true;
            }
        }
        return false;
    }

    // ==== from aH(void)F.java ====
    public strictfp float aH() {
        return l();
    }

    // ==== from ah(void)Z.java ====
    public strictfp boolean ah() {
        com.corrodinggames.rts.game.units.el732 v0 = this.q();
        return v0.m();
    }

    // ==== from aI(void)Z.java ====
    public strictfp boolean ai() {
        com.corrodinggames.rts.game.units.el732 v0 = this.q();
        return v0.l();
    }

    // ==== from aJ(void)ArrayList.java ====
    public final strictfp java.util.ArrayList aJ() {
        float v2 = 0.0f;
        java.util.ArrayList v5 = new java.util.ArrayList();
        if (k()) {
            int v6 = aU();
            for (int v4 = 0; v4 < v6; v4++) {
                float v7 = l(v4);
                if (v7 == v2) {
                    continue;
                }
                float v0 = b(v4);
                float v1;
                if (v0 == 9000.0f) {
                    v1 = v2;
                } else {
                    v1 = v0;
                }
                boolean found = false;
                java.util.Iterator v8 = v5.iterator();
                while (v8.hasNext()) {
                    com.corrodinggames.rts.game.units.bs440 v0Obj = (com.corrodinggames.rts.game.units.bs440) v8.next();
                    if (v0Obj.a == v7) {
                        if (v0Obj.b == v1 || v1 == v2 || v0Obj.b == v2) {
                            v0Obj.d = v0Obj.d + 1;
                            if (v0Obj.b == v2) {
                                v0Obj.b = v1;
                            }
                            found = true;
                            break;
                        }
                    }
                }
                if (!found) {
                    com.corrodinggames.rts.game.units.bs440 v0New = new com.corrodinggames.rts.game.units.bs440();
                    v0New.a = v7;
                    v0New.b = v1;
                    v0New.c = e(v4);
                    v5.add(v0New);
                }
            }
        }
        return v5;
    }

    // ==== from aj(void)Z.java ====
    public strictfp boolean aj() {
        return false;
    }

    // ==== from aK(void)F.java ====
    public strictfp float ak() {
        return 0.0f;
    }

    // ==== from aL(void)F.java ====
    public strictfp float aL() {
        return 1.0f;
    }

    // ==== from al(void)Z.java ====
    public strictfp boolean al() {
        if (this.R == a384.a || this.R == a384.e || this.R == a384.f) {
            return true;
        }
        return false;
    }

    // ==== from am(void)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 am() {
        Q(29);

        if (this.O > 0) {
            this.f = false;
        }

        com.corrodinggames.rts.game.units.en734 v2 = this.Q[29];
        int v0 = 29;

        while (v0 > 0) {
            com.corrodinggames.rts.game.units.en734[] v3 = this.Q;
            int v4 = v0 - 1;
            com.corrodinggames.rts.game.units.en734 v4Object = v3[v4];
            v3[v0] = v4Object;
            v0 = v0 - 1;
        }

        this.Q[0] = v2;

        if (this.O < 29) {
            this.O = this.O + 1;
        }

        com.corrodinggames.rts.game.units.en734 v0Object = this.Q[0];
        if (v0Object == null) {
            this.Q[0] = new com.corrodinggames.rts.game.units.en734();
        }

        v0Object = this.Q[0];
        v0Object.b();
        this.X = 0.0f;
        this.aa = 0.0f;
        this.Y = 0.0f;
        L();
        this.ax();
        return v0Object;
    }

    // ==== from aM(void)F.java ====
    public strictfp float aM() {
        return 0.6f;
    }

    // ==== from an(void)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 an() {
        int v0 = this.O;
        this.Q(v0);
        com.corrodinggames.rts.game.units.en734 v1 = this.Q[this.O];
        if (v1 == null) {
            com.corrodinggames.rts.game.units.en734 v2 = new com.corrodinggames.rts.game.units.en734();
            this.Q[this.O] = v2;
        }
        v1 = this.Q[this.O];
        v1.b();
        if (this.O < 29) {
            this.O = this.O + 1;
        }
        if (this.O > 0) {
            this.L();
        }
        return v1;
    }

    // ==== from aN(void)F.java ====
    public strictfp float aN() {
        return 0.0f;
    }

    // ==== from aO(void)I.java ====
    public strictfp int aO() {
        int v0 = com.corrodinggames.rts.game.units.b421.a;
        return v0;
    }

    // ==== from ao(void)Z.java ====
    public final strictfp boolean ao() {
        com.corrodinggames.rts.game.units.en734 v0 = this.ap();
        if (v0 == null) {
            return true;
        } else {
            return false;
        }
    }

    // ==== from ap(void)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 ap() {
        if (this.O == 0) {
            return null;
        }
        return this.Q[0];
    }

    // ==== from aP(void)Z.java ====
    public strictfp boolean aP() {
        return true;
    }

    // ==== from aq(void)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 aq() {
        if (this.O == 0) {
            return null;
        } else {
            return this.Q[this.O - 1];
        }
    }

    // ==== from aQ(void)Z.java ====
    public strictfp boolean aQ() {
        return true;
    }

    // ==== from aR(void)I.java ====
    public strictfp int aR() {
        return 0;
    }

    // ==== from ar(void)V.java ====
    public final strictfp void ar() {
        if (this.O == 0) {
            return;
        }
        if (this.O == 1) {
            this.as();
            return;
        }
        this.O = this.O - 1;
    }

    // ==== from as(void)V.java ====
    public final strictfp void as() {
        this.X = 0.0f;
        this.aa = 0.0f;
        this.Y = 0.0f;
        this.at = false;
        this.as = -999.0f;
        this.au = false;
        this.u = 0;

        if (this.O == 0) {
            this.ax();
            this.e = 0.0f;
            this.d = 0.0f;
            this.c = 0.0f;
            return;
        }

        if (this.O == 1) {
            this.f = false;
            this.O = 0;
            this.ax();
            this.e = 0.0f;
            this.d = 0.0f;
            this.c = 0.0f;
            this.L();
            return;
        }

        if (this.Q.length > 0) {
            com.corrodinggames.rts.game.units.en734 v1 = this.Q[0];
            this.f = false;
            for (int v0 = 0; v0 < this.O - 1; v0++) {
                this.Q[v0] = this.Q[v0 + 1];
            }
            this.Q[this.O - 1] = v1;
        }

        this.O = this.O - 1;
        this.L();
        this.ax();
    }

    // ==== from aS(void)Z.java ====
    public strictfp boolean aS() {
        boolean v0 = false;
        return v0;
    }

    // ==== from at(void)V.java ====
    public final strictfp void at() {
        int v0 = this.O;
        int v1 = this.O;
        if (v1 > 0) {
            this.f = false;
        }
        this.X = 0.0f;
        this.aa = 0.0f;
        this.at = false;
        this.as = -999.0f;
        this.au = false;
        this.O = 0;
        this.ax();
        this.aw();
        this.a((bp437) null);
        this.e = 0.0f;
        this.d = 0.0f;
        this.c = 0.0f;
        this.u = 0;
        if (v0 > 0) {
            this.L();
        }
    }

    // ==== from aT(void)Z.java ====
    public strictfp boolean aT() {
        return false;
    }

    // ==== from aU(void)I.java ====
    public strictfp int aU() {
        return 1;
    }

    // ==== from au(void)V.java ====
    public final strictfp void au() {
        int i = 0;
        while (i < this.O) {
            en734 waypoint = this.Q[i];
            if (waypoint != null
                    && waypoint.a != eo735.c
                    && waypoint.a != eo735.d) {
                if (this.O <= i) {
                    throw new IndexOutOfBoundsException(
                            "completeWaypoint: waypointsCount:" + this.O
                                    + ", waypointIndex:" + i);
                }
                if (i == 0) {
                    this.as();
                } else {
                    if (this.Q.length > 0) {
                        en734 saved = this.Q[i];
                        for (int j = i; j < this.O - 1; j++) {
                            this.Q[j] = this.Q[j + 1];
                        }
                        this.Q[this.O - 1] = saved;
                    }
                    this.O = this.O - 1;
                }
            }
            i++;
        }
    }

    // ==== from av(void)V.java ====
    public final strictfp void av() {
        this.a((com.corrodinggames.rts.game.units.bp437) null);
        this.ag = false;
        this.al = false;
        this.am = 0.0f;
        this.an = 0.0f;
        this.ae = 0;
        this.c = 0.0f;
    }

    // ==== from aV(void)Z.java ====
    public strictfp boolean aV() {
        return true;
    }

    // ==== from aW(void)am1333.java ====
    public final strictfp com.corrodinggames.rts.gameFramework.utility.am1333 aW() {
        int v0 = aG();
        int v1 = -1;
        com.corrodinggames.rts.gameFramework.utility.am1333 result;
        if (v0 == v1) {
            v0 = 0;
            result = y(v0);
        } else {
            result = y(v0);
        }
        return result;
    }

    // ==== from aw(void)V.java ====
    public final strictfp void aw() {
        int v3 = 0;
        if (this.ai == 0) {
            return;
        }
        com.corrodinggames.rts.game.units.ce454[] v5 = com.corrodinggames.rts.game.units.ce454.bG.c;
        int v6 = com.corrodinggames.rts.game.units.ce454.bG.size();
        int v2 = v3;
        com.corrodinggames.rts.game.units.bp437 v1 = null;
        while (v2 < v6) {
            com.corrodinggames.rts.game.units.ce454 v0 = v5[v2];
            com.corrodinggames.rts.game.units.bp437 v0bp;
            if (v0 instanceof com.corrodinggames.rts.game.units.bp437) {
                com.corrodinggames.rts.game.units.bp437 cast = (com.corrodinggames.rts.game.units.bp437) v0;
                if (cast.af == this) {
                    cast.a((com.corrodinggames.rts.game.units.bp437) null);
                    v0bp = cast;
                } else {
                    v0bp = v1;
                }
            } else {
                v0bp = v1;
            }
            v2++;
            v1 = v0bp;
        }
        if (this.ai != 0) {
            this.ai = v3;
        }
        if (v1 != null) {
            com.corrodinggames.rts.game.units.en734 v0 = v1.ap();
            if (v0 != null) {
                com.corrodinggames.rts.gameFramework.am806 v0a = v0.i;
                if (v0a != null) {
                    v0a.b();
                }
            }
        }
        return;
    }

    // ==== from aX(void)V.java ====
    public final strictfp void ax() {
        this.ay = 0;
        this.s = false;
        this.t = 0;
        this.q = 0.0f;
        this.Y = 0.0f;
        this.Z = 0.0f;
        this.o = 0;
        return;
    }

    // ==== from aY(void)I.java ====
    public strictfp int aY() {
        if (cF()) {
            return 8;
        }
        if (bq()) {
            return 7;
        }
        return 4;
    }

    // ==== from ay(void)J.java ====
    public final strictfp long ay() {
        long v2 = 0L;
        int v0 = 0;
        while (v0 < this.ay) {
            bx445 v1 = this.ax[v0];
            if (v1 != null) {
                int v4 = Float.floatToRawIntBits(v1.a);
                v2 += (long) v4;
                int v1Bits = Float.floatToRawIntBits(v1.b);
                v2 += (long) v1Bits;
            }
            v0++;
        }
        return v2;
    }

    // ==== from az(void)F.java ====
    public strictfp float az() {
        return 1.0f;
    }

    // ==== from aZ(void)V.java ====
    public strictfp void aZ() {
        if (!this.cn()) {
            com.corrodinggames.rts.game.n350.a(this.eq, this.er);
        }
    }

    // ==== from b(bp437)Z.java ====
    public strictfp boolean b(com.corrodinggames.rts.game.units.bp437 arg0) {
        return false;
    }

    // ==== from b(ce454_F_I)V.java ====
    public strictfp void b(com.corrodinggames.rts.game.units.ce454 p1, float p2, int p3) {
        float v0 = this.W;
        v0 = com.corrodinggames.rts.gameFramework.f1006.a(v0, p2);
        this.W = v0;
        v0 = this.W;
        float v1 = 0.0f;
        if (v0 == v1) {
            this.W = 5.0f;
            if (this.i_()) {
                android.graphics.PointF v7 = this.z(0);
                com.corrodinggames.rts.gameFramework.k1104 v0_1 = com.corrodinggames.rts.gameFramework.k1104.t();
                com.corrodinggames.rts.gameFramework.d.e921 v0_2 = v0_1.bO.a(p1.eq, p1.er, p1.es, com.corrodinggames.rts.gameFramework.d.d920.a, false, com.corrodinggames.rts.gameFramework.d.h924.b);
                if (v0_2 != null) {
                    float v1_1 = (float)((double)v7.x + (-8.0 + Math.random() * 16.0));
                    float v2_1 = (float)((double)v7.y + (-8.0 + Math.random() * 16.0));
                    float v1_2 = com.corrodinggames.rts.gameFramework.f1006.d(p1.eq, p1.er - p1.es, v1_1, v2_1);
                    v0_2.P = com.corrodinggames.rts.gameFramework.f1006.k(v1_2) * com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                    v0_2.Q = com.corrodinggames.rts.gameFramework.f1006.j(v1_2) * com.corrodinggames.rts.gameFramework.f1006.c(2.0f, 4.0f);
                    v0_2.ap = 5;
                    v0_2.V = 20.0f;
                    v0_2.W = v0_2.V;
                    v0_2.r = true;
                    v0_2.E = 0.8f;
                    v0_2.G = 0.2f;
                    v0_2.F = 1.0f;
                }
            }
        }
        return;
    }

    // ==== from b(ce454_Z)Z.java ====
    public final strictfp boolean b(com.corrodinggames.rts.game.units.ce454 p1, boolean p2) {
        if (p1.bV()) {
            return false;
        }
        return a(p1, p2);
    }

    // ==== from b(en734)en734.java ====
    public final strictfp en734 b(en734 p1) {
        en734 v0 = this.an();
        v0.c(p1);
        return v0;
    }

    // ==== from b(F)Z.java ====
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

    // ==== from b(F_F)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 b(float p1, float p2) {
        com.corrodinggames.rts.game.units.en734 v0 = an();
        v0.a(p1, p2);
        return v0;
    }

    // ==== from b(F_F_F)F.java ====
    private strictfp float b(float p1, float p2, float p3) {
        float result = 0.0f;
        if (D()) {
            if (bq()) {
                return result;
            }
            result = f1006.d(this.eq, this.er, p2, p3);
            result = a(p1, result);
            return result;
        }
        if (aU() > 0) {
            int index = aG();
            if (index == -1) {
                index = 0;
            }
            PointF pointF = B(index);
            float f = f1006.d(pointF.x, pointF.y, p2, p3);
            ch457 unit = this.cN[index];
            unit.a(0x46);
            return a(p1, f, index);
        }
        return result;
    }

    // ==== from b(I)F.java ====
    public abstract float b(int p0);

    // ==== from B(I)PointF.java ====
    public strictfp android.graphics.PointF B(int p1) {
        com.corrodinggames.rts.game.units.ch457 v4 = this.cN[p1];
        float v0 = this.eq;
        float v1 = this.er;
        float v2 = this.C(p1);
        float v3 = 0.0f;
        if (v4.e != v3 && v2 != v3) {
            float v5 = this.D(p1);
            float v6 = this.E(p1);
            float v7 = this.b(p1) - v4.e;
            if (v7 < v5) {
                float v8 = v6 + v5;
                if (v7 < v8) {
                    v2 = v3;
                } else {
                    v2 = v2 - v2 * ((v7 - v5) / v6);
                }
            } else {
                v2 = v2 * (v7 / v5);
            }
            if (v2 != v3) {
                v0 = v0 + com.corrodinggames.rts.gameFramework.f1006.k(v4.a) * v2;
                v1 = v1 + v2 * com.corrodinggames.rts.gameFramework.f1006.j(v4.a);
            }
        }
        com.corrodinggames.rts.game.units.bp437.bj.set(v0, v1);
        return com.corrodinggames.rts.game.units.bp437.bj;
    }

    // ==== from b(I_F)Z.java ====
    public strictfp boolean b(int p0, float p1) {
        return true;
    }

    // ==== from b(k1104)V.java ====
    private strictfp void b(com.corrodinggames.rts.gameFramework.k1104 p1) {
        final int v8 = 0x78;
        final int v1 = 1;
        final int v2 = 0;
        if (this.aW != null) {
            com.corrodinggames.rts.game.b.b326 v3 = p1.bI;
            java.util.LinkedList v4 = this.aW.b();
            if (v4 != null) {
                this.aw = this.aW.a();
                this.ay = v2;
                this.s = false;
                java.util.Iterator v5 = v4.iterator();
                while (v5.hasNext()) {
                    com.corrodinggames.rts.gameFramework.k.o1103 v0 = (com.corrodinggames.rts.gameFramework.k.o1103) v5.next();
                    v3.a(v0.a, v0.b);
                    float v6 = (float) (v3.U + v3.p);
                    float v7 = (float) (v3.V + v3.q);
                    this.a(this.ay, v6, v7);
                    this.ay = this.ay + 1;
                    if (this.ay >= v8) {
                        this.s = true;
                        break;
                    }
                }
                if (this.ay == v1) {
                    this.o = (byte) (this.o + 1);
                }
                boolean v0flag;
                if (v4.size() != 0) {
                    v3.a(this.m, this.n);
                    v0flag = !this.s && ((com.corrodinggames.rts.gameFramework.k.o1103) v4.getLast()).a == v3.U && ((com.corrodinggames.rts.gameFramework.k.o1103) v4.getLast()).b == v3.V;
                } else {
                    v0flag = false;
                }
                if (v0flag) {
                    if (this.ay == 0) {
                        this.ay = this.ay + 1;
                    }
                    this.a(this.ay - 1, this.m, this.n);
                }
                this.aW = null;
                if (this.ay > v8) {
                    String v0str = new StringBuilder("activePathCount>maxPathNodes: activePathCount:").append(this.ay).toString();
                    com.corrodinggames.rts.gameFramework.k1104.b(v0str);
                    this.ay = v8;
                }
                this.t = this.ay;
            }
        }
        return;
    }

    // ==== from b(p352)V.java ====
    public final strictfp void b(com.corrodinggames.rts.game.p352 p1) {
        super.b(p1);
        S();
    }

    // ==== from B(void)F.java ====
    public strictfp float B() {
        return 99.0f;
    }

    // ==== from b(void)V.java ====
    private strictfp void b() {
        int v1 = aU();
        int v0 = 0;
        while (v0 < v1) {
            com.corrodinggames.rts.game.units.ch457 v2 = this.cN[v0];
            v2.a(25);
            v0++;
        }
    }

    // ==== from b_(void)I.java ====
    public strictfp int b_() {
        return 15;
    }

    // ==== from ba(void)V.java ====
    public final strictfp void ba() {
        com.corrodinggames.rts.gameFramework.k1104 framework = com.corrodinggames.rts.gameFramework.k1104.t();
        android.graphics.RectF rectF = new android.graphics.RectF();
        rectF.set(this.bI());
        rectF.top *= (float) framework.bI.o;
        rectF.bottom *= (float) framework.bI.o;
        rectF.left *= (float) framework.bI.n;
        rectF.right *= (float) framework.bI.n;
        rectF.offset(this.eq, this.er);
        rectF.offset(-this.cB(), -this.cC());
        rectF.top -= 10.0f;
        rectF.bottom += 10.0f;
        rectF.left -= 10.0f;
        rectF.right += 10.0f;
        com.corrodinggames.rts.gameFramework.utility.r1353 iterable = com.corrodinggames.rts.game.units.ce454.bn();
        java.util.Iterator iterator = iterable.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
            if (!(unit instanceof com.corrodinggames.rts.game.units.ce454)) {
                continue;
            }
            if (unit == this) {
                continue;
            }
            if (unit.eq + unit.cl > rectF.left
                    && unit.eq - unit.cl < rectF.right
                    && unit.er + unit.cl > rectF.top
                    && unit.er - unit.cl < rectF.bottom) {
                if (unit instanceof com.corrodinggames.rts.game.units.bp437
                        && unit.bX) {
                    unit.a();
                }
                if (unit instanceof com.corrodinggames.rts.game.units.cd453) {
                    ((com.corrodinggames.rts.game.units.cd453) unit).j();
                }
            }
        }
        return;
    }

    // ==== from bb(void)V.java ====
    public final strictfp void bb() {
        com.corrodinggames.rts.gameFramework.k1104 v5 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.units.el732 v6 = this.q();
        if (!v6.p()) {
            android.graphics.Rect rect = this.bI();
            android.graphics.Point point = this.a(v5.bI, com.corrodinggames.rts.game.units.bp437.bn);
            int x = point.x;
            int y = point.y;
            this.q();
            int left = rect.left;
            int top = rect.top;
            int right = rect.right;
            int bottom = rect.bottom;
            com.corrodinggames.rts.game.b.b326 b326a = v5.bI;
            int ct = (int) v5.ct;
            int cu = (int) v5.cu;
            com.corrodinggames.rts.gameFramework.m.fi1252 fi = v5.bL;
            com.corrodinggames.rts.gameFramework.k1104 v5b = com.corrodinggames.rts.gameFramework.k1104.t();
            com.corrodinggames.rts.game.b.b326 b326b = v5b.bI;
            com.corrodinggames.rts.game.units.el732 el = v5b.bP.ac.h();
            com.corrodinggames.rts.game.units.cg456 cg = el.o();
            int i = left + x;
            while (i <= x + right) {
                int j = top + y;
                while (j <= bottom + y) {
                    boolean b = com.corrodinggames.rts.game.units.d.f655.a(this, el, cg, i, j);
                    int rLeft = b326b.n * i - ct;
                    int rTop = b326b.o * j - cu;
                    android.graphics.Rect r = b326a.ao;
                    int rRight = b326b.n + rLeft - 1;
                    int rBottom = b326b.o + rTop - 1;
                    r.set(rLeft, rTop, rRight, rBottom);
                    if (b) {
                        fi.b(b326a.ao, b326b.ae);
                    } else {
                        fi.b(b326a.ao, b326b.ag);
                        fi.b(b326a.ao, b326b.af);
                    }
                    j++;
                }
                i++;
            }
        }
    }

    // ==== from bc(void)V.java ====
    public final strictfp void bc() {
        this.a((com.corrodinggames.rts.game.units.bp437) null);
        this.T = null;
        this.at();
        this.dg();
        return;
    }

    // ==== from bd(void)V.java ====
    public strictfp void bd() {
        if (this.cQ != null) {
            this.bg();
        }
        super.bd();
    }

    // ==== from be(void)V.java ====
    public strictfp void be() {
        super.be();
    }

    // ==== from bf(void)I.java ====
    public final strictfp int bf() {
        int v0 = super.bf();
        int v1 = (int) (y() * 100.0f);
        int v2 = (int) (z() * 100.0f);
        int v3 = (int) (l() * 100.0f);
        int v4 = (int) b(0);
        int v5 = (int) (B() * 100.0f);
        v0 = (v0 + 0) * 31 + v1;
        v0 = v0 * 31 + v2;
        v0 = v0 * 31 + v3;
        v0 = v0 * 31 + v4;
        v0 = v0 * 31 + v5;
        return v0;
    }

    // ==== from bg(void)V.java ====
    public final strictfp void bg() {
        com.corrodinggames.rts.game.units.bp437 v0 = this.cQ;
        if (v0 == null) {
            return;
        }
        v0 = this.cQ;
        if (!v0.b(this)) {
            StringBuilder stringBuilder = new StringBuilder("Deattach failed, forcing deattach. Child:");
            stringBuilder.append(this.ce());
            stringBuilder.append(" Parent:");
            stringBuilder.append(this.cQ.ce());
            com.corrodinggames.rts.gameFramework.k1104.b(stringBuilder.toString());
            this.cQ = null;
            this.cR = null;
        }
    }

    // ==== from bh(void)b579.java ====
    public strictfp com.corrodinggames.rts.game.units.custom.d.b579 bh() {
        com.corrodinggames.rts.game.units.custom.d.b579 v0 = com.corrodinggames.rts.game.units.custom.d.b579.a;
        return v0;
    }

    // ==== from bi(void)p1351.java ====
    public strictfp com.corrodinggames.rts.gameFramework.utility.p1351 bi() {
        return com.corrodinggames.rts.game.units.bp437.bs;
    }

    // ==== from bj(void)Z.java ====
    public strictfp boolean bj() {
        return false;
    }

    // ==== from bk(void)I.java ====
    public strictfp int bk() {
        return 0;
    }

    // ==== from bl(void)V.java ====
    public final strictfp void bl() {
        com.corrodinggames.rts.game.units.custom.d.b579 v0 = this.dn();
        com.corrodinggames.rts.game.units.custom.d.b579 v1 = this.bm();

        if (v0 == null) {
            v0 = v1;
        } else if (v1 != null) {
            v0 = com.corrodinggames.rts.game.units.custom.d.b579.a(v0, v1);
        }

        v1 = this.dL;
        if (v1 == null && v0 == null) {
            return;
        }

        v1 = this.dL;
        if (v1 != null && v0 != null) {
            if (this.dL.b(v0)) {
                return;
            }
        }

        com.corrodinggames.rts.game.p352.b((com.corrodinggames.rts.game.units.ce454) this);
        this.dL = v0;
        com.corrodinggames.rts.game.p352.c((com.corrodinggames.rts.game.units.ce454) this);
    }

    // ==== from bm(void)b579.java ====
    public strictfp com.corrodinggames.rts.game.units.custom.d.b579 bm() {
        return null;
    }

    // ==== from c(en734)V.java ====
    private strictfp void c(com.corrodinggames.rts.game.units.en734 p1) {
        com.corrodinggames.rts.game.units.a.c360 v0 = p1.c;
        if (v0 == null) {
            as();
            p1 = null;
        }
        if (p1 != null) {
            com.corrodinggames.rts.game.units.eo735 v0Eo = com.corrodinggames.rts.game.units.eo735.p;
            com.corrodinggames.rts.game.units.a.c360 v0C = p1.c;
            com.corrodinggames.rts.game.units.a.s376 v0S = a(v0C);
            T();
            if (v0S == null) {
                StringBuilder v0Sb = new StringBuilder("Failed to find action:");
                com.corrodinggames.rts.game.units.a.c360 v1C = p1.c;
                String v1S = v1C.b;
                v0Sb.append(v1S);
                String v0Str = v0Sb.toString();
                a(v0Str);
            } else {
                android.graphics.PointF v1 = new android.graphics.PointF(p1.e, p1.f);
                a(v0S, false, v1, p1.h);
            }
            as();
        }
    }

    // ==== from c(F)V.java ====
    public strictfp void c(float p1) {
        super.c(p1);
    }

    // ==== from c(F_F)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 c(float p1, float p2) {
        com.corrodinggames.rts.game.units.en734 v0 = this.an();
        v0.b(p1, p2);
        return v0;
    }

    // ==== from c(F_F_F)V.java ====
    private strictfp void c(float p1, float p2, float p3) {
        float v7 = 600.0f;
        float v6 = 180.0f;

        float v0 = this.as;
        float v1 = -900.0f;
        if (v0 < v1) {
            v0 = this.eq;
            v1 = this.er;
            v0 = com.corrodinggames.rts.gameFramework.f1006.d(v0, v1, p2, p3);
            this.as = v0;
        }

        v0 = 10000.0f;
        if (p1 < v0) {
            if (this.bC()) {
                this.at = true;
            }
        }

        if (this.at) {
            double d0 = (double) this.cD;
            double d2 = (double) this.aN();
            double d4 = 0.6D;
            d2 *= d4;
            if (!(d0 < d2)) {
                this.j += com.corrodinggames.rts.gameFramework.f1006.k(this.as + v6) * v7;
                this.k += com.corrodinggames.rts.gameFramework.f1006.j(this.as + v6) * v7;
            } else {
                v0 = 40000.0f;
                if (p1 < v0) {
                    this.at = false;
                    this.as = -999.0f;
                    this.ax();
                } else {
                    v0 = this.cD;
                    v1 = this.aN();
                    if (v0 < v1) {
                        this.at = false;
                        this.as = -999.0f;
                        this.ax();
                    } else {
                        this.j += com.corrodinggames.rts.gameFramework.f1006.k(this.as + v6) * v7;
                        this.k += com.corrodinggames.rts.gameFramework.f1006.j(this.as + v6) * v7;
                    }
                }
            }
        }
        return;
    }

    // ==== from C(I)F.java ====
    public abstract float c(int i);

    // ==== from c(p352)Z.java ====
    public strictfp boolean c(com.corrodinggames.rts.game.p352 p1) {
        boolean v0 = false;
        String v1 = this.a(v0, p1);
        if (v1 == null) {
            v0 = true;
        }
        return v0;
    }

    // ==== from c(void)e1216.java ====
    public abstract com.corrodinggames.rts.gameFramework.m.e1216 c();

    // ==== from C(void)F.java ====
    public strictfp float C() {
        return 99.0f;
    }

    // ==== from cT(void)en734.java ====
    private strictfp com.corrodinggames.rts.game.units.en734 cT() {
        com.corrodinggames.rts.game.units.en734[] v0 = this.Q;
        int v1 = 1;
        return v0[v1];
    }

    // ==== from cU(void)I.java ====
    private strictfp int cU() {
        return this.O;
    }

    // ==== from cV(void)V.java ====
    private strictfp void cV() {
        dc();
        as();
    }

    // ==== from d(ce454)Z.java ====
    public final strictfp boolean d(com.corrodinggames.rts.game.units.ce454 p1) {
        float v0 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, p1.eq, p1.er);
        float v1 = this.v(p1);
        v1 *= v1;
        if (v0 < v1) {
            return true;
        }
        return false;
    }

    // ==== from d(I)e1216.java ====
    public abstract com.corrodinggames.rts.gameFramework.m.e1216 d(int p0);

    // ==== from D(I)F.java ====
    public strictfp float D(int i) {
        return 4.0f;
    }

    // ==== from d(Z)fq1260.java ====
    private static strictfp com.corrodinggames.rts.gameFramework.m.fq1260 d(boolean p0) {
        com.corrodinggames.rts.gameFramework.m.fq1260 v0 = new com.corrodinggames.rts.gameFramework.m.fq1260();
        if (p0) {
            v0.setAntiAlias(true);
            v0.setFilterBitmap(true);
            v0.setDither(true);
        } else {
            v0.setAntiAlias(false);
            v0.setFilterBitmap(false);
            v0.setDither(false);
        }
        return v0;
    }

    // ==== from dc(void)V.java ====
    private strictfp void dc() {
        boolean v2 = true;
        boolean v3 = false;

        if (this.ai == 0) {
            return;
        }

        com.corrodinggames.rts.game.units.en734 v7 = this.M();
        com.corrodinggames.rts.game.units.ce454[] v8 = com.corrodinggames.rts.game.units.ce454.bG.c;
        int v9 = com.corrodinggames.rts.game.units.ce454.bG.size();
        int v6 = 0;

        while (v6 < v9) {
            com.corrodinggames.rts.game.units.ce454 v0 = v8[v6];
            if (v0 instanceof com.corrodinggames.rts.game.units.bp437) {
                com.corrodinggames.rts.game.units.bp437 v0bp = (com.corrodinggames.rts.game.units.bp437) v0;
                if (v0bp.af == this) {
                    float v1 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0bp.eq, v0bp.er);
                    boolean v1b = v1 < 108900.0f;
                    com.corrodinggames.rts.game.units.en734 v4 = v0bp.M();
                    boolean v4b;
                    boolean v5b;

                    if (v7 != null && v4 != null) {
                        if (v7.b(v4)) {
                            v4b = v2;
                            v5b = v3;
                        } else {
                            v4b = v3;
                            v5b = v3;
                        }
                    } else {
                        if (v7 == null && v4 == null) {
                            v4b = v3;
                            v5b = v2;
                        } else {
                            v4b = v3;
                            v5b = v3;
                        }
                    }

                    if (v4b && v1b) {
                        v0bp.as();
                    } else {
                        if (!v5b) {
                            v0bp.a((com.corrodinggames.rts.game.units.bp437) null);
                        }
                    }
                }
            }
            v6++;
        }
    }

    // ==== from dd(void)bx445.java ====
    private strictfp com.corrodinggames.rts.game.units.bx445 dd() {
        if (this.ay == 0) {
            return null;
        }
        if (this.aw != null) {
            return this.aw.a(this);
        }
        return this.ax[0];
    }

    // ==== from de(void)bx445.java ====
    private strictfp com.corrodinggames.rts.game.units.bx445 de() {
        if (this.ay < 2) {
            return null;
        }
        if (this.aw != null) {
            return this.aw.b(this);
        }
        return this.ax[1];
    }

    // ==== from df(void)Z.java ====
    private strictfp boolean df() {
        if (this.aw != null) {
            return false;
        }
        if (this.ay < 2) {
            return false;
        }
        if (this.y() > 0.5d) {
            if (this.Y > 150.0f) {
                return true;
            }
            if (this.Z > 150.0f) {
                return true;
            }
            return false;
        } else {
            if (this.Y > 300.0f) {
                return true;
            }
            if (this.Z > 300.0f) {
                return true;
            }
            return false;
        }
    }

    // ==== from dg(void)V.java ====
    private strictfp void dg() {
        this.ax();
        this.ax = bp437.av;
        this.aK = (byte) 0;
        this.aL = null;
        this.aM = null;
    }

    // ==== from dh(void)V.java ====
    private strictfp void dh() {
        float f = this.Y;
        this.Z = f;
        this.Y = 0.0f;

        if (this.aw != null) {
            return;
        }

        if (this.ay == 0) {
            return;
        }

        if (this.ay == 1) {
            this.ay = 0;
            return;
        }

        com.corrodinggames.rts.game.units.bx445 item = this.ax[0];
        int i = 0;
        while (i < this.ay - 1) {
            com.corrodinggames.rts.game.units.bx445[] array = this.ax;
            com.corrodinggames.rts.game.units.bx445 next = array[i + 1];
            array[i] = next;
            i++;
        }
        this.ax[this.ay - 1] = item;
        this.ay = this.ay - 1;
    }

    // ==== from di(void)Z.java ====
    private strictfp boolean di() {
        com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
        boolean v0 = v1.bN.renderAntiAlias;
        if (!cL()) {
            v0 = false;
            if (!(v1.cU < 1.0f)) {
                v0 = true;
            }
        }
        if (this.cq) {
            v0 = com.corrodinggames.rts.game.units.cj459.ag;
        }
        return v0;
    }

    // ==== from dl(void)Z.java ====
    private strictfp boolean dl() {
        return aM() > 0.95f;
    }

    // ==== from dm(void)bp437.java ====
    private strictfp com.corrodinggames.rts.game.units.bp437 dm() {
        java.util.Iterator<?> v2 = com.corrodinggames.rts.game.units.ce454.bG.iterator();
        while (v2.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 v0 = (com.corrodinggames.rts.game.units.ce454) v2.next();
            if (v0 == this) {
                continue;
            }
            if (!(v0 instanceof com.corrodinggames.rts.game.units.bp437)) {
                continue;
            }
            com.corrodinggames.rts.game.units.bp437 v0bp = (com.corrodinggames.rts.game.units.bp437) v0;
            if (v0bp.bX) {
                continue;
            }
            if (v0bp.bZ != this.bZ) {
                continue;
            }
            if (v0bp.q() != this.q()) {
                continue;
            }
            float v1 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0bp.eq, v0bp.er);
            float v3 = this.cl + v0bp.cl;
            v3 *= v3;
            boolean v1b = v1 < v3;
            if (v1b) {
                return v0bp;
            }
        }
        return null;
    }

    // ==== from dn(void)b579.java ====
    private strictfp com.corrodinggames.rts.game.units.custom.d.b579 dn() {
        float v5 = 1.0f;
        float v4 = 60.0f;
        com.corrodinggames.rts.game.units.ce454 v2 = this.W();
        if (v2 == null) {
            return null;
        }
        com.corrodinggames.rts.game.units.en734 v0 = this.ap();
        if (v0 == null) {
            return null;
        }
        if (v0.a == com.corrodinggames.rts.game.units.eo735.d && !(v2.co < v5)) {
            com.corrodinggames.rts.game.units.custom.d.b579 v1 = com.corrodinggames.rts.game.units.bp437.a_(v2);
            float v3 = this.t(v2);
            if (v1 != null) {
                float f = v3 * v4;
                f = -f;
                return com.corrodinggames.rts.game.units.custom.d.b579.a(v1, f);
            }
        }
        if (v0.a == com.corrodinggames.rts.game.units.eo735.g) {
            if (!(v2.co < v5)) {
                com.corrodinggames.rts.game.units.custom.d.b579 v0b = com.corrodinggames.rts.game.units.bp437.a_(v2);
                float v1f = this.Y();
                if (v0b == null) {
                    return null;
                }
                v1f = v1f * v4;
                return com.corrodinggames.rts.game.units.custom.d.b579.a(v0b, v1f);
            } else {
                if (com.corrodinggames.rts.game.units.bp437.o(v2)) {
                    float v3 = this.p(v2);
                    com.corrodinggames.rts.game.units.custom.d.b579 v1 = v2.cp();
                    com.corrodinggames.rts.game.units.custom.d.b579 v0c = v2.cq();
                    if (v0c == null) {
                        v0c = v1;
                    }
                    float f = v3 * v4;
                    f = f / v2.cx;
                    return com.corrodinggames.rts.game.units.custom.d.b579.a(v0c, f);
                } else {
                    return null;
                }
            }
        }
        return null;
    }

    // ==== from e(ce454)Z.java ====
    public final strictfp boolean e(com.corrodinggames.rts.game.units.ce454 p1) {
        boolean v0 = false;
        int v2 = this.aU();
        int v1 = 0;
        while (v1 < v2) {
            if (this.m(v1)) {
                if (this.a(v1, p1, false, false)) {
                    int v3 = this.q(v1);
                    if (v3 == -1 || this.a(v3, p1, false, false)) {
                        v0 = true;
                        return v0;
                    }
                }
            }
            v1++;
        }
        return v0;
    }

    // ==== from E(I)F.java ====
    public strictfp float e(int p0) {
        return 0.0f;
    }

    // ==== from E(void)Z.java ====
    public strictfp boolean E() {
        if (this.es > 0.0f && this.co < 1.0f && !this.cs) {
            return true;
        }
        return false;
    }

    // ==== from e(Z)F.java ====
    private strictfp float e(boolean p1) {
        float v1 = 190.0f;
        float v5 = 110.0f;
        float v0 = this.l();
        com.corrodinggames.rts.game.units.en734 v2 = this.ap();

        if (v2 != null) {
            if (v2.a == com.corrodinggames.rts.game.units.eo735.h || v2.a == com.corrodinggames.rts.game.units.eo735.j || v2.a == com.corrodinggames.rts.game.units.eo735.k) {
                if (v2.a == com.corrodinggames.rts.game.units.eo735.j) {
                    v0 += v5;
                } else if (v2.a == com.corrodinggames.rts.game.units.eo735.k) {
                    v0 += 90.0f;
                } else {
                    v0 += 20.0f;
                }
                if (v0 < v1) {
                    v0 = v1;
                }
            }
        }

        com.corrodinggames.rts.game.units.a384 vR = this.R;
        if (vR == com.corrodinggames.rts.game.units.a384.a) {
            v0 += 250.0f;
        } else if (vR == com.corrodinggames.rts.game.units.a384.e) {
            v0 += 150.0f;
        } else if (vR == com.corrodinggames.rts.game.units.a384.f) {
            v0 += 180.0f;
        } else {
            v0 += this.ak();
            if (p1) {
                v0 += v5;
            }
        }
        return v0;
    }

    // ==== from f(ce454)Z.java ====
    public strictfp boolean f(com.corrodinggames.rts.game.units.ce454 p1) {
        boolean v0 = p1.h();
        if (v0) {
            v0 = ad();
            return v0;
        }
        v0 = p1.Q();
        if (v0) {
            v0 = ac();
            return v0;
        }
        if (!af() && !p1.ck()) {
            v0 = false;
            return v0;
        }
        v0 = ae();
        return v0;
    }

    // ==== from f(F)V.java ====
    public final strictfp void f(float p1) {
        if (this.aB < p1) {
            this.aB = p1;
        }
    }

    // ==== from f(I)F.java ====
    public strictfp float f(int i) {
        return 4.0f;
    }

    // ==== from F(I)PointF.java ====
    public strictfp android.graphics.PointF F(int p1) {
        android.graphics.PointF v0 = com.corrodinggames.rts.game.units.bp437.bl;
        v0.set(0.0f, 0.0f);
        com.corrodinggames.rts.game.units.ch457 v1 = this.cN[p1];
        float v2 = v0.x;
        float v3 = v1.h;
        v2 = v2 + v3;
        v0.x = v2;
        v2 = v0.y;
        v3 = v1.i;
        v3 = v3 + v2;
        v0.y = v3;
        return v0;
    }

    // ==== from F(void)F.java ====
    public strictfp float F() {
        float v0 = 0.0f;
        return v0;
    }

    // ==== from g(ce454)Z.java ====
    public strictfp boolean g(com.corrodinggames.rts.game.units.ce454 p1) {
        boolean v0 = true;
        float v1 = p1.f();
        float v2 = 0.0f;
        if (v1 == v2 || !this.f(p1, true)) {
            v0 = this.a(p1);
        }
        return v0;
    }

    // ==== from g(F)V.java ====
    public static strictfp void g(float p0) {
        int v13 = 9;
        int v2 = -1;
        int v1 = 1;
        int v3 = 0;

        com.corrodinggames.rts.gameFramework.k1104 v5 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.gameFramework.cg911 cg0 = com.corrodinggames.rts.gameFramework.cg911.j;
        int v6 = v5.bv;
        com.corrodinggames.rts.gameFramework.utility.x1359 v7 = com.corrodinggames.rts.game.units.bp437.aO;
        com.corrodinggames.rts.gameFramework.utility.x1359 ceBG0 = com.corrodinggames.rts.game.units.ce454.bG;
        com.corrodinggames.rts.game.units.ce454[] v8 = ceBG0.c;
        int v9 = com.corrodinggames.rts.game.units.ce454.bG.size();
        int v4 = 0;

        while (true) {
            if (v4 >= v9) {
                break;
            }
            com.corrodinggames.rts.game.units.ce454 v10 = v8[v4];
            int v0;
            if (v10.h()) {
                v0 = 3;
            } else if (v10.Q()) {
                v0 = 2;
            } else {
                v0 = v1;
            }
            if (v10.cP != null) {
                v0 = v2;
            }
            if (v10.bV) {
                v0 = v2;
            }
            v10.bW = v0;
            v4++;
        }

        v4 = 0;
        while (true) {
            if (v4 >= v9) {
                break;
            }
            if (!(v8[v4] instanceof com.corrodinggames.rts.game.units.bp437)) {
                v4++;
                continue;
            }
            com.corrodinggames.rts.game.units.bp437 v0 = (com.corrodinggames.rts.game.units.bp437) v8[v4];
            if ((!v0.aA || v0.cd) && v0.H() && v0.aN <= v6) {
                v0.cd = false;
                v0.aA = true;
                float v2f;
                if (v0.cM) {
                    v2f = v0.cl + 7.0f;
                    if (v0.aK > v13) {
                        v0.aN = v6 + 200 + (v4 % 50);
                    } else {
                        v0.aN = v6 + 50 + (v4 % 50);
                    }
                } else {
                    v2f = v0.cl + 5.0f;
                    v0.aN = v6 + 250 + (v4 % 50);
                }
                v0.aK = (byte) 0;
                v7.clear();
                v5.bZ.a(v0.eq, v0.er, v2f, v7);
                com.corrodinggames.rts.game.units.ce454[] v10arr = v7.c;
                int v11 = v7.b;
                for (int v2i = 0; v2i < v11; v2i++) {
                    com.corrodinggames.rts.game.units.ce454 v12 = v10arr[v2i];
                    v0.a(v12, p0, true);
                }
                if (v0.aK > v13) {
                    if (v0.bB > v6 - 400) {
                        v0.aN = v5.bv + 5 + (v4 % 5);
                        v0.cd = true;
                    }
                }
            }
            v4++;
        }

        com.corrodinggames.rts.gameFramework.cg911 cgJ = com.corrodinggames.rts.gameFramework.cg911.j;
        com.corrodinggames.rts.gameFramework.cg911 cgK = com.corrodinggames.rts.gameFramework.cg911.k;
        int v2i = 0;
        while (true) {
            if (v2i >= v9) {
                break;
            }
            if (v8[v2i] instanceof com.corrodinggames.rts.game.units.bp437) {
                com.corrodinggames.rts.game.units.bp437 v0 = (com.corrodinggames.rts.game.units.bp437) v8[v2i];
                if (v0.aA) {
                    int v5i = v0.aK;
                    if (v5i > 0 && v0.H()) {
                        if (v0.cd) {
                            v0.cd = true;
                        }
                        for (int v4i = 0; v4i < v5i; v4i++) {
                            com.corrodinggames.rts.game.units.ce454 v6o = v0.aL[v4i];
                            v0.a(v6o, p0, false);
                        }
                    }
                }
            }
            v2i++;
        }
        com.corrodinggames.rts.gameFramework.cg911 cgEnd = com.corrodinggames.rts.gameFramework.cg911.k;
    }

    // ==== from G(I)F.java ====
    public strictfp float g(int p0) {
        float v0 = 0.0f;
        return v0;
    }

    // ==== from G(void)F.java ====
    public strictfp float G() {
        return 0.0f;
    }

    // ==== from h(ce454)V.java ====
    public strictfp void h(com.corrodinggames.rts.game.units.ce454 p0) {
    }

    // ==== from h(F)V.java ====
    public final strictfp void h(float p1) {
        float v0 = com.corrodinggames.rts.gameFramework.f1006.c(this.ci, p1, 360.0f);
        if ((double) com.corrodinggames.rts.gameFramework.f1006.d(v0) > 0.01) {
            this.i(v0);
        }
    }

    // ==== from h(I)V.java ====
    public strictfp void H(int p1) {
        float v2 = 0.0f;
        int v0 = -1;
        if (p1 == v0) {
            int v1 = this.aU();
            v0 = 0;
            while (v0 < v1) {
                this.H(v0);
                v0 = v0 + 1;
            }
        } else {
            com.corrodinggames.rts.game.units.ch457 v0Obj = this.cN[p1];
            v0Obj.h = v2;
            v0Obj.i = v2;
            if (this.T != null) {
                float v1 = this.G(p1);
                if (v1 != v2) {
                    v1 = this.T.cl;
                    v2 = this.G(p1);
                    v1 = v1 * v2;
                    v0Obj.h = v0Obj.h + (float) com.corrodinggames.rts.gameFramework.f1006.a((com.corrodinggames.rts.gameFramework.ah801) this, (int) (-v1), (int) v1, p1 + 1);
                    v0Obj.i = v0Obj.i + (float) com.corrodinggames.rts.gameFramework.f1006.a((com.corrodinggames.rts.gameFramework.ah801) this, (int) (-v1), (int) v1, p1 + 2);
                }
            }
        }
    }

    // ==== from H(void)Z.java ====
    public abstract boolean H();

    // ==== from i(ce454)en734.java ====
    public final strictfp com.corrodinggames.rts.game.units.en734 i(com.corrodinggames.rts.game.units.ce454 p1) {
        com.corrodinggames.rts.game.units.en734 v0 = this.an();
        v0.a(p1);
        return v0;
    }

    // ==== from i(F)V.java ====
    public strictfp void i(float p1) {
        this.ci += p1;
        if (this.ci > 180.0f) {
            this.ci -= 360.0f;
        }
        if (this.ci < -180.0f) {
            this.ci += 360.0f;
        }
        if (this.aV()) {
            int v1 = this.aU();
            for (int v0 = 0; v0 < v1; v0++) {
                com.corrodinggames.rts.game.units.ch457 v2 = this.cN[v0];
                v2.a += p1;
                if (v2.a > 180.0f) {
                    v2.a -= 360.0f;
                }
                if (v2.a < -180.0f) {
                    v2.a += 360.0f;
                }
            }
        }
    }

    // ==== from i(I)F.java ====
    public strictfp float i(int p0) {
        float v0 = 0.0f;
        return v0;
    }

    // ==== from I(I)Z.java ====
    public strictfp boolean I(int p0) {
        return false;
    }

    // ==== from i_(void)Z.java ====
    public strictfp boolean i_() {
        android.graphics.RectF v0 = com.corrodinggames.rts.gameFramework.k1104.t().cJ;
        android.graphics.RectF v1 = ch();
        return android.graphics.RectF.intersects(v0, v1);
    }

    // ==== from j(ce454)I.java ====
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

    // ==== from j(F)V.java ====
    public final strictfp void j(float p1) {
        int v1 = this.aU();
        for (int v0 = 0; v0 < v1; v0++) {
            com.corrodinggames.rts.game.units.ch457 v2 = this.cN[v0];
            float v3 = this.w(v0);
            v3 += p1;
            v2.a = v3;
        }
    }

    // ==== from j(I)F.java ====
    public strictfp float j(int p0) {
        return 0.0f;
    }

    // ==== from j(void)e1216.java ====
    public abstract com.corrodinggames.rts.gameFramework.m.e1216 j();

    // ==== from k(ce454)Z.java ====
    public final strictfp boolean k(com.corrodinggames.rts.game.units.ce454 p1) {
        float v1 = 11.0f;
        float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, p1.eq, p1.er);
        float v0 = 9.0f;
        if (!p1.bq()) {
            v0 = this.cl + p1.cl;
            if (v0 < v1) {
                v0 = v1;
            }
        }
        v0 *= v0;
        if (v2 < v0) {
            return true;
        }
        return false;
    }

    // ==== from k(F)I.java ====
    public static strictfp int k(float p0) {
        int v1 = 0x2d;
        if (p0 < -0.3f || Float.isNaN(p0)) {
            float v0 = 1.0f;
            float v2 = -p0;
            float v3 = 10.0f;
            v2 /= v3;
            v0 -= v2;
            v2 = 130.0f;
            v0 *= v2;
            v2 = 45.0f;
            v0 += v2;
            int v0i = (int) v0;
            if (v0i < v1) {
                v0i = v1;
            }
            return v0i;
        } else {
            return 0xff;
        }
    }

    // ==== from k(I)V.java ====
    public strictfp void k(int p0) {
        return;
    }

    // ==== from l(F)PointF.java ====
    final strictfp android.graphics.PointF l(float p1) {
        android.graphics.PointF v0 = this.m(p1);
        android.graphics.PointF v1 = com.corrodinggames.rts.game.units.bp437.dG;
        float v2 = this.eq;
        float v3 = v0.x;
        float v4 = this.er;
        v2 += v3;
        float v0Y = v0.y;
        v0Y += v4;
        v1.set(v2, v0Y);
        return com.corrodinggames.rts.game.units.bp437.dG;
    }

    // ==== from l(I)F.java ====
    public strictfp float l(int p0) {
        return 0.0f;
    }

    // ==== from l(void)F.java ====
    public abstract float l();

    // ==== from L(void)V.java ====
    private strictfp void L() {
        bl();
        this.g = -9999;
        if (this.T != null && this.T.bV()) {
            this.T = null;
        }
    }

    // ==== from m(F)PointF.java ====
    public final strictfp android.graphics.PointF m(float p1) {
        float v1 = 0.0f;
        float v0;
        float v2;
        if (this.H() && this.b == v1) {
            if (this.aS()) {
                v0 = this.ce;
                v1 = this.cf;
                v1 *= p1;
                v0 *= p1;
                v2 = v1;
            } else {
                v0 = this.ch;
                if (v0 != v1) {
                    v0 = this.ci;
                    if (this.aT()) {
                        v0 = this.cj;
                    }
                    v1 = this.y();
                    v1 *= this.ch;
                    v2 = v1 * p1;
                    float v3 = com.corrodinggames.rts.gameFramework.f1006.k(v0);
                    v0 = com.corrodinggames.rts.gameFramework.f1006.j(v0);
                    v1 = v0 * v2;
                    v0 = v3 * v2;
                    v2 = v1;
                } else {
                    v0 = v1;
                    v2 = v1;
                }
            }
        } else {
            v0 = v1;
            v2 = v1;
        }
        com.corrodinggames.rts.game.units.bp437.bo.set(v0, v2);
        return com.corrodinggames.rts.game.units.bp437.bo;
    }

    // ==== from m(I)Z.java ====
    public strictfp boolean m(int p0) {
        boolean v0 = true;
        return v0;
    }

    // ==== from M(void)en734.java ====
    private strictfp com.corrodinggames.rts.game.units.en734 M() {
        int v1 = 1;
        int v0 = this.O;
        if (v0 <= v1) {
            return null;
        }
        return this.Q[v1];
    }

    // ==== from n(I)Z.java ====
    public strictfp boolean n(int p0) {
        return false;
    }

    // ==== from o(I)F.java ====
    public strictfp float o(int p1) {
        return 0.0f;
    }

    // ==== from p(I)Z.java ====
    public strictfp boolean p(int p1) {
        int v0 = this.q(p1);
        int v1 = -1;
        boolean v2;
        if (v0 == v1) {
            v2 = this.cN[p1].g;
        } else {
            v2 = this.cN[v0].g;
        }
        return v2;
    }

    // ==== from q(I)I.java ====
    public strictfp int q(int p0) {
        return -1;
    }

    // ==== from Q(I)V.java ====
    private strictfp void Q(int p1) {
        int v2 = 0x1e;
        if (p1 >= v2) {
            throw new RuntimeException("Waypoint index:" + p1 + " too large");
        }
        if (this.Q == com.corrodinggames.rts.game.units.bp437.P) {
            this.Q = new com.corrodinggames.rts.game.units.en734[0x1e];
        }
        return;
    }

    // ==== from R(I)bx445.java ====
    private strictfp com.corrodinggames.rts.game.units.bx445 R(int p1) {
        if (this.aw != null) {
            if (p1 == 0) {
                return dd();
            } else {
                return de();
            }
        } else {
            if (p1 >= this.ay) {
                return null;
            } else {
                return this.ax[p1];
            }
        }
    }

    // ==== from r(I)F.java ====
    public strictfp float r(int i) {
        return -1.0f;
    }

    // ==== from R(void)Paint.java ====
    public final strictfp Paint R() {
        if (di()) {
            return aH;
        } else {
            return aG;
        }
    }

    // ==== from s(I)F.java ====
    public strictfp float s(int p0) {
        return 5.0f;
    }

    // ==== from S(void)V.java ====
    public strictfp void S() {
        this.M = this.c();
        this.N = this.j();
    }

    // ==== from t(ce454)F.java ====
    private strictfp float t(com.corrodinggames.rts.game.units.ce454 p1) {
        float v0 = p1.q().D();
        if (p1.U() == 2) {
            v0 *= 0.5f;
        }
        if (p1.U() == 3) {
            v0 *= 0.25f;
        }
        float v1 = w();
        v0 *= v1;
        return v0;
    }

    // ==== from t(I)F.java ====
    public strictfp float t(int p1) {
        float v0 = r(p1);
        return v0;
    }

    // ==== from T(void)V.java ====
    public strictfp void T() {
        com.corrodinggames.rts.game.units.el732 v0 = q();
        String v0String;
        if (v0 != null) {
            v0 = q();
            v0String = v0.i();
        } else {
            v0String = "<NO UNIT TYPE>";
        }
        StringBuilder v1 = new StringBuilder("---- Debug for:");
        v1.append(v0String);
        v1.append(" id:");
        v1.append(this.ej);
        v1.append("---");
        com.corrodinggames.rts.gameFramework.k1104.d(v1.toString());
    }

    // ==== from u(ce454)Z.java ====
    private strictfp boolean u(com.corrodinggames.rts.game.units.ce454 p1) {
        boolean v0 = true;
        boolean v1 = false;
        int v3 = aU();
        int v2 = 0;
        while (v2 < v3) {
            boolean v4 = m(v2);
            if (v4 && a(v2, p1, v0, v1)) {
                int v5 = q(v2);
                if (v5 == -1) {
                    return v0;
                }
                if (a(v5, p1, v0, v1)) {
                    return v0;
                }
            }
            v2 += 1;
        }
        v0 = v1;
        return v0;
    }

    // ==== from u(I)F.java ====
    public strictfp float u(int p0) {
        return 99999.0f;
    }

    // ==== from U(void)I.java ====
    public strictfp int U() {
        return 1;
    }

    // ==== from u(void)Z.java ====
    public strictfp boolean u() {
        return true;
    }

    // ==== from v(ce454)F.java ====
    private strictfp float v(com.corrodinggames.rts.game.units.ce454 p1) {
        float v0;
        if (this.aI() && p1 != null) {
            v0 = this.l();
            v0 += this.cl;
            v0 += p1.cl;
        } else {
            v0 = this.l();
        }
        return v0;
    }

    // ==== from v(I)F.java ====
    public strictfp float v(int p0) {
        return -1.0f;
    }

    // ==== from V(void)V.java ====
    public final strictfp void V() {
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.p352 v1 = this.bZ;
        if (v1 == v0.bp) {
            v0.bP.i.b((com.corrodinggames.rts.game.units.ce454) this);
        }
    }

    // ==== from w(ce454)F.java ====
    private strictfp float w(com.corrodinggames.rts.game.units.ce454 p1) {
        if (aI() && p1 != null) {
            return aH() + this.cl + p1.cl;
        }
        return aH();
    }

    // ==== from w(I)F.java ====
    public strictfp float w(int p0) {
        float v0 = 0.0f;
        return v0;
    }

    // ==== from W(void)ce454.java ====
    public final strictfp com.corrodinggames.rts.game.units.ce454 W() {
        if (this.f) {
            com.corrodinggames.rts.game.units.en734 v0 = this.ap();
            if (v0 != null) {
                if (v0.a == com.corrodinggames.rts.game.units.eo735.d || v0.a == com.corrodinggames.rts.game.units.eo735.g) {
                    if (v0.h != null && !v0.h.bX) {
                        return v0.h;
                    }
                }
            }
        }
        return null;
    }

    // ==== from x(I)F.java ====
    public strictfp float x(int p1) {
        if (this.ck && this.dl()) {
            return this.ci + 180.0f;
        }
        return this.ci;
    }

    // ==== from X(void)Z.java ====
    public final strictfp boolean X() {
        com.corrodinggames.rts.game.units.en734 v0 = ap();
        if (v0 != null && v0.a == com.corrodinggames.rts.game.units.eo735.g) {
            return true;
        }
        return false;
    }

    // ==== from y(I)am1333.java ====
    public strictfp com.corrodinggames.rts.gameFramework.utility.am1333 y(int p1) {
        com.corrodinggames.rts.gameFramework.utility.am1333 v0 = com.corrodinggames.rts.game.units.bp437.bh;
        android.graphics.PointF v1 = this.z(p1);
        v0.a(v1);
        v0 = com.corrodinggames.rts.game.units.bp437.bh;
        return v0;
    }

    // ==== from Y(void)F.java ====
    public abstract float y();

    // ==== from z(I)PointF.java ====
    public strictfp android.graphics.PointF z(int p1) {
        com.corrodinggames.rts.game.units.ch457 v0 = this.cN[p1];
        float v1 = this.g(p1);
        float v0Float;
        if (this.D()) {
            v0Float = this.ci;
        } else {
            v0Float = v0.a;
        }
        android.graphics.PointF v2 = this.B(p1);
        float v3 = v2.x;
        float v4 = com.corrodinggames.rts.gameFramework.f1006.k(v0Float);
        float v2y = v2.y;
        float v0Result = com.corrodinggames.rts.gameFramework.f1006.j(v0Float);
        android.graphics.PointF v5 = bp437.bi;
        v4 *= v1;
        v3 += v4;
        v0Result *= v1;
        v0Result += v2y;
        v5.set(v3, v0Result);
        return bp437.bi;
    }

    // ==== from z(void)F.java ====
    public abstract float z();

    // ==== from Z(void)Z.java ====
    public final strictfp boolean Z() {
        boolean v0 = false;
        ce454 v1 = this.T;
        if (v1 != null && !v1.bX) {
            int v2 = this.aU();
            for (int i = 0; i < v2; i++) {
                ce454 v3 = this.cN[i].j;
                if (v3 != null && this.m(i)) {
                    v0 = true;
                    return v0;
                }
            }
        }
        return v0;
    }

}
