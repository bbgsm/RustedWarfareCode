package com.corrodinggames.rts.game;

public class i345 extends com.corrodinggames.rts.gameFramework.k1104 {

    // ==== from __header__.java ====
    public static String a;

    public static boolean b;

    public static String e;

    public com.corrodinggames.rts.gameFramework.bu895 A;

    public com.corrodinggames.rts.gameFramework.bt894 B;

    public com.corrodinggames.rts.gameFramework.d.b918 C;

    com.corrodinggames.rts.game.a324 D;

    boolean E;

    float F;

    public float G;

    public float H;

    public float I;

    com.corrodinggames.rts.game.l348 J;

    com.corrodinggames.rts.game.l348 K;

    boolean L;

    com.corrodinggames.rts.gameFramework.m.fi1252 M;

    com.corrodinggames.rts.gameFramework.m.e1216 N;

    com.corrodinggames.rts.gameFramework.m.e1216 O;

    com.corrodinggames.rts.gameFramework.m.e1216 P;

    float Q;

    android.graphics.Rect R;

    android.graphics.RectF S;

    public com.corrodinggames.rts.gameFramework.m.e1216 T;

    public com.corrodinggames.rts.gameFramework.m.e1216 U;

    com.corrodinggames.rts.gameFramework.utility.v1357 V;

    com.corrodinggames.rts.gameFramework.utility.v1357 W;

    android.graphics.Matrix X;

    public java.util.ArrayList Y;

    public java.util.ArrayList Z;

    java.util.Timer aa;

    boolean ab;

    java.lang.Object ac;

    int ad;

    com.corrodinggames.rts.game.units.ce454 ae;

    com.corrodinggames.rts.game.units.ce454 af;

    float ag;

    boolean ah;

    int c;

    public float d;

    com.corrodinggames.rts.game.m349[] f;

    java.lang.String g;

    public boolean h;

    public int i;

    public java.util.concurrent.ConcurrentLinkedQueue j;

    android.graphics.Paint k;

    android.graphics.Paint l;

    android.graphics.Paint m;

    android.graphics.Paint n;

    android.graphics.Paint o;

    int p;

    int q;

    int r;

    float s;

    public java.lang.String t;

    android.graphics.Rect u;

    public java.util.ArrayList v;

    android.graphics.Paint w;

    android.graphics.Paint x;

    android.graphics.Paint y;

    public android.graphics.Paint z;

    // ==== from _clinit_(void)V.java ====
    static {
        com.corrodinggames.rts.game.i345.e = null;
    }

    // ==== from _init_(Context)V.java ====
    public strictfp i345(android.content.Context context) {
        super(context);
        this.d = 1.0f;
        this.f = new com.corrodinggames.rts.game.m349[6];
        this.h = false;
        this.i = 0;
        this.j = new java.util.concurrent.ConcurrentLinkedQueue();
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 16.0f;
        this.t = "0fps";
        this.u = new android.graphics.Rect();
        this.v = new java.util.ArrayList();
        this.z = new android.graphics.Paint();
        this.C = new com.corrodinggames.rts.gameFramework.d.b918();
        this.F = 0.0f;
        this.G = 1.0f;
        this.Q = 0.0f;
        this.R = new android.graphics.Rect();
        this.S = new android.graphics.RectF();
        this.T = (com.corrodinggames.rts.gameFramework.m.e1216) null;
        this.U = (com.corrodinggames.rts.gameFramework.m.e1216) null;
        this.V = new com.corrodinggames.rts.gameFramework.utility.v1357("allOnScreenObjects");
        this.W = new com.corrodinggames.rts.gameFramework.utility.v1357("allOnScreenObjectsDirty");
        this.X = new android.graphics.Matrix();
        this.Y = new java.util.ArrayList();
        this.Z = new java.util.ArrayList();
        this.ac = new Object();
        this.ad = 0;
    }

    // ==== from a(ab5)V.java ====
    public final strictfp void a(com.corrodinggames.rts.appFramework.ab5 p1) {
        synchronized (this.ac) {
            p1.onParentStart();
        }
    }

    // ==== from a(Activity)V.java ====
    public final strictfp void a(android.app.Activity p1) {
        synchronized (this) {
            synchronized (this.ac) {
                this.am = p1;
                this.d(true);
            }
        }
    }

    // ==== from a(Activity_ab5)V.java ====
    public final strictfp void a(android.app.Activity activity, com.corrodinggames.rts.appFramework.ab5 ab5) {
        synchronized (this.ac) {
            if (this.am == activity) {
                this.d(false);
            }
            ab5.onParentStop();
        }
    }

    // ==== from a(Activity_ab5_Z)V.java ====
    public final strictfp void a(android.app.Activity p1, com.corrodinggames.rts.appFramework.ab5 p2, boolean p3) {
        synchronized (this) {
            synchronized (this.ac) {
                if (!com.corrodinggames.rts.game.i345.aR) {
                    p2.onParentResume();
                }
                this.am = p1;
                this.ap = p3;
                this.cP = this.ap;
                if (p3 && !this.bD && !this.bF && !com.corrodinggames.rts.gameFramework.k1104.ax && !this.bU.C) {
                    this.q();
                }
                com.corrodinggames.rts.appFramework.ab5 old = this.ao;
                if (this.an == null) {
                    this.an = p2;
                }
                this.ao = p2;
                if (old != null && old != p2) {
                    old.onReplacedByAnotherView();
                }
                if (p2 != null) {
                    p2.updateResolution();
                }
                if (this.bP != null) {
                    this.bP.b();
                }
                this.ap();
                this.A();
            }
        }
    }

    // ==== from a(Context)V.java ====
    public final strictfp void a(Context context) {
        synchronized (this) {
            try {
                Log.e("RustedWarfare", "--- ----------------- ----");
                Log.e("RustedWarfare", "--- GameEngine:init() ----");
                Log.e("RustedWarfare", "--- ----------------- ----");

                if (this.bf) {
                    Log.e("RustedWarfare", "GameEngine init has already been called");
                    return;
                }

                K1104.c(new StringBuilder("Version:").append(this.n()).toString());

                if (K1104.bb && this.getClass().equals(I345.class)) {
                    throw new RuntimeException("inSpace but class is:" + this.getClass());
                }

                System.gc();

                this.dF = "Asset Index";
                this.bH = new M1348(context);

                long startTime = Cf910.a();

                this.ca = new Cf910(this);

                if (I345.aR) {
                    this.cf = 1.0f;
                } else {
                    DisplayMetrics dm = context.getResources().getDisplayMetrics();
                    this.cf = dm.density;
                    K1104.c("densityScaleRaw: " + this.cf);

                    float screenSize = F1006.b(0, 0, (float) dm.widthPixels, (float) dm.heightPixels);
                    float defaultViewpointZoomDensity = screenSize / 1131.0f;
                    K1104.c("defaultViewpointZoomDensity: " + defaultViewpointZoomDensity);
                    if (defaultViewpointZoomDensity < 0.5f) {
                        defaultViewpointZoomDensity = 0.5f;
                    }
                    if (defaultViewpointZoomDensity > 3.0f) {
                        defaultViewpointZoomDensity = 3.0f;
                    }
                    K1104.c("defaultViewpointZoomDensity after limit: " + defaultViewpointZoomDensity);

                    this.cV = 1.0f;
                    if (Math.abs(defaultViewpointZoomDensity - 1.0f) > 0.1) {
                        this.cV = defaultViewpointZoomDensity;
                        if (this.cV > 2.0f) {
                            this.cV = 2.0f;
                        }
                        if (this.cV < 0.5f) {
                            this.cV = 0.5f;
                        }
                        this.cU = this.cS * this.cV;
                    }
                }

                this.cf = this.cf * this.d;
                K1104.c("densityScaleRaw*densityScaleMultiplier: " + this.cf);

                if (K1104.b(context)) {
                    this.aq = true;
                }

                this.D = new B338();
                this.bl = false;

                this.dF = "InputController";
                this.bQ = new An807();
                An807 inputController = this.bQ;
                inputController.c = inputController.a("shoot");
                inputController.d = inputController.a("move up");
                inputController.e = inputController.a("move down");
                inputController.f = inputController.a("move left");
                inputController.g = inputController.a("move right");
                inputController.h = inputController.a("aim up");
                inputController.i = inputController.a("aim down");
                inputController.j = inputController.a("aim left");
                inputController.k = inputController.a("aim right");

                inputController.c.a(0, "enter", -1);
                inputController.c.a(0, "space", -1);
                inputController.d.a(0, "w", -1);
                inputController.e.a(0, "s", -1);
                inputController.f.a(0, "a", -1);
                inputController.g.a(0, "d", -1);
                inputController.h.a(0, "UP", -1);
                inputController.i.a(0, "DOWN", -1);
                inputController.j.a(0, "LEFT", -1);
                inputController.k.a(0, "RIGHT", -1);

                K1104.c("getControllerCount:0");

                inputController.d.a(0, true);
                inputController.e.a(0, false);
                inputController.f.a(1, true);
                inputController.g.a(1, false);
                inputController.h.a(2, true);
                inputController.i.a(2, false);
                inputController.j.a(3, true);
                inputController.k.a(3, false);
                inputController.c.a(4, true);

                this.dF = "SettingsEngine";
                this.bN = SettingsEngine.getInstance(context);
                this.bN.loadMainExternalFolder(true);

                int safeModeThreshold = 3;
                if (I345.aW) {
                    safeModeThreshold = 1;
                }
                if (this.bN.numIncompleteLoadAttempts > 1 || this.bN.numLoadsSinceRunningGameOrNormalExit > safeModeThreshold) {
                    this.eg = true;
                    if (this.bN.numIncompleteLoadAttempts > 2 || this.bN.numLoadsSinceRunningGameOrNormalExit > 4) {
                        this.bN.forceEnglish = true;
                        this.eh = true;
                    }
                    if (this.bN.numIncompleteLoadAttempts > 3) {
                        this.bN.newRender = false;
                    }
                    if (this.bN.numIncompleteLoadAttempts > 4 || this.bN.numLoadsSinceRunningGameOrNormalExit > 5) {
                        K1104.c("Extra safe mode");
                        this.ej = true;
                    }
                    if (this.bN.numIncompleteLoadAttempts > 5) {
                        K1104.c("Extra safe mode x2");
                        this.ek = true;
                    }
                    if (this.bN.numIncompleteLoadAttempts > 6) {
                        K1104.c("Extra safe mode x3");
                        this.bN.newRender = false;
                        this.bN.shaderEffects = false;
                        this.bN.teamShaders = false;
                    }
                    if (this.bN.newRender && this.bN.numLoadsSinceRunningGameOrNormalExit > 15) {
                        K1104.c("Disabling opengl mode");
                        this.bN.newRender = false;
                    }
                    K1104.c("starting game in safe mode, numIncompleteLoadAttempts:" + this.bN.numIncompleteLoadAttempts + " numLoadsSinceRunningGameOrNormalExit:" + this.bN.numLoadsSinceRunningGameOrNormalExit);
                }

                if (I345.aL) {
                    this.eg = true;
                    this.ei = "<forced by command line>";
                }
                if (I345.aM) {
                    this.eg = true;
                    this.ej = true;
                    this.ek = true;
                    this.ei = "<forced by command line>";
                }

                this.bN.numLoadsSinceRunningGameOrNormalExit++;
                this.bN.numIncompleteLoadAttempts++;
                boolean saveResult = this.bN.save();
                if (!saveResult && I345.aW) {
                    K1104.c("starting game in safe mode, failed to save settings");
                    this.ei = "failing to write preferences data";
                    this.eg = true;
                }

                A901.a();

                this.cg = this.N();
                K1104.c("densityScale(): " + this.cg);

                long time2 = Cf910.a();
                A1015.a();
                Cf910.a("Locale.init took:", time2);

                P352.C();

                this.k = new Paint();
                this.l = new Paint();
                this.l.setARGB(255, 255, 255, 255);
                this.l.setAntiAlias(true);
                this.a(this.l, 16.0f);

                this.m = new Paint();
                this.m.setARGB(255, 255, 255, 255);
                this.m.setAntiAlias(true);
                this.a(this.m, 16.0f);

                this.n = new Paint();
                this.n.setARGB(100, 255, 0, 0);
                this.a(this.n, 16.0f);

                this.o = new Paint();
                this.o.setARGB(100, 0, 255, 0);
                this.a(this.o, 16.0f);

                this.dk = new Paint();
                this.dl = new Paint();
                this.dl.setTextAlign(Paint.Align.CENTER);
                this.dl.setAntiAlias(true);
                this.dl.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
                this.a(this.dl, 16.0f);

                this.dm = new Paint();
                this.dm.setARGB(255, 230, 255, 230);
                this.dm.setAntiAlias(true);
                this.dm.setTextAlign(Paint.Align.CENTER);
                this.a(this.dm, 18.0f);

                this.w = new Paint();
                this.w.setColor(-1);
                this.w.setAlpha(100);

                this.x = new Paint();
                this.x.setColor(-0x777778);
                this.x.setAlpha(240);
                this.x.setStyle(Paint.Style.STROKE);
                this.x.setStrokeWidth(1.0f);

                long time3 = Cf910.a();
                this.dF = "AudioEngine";
                E788.a();
                this.bJ = new E788();
                E788.a(context);
                Cf910.a("AudioEngine took:", time3);

                this.dF = "MusicController";
                this.bK = new Ax817();
                Ax817 musicController = this.bK;
                musicController.w = context;
                if (!K1104.ab()) {
                    Ax817.a.a(musicController);
                    musicController.k = Ax817.a.a();
                    musicController.A = Ax817.a.a();
                    Bi883.a();
                    musicController.e = new Bm887(musicController);
                    musicController.e.start();
                }

                if (I345.be != null) {
                    K1104.c("init(): using Graphics instance");
                    this.bL = I345.be;
                } else if (I345.bd != null) {
                    K1104.c("init(): using GraphicsSlick2d");
                    try {
                        this.bL = (Fi1252) I345.bd.newInstance();
                    } catch (InstantiationException e) {
                        throw new RuntimeException(e);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    }
                } else if (I345.aR) {
                    this.bL = new Fj1253();
                } else {
                    this.bL = new Fh1251();
                }

                this.dF = "graphics.init";
                this.bL.a(context);
                this.bL.b();
                I1022.a();

                this.dF = "Fonts";
                this.P();

                this.dF = "effects.init";
                this.bO = new C919();
                this.bO.a();

                this.dF = "minimapHandler";
                this.bT = new Q996();
                this.bT.a();

                if (I345.ch != null) {
                    K1104.c("We have an initial screen size, can do early setup of image buffers");
                    this.dF = "Map Buffers";
                    Point point = I345.ch;
                    this.a(point.x, point.y, 1.0f);
                    this.am();
                    B326.b();
                    B326.c();
                    this.bT.c();
                    if (K1104.ae()) {
                        this.dF = "Setting up postprocessing";
                        boolean result = this.aj();
                        if (!result) {
                            K1104.c("Failed to setup postprocessing");
                        }
                    }
                }

                this.dF = "PathEngine";
                this.bR = new K1099();

                this.dF = "GroupController";
                this.bS = new Al805();

                this.dF = "CollisionEngine";
                this.bM = new A793();

                this.dF = "InterfaceEngine";
                this.bP = new I988();
                I988 interfaceEngine = this.bP;
                K1104 current = K1104.t();
                if (K1104.bb) {
                    interfaceEngine.bN = true;
                }
                I988.c();
                interfaceEngine.bG = A1015.a("gui.notAvailableInDemoText", new Object[0]);
                interfaceEngine.bH = "Locked";
                interfaceEngine.bI = Bu555.b("gui.notEnoughResources");
                interfaceEngine.bJ = A1015.a("gui.cannotPlace.general", new Object[0]);
                interfaceEngine.bK = A1015.a("gui.cannotPlace.needsResourcePool", new Object[0]);
                interfaceEngine.bL = A1015.a("gui.cannotPlace.needsWater", new Object[0]);
                interfaceEngine.g = new A950(current, interfaceEngine);
                interfaceEngine.b();
                interfaceEngine.h = new O994(current, interfaceEngine);
                interfaceEngine.i = new Ay975(current);
                interfaceEngine.j = new M992(current, interfaceEngine);
                interfaceEngine.k = new F985();
                if (K1104.Y()) {
                    interfaceEngine.b = true;
                }
                interfaceEngine.ba = current.bL.a(R.drawable.button_no);
                interfaceEngine.bb = current.bL.a(R.drawable.button_yes);
                interfaceEngine.bc = current.bL.a(R.drawable.button_more);
                interfaceEngine.bf = new Paint();
                interfaceEngine.bf.setFilterBitmap(true);
                interfaceEngine.bg = new Paint();
                interfaceEngine.bg.setFilterBitmap(true);
                interfaceEngine.bg.setARGB(40, 255, 255, 255);
                interfaceEngine.bh = current.bL.a(R.drawable.button_add);
                interfaceEngine.bi = current.bL.a(R.drawable.button_subtract);
                interfaceEngine.bj = current.bL.a(R.drawable.icon_rally);
                interfaceEngine.bn = current.bL.a(R.drawable.rounded_glow_button);
                interfaceEngine.bo = current.bL.a(R.drawable.rounded_white_button);
                interfaceEngine.bp = new E939(interfaceEngine.bn, 32, 27);
                interfaceEngine.bq = new E939(current.bL.a(R.drawable.rounded_glow_highlight_button), 32, 27);
                interfaceEngine.br = interfaceEngine.bp.a();
                interfaceEngine.br.v = interfaceEngine.bq;
                interfaceEngine.bs = new E939(current.bL.a(R.drawable.rounded_dark_box), 32, 27);
                interfaceEngine.bt = new E939(current.bL.a(R.drawable.rounded_dark_box_titled), 36, 36);
                interfaceEngine.bt.r = new E939(current.bL.a(R.drawable.rounded_shadow), 36, 36);
                interfaceEngine.bt.f = true;
                interfaceEngine.bu = new E939(current.bL.a(R.drawable.rounded_green), 36, 36);
                interfaceEngine.bu.r = interfaceEngine.bt.r;
                interfaceEngine.bu.u = 20;
                interfaceEngine.bk = current.bL.a(R.drawable.icon_upgrade);
                interfaceEngine.bl = current.bL.a(R.drawable.metal_dark, false);
                interfaceEngine.bm = current.bL.a(R.drawable.touch_indicator, false);
                I943.b();
                interfaceEngine.bE.setARGB(145, 0, 175, 0);
                interfaceEngine.bE.setStrokeWidth(6.0f);
                Fq1260.a(interfaceEngine.bE);
                interfaceEngine.bD.setAntiAlias(true);
                interfaceEngine.au = new Paint();
                interfaceEngine.av = new Fq1260();
                interfaceEngine.av.setARGB(255, 0, 240, 0);
                interfaceEngine.av.setAntiAlias(true);
                interfaceEngine.av.setSubpixelText(true);
                interfaceEngine.av.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
                current.a(interfaceEngine.av, 20.0f);
                interfaceEngine.av.setTextAlign(Paint.Align.LEFT);
                interfaceEngine.ay = new Fq1260();
                interfaceEngine.ay.setARGB(255, 0, 240, 0);
                interfaceEngine.ay.setAntiAlias(true);
                interfaceEngine.ay.setSubpixelText(true);
                interfaceEngine.ay.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
                current.a(interfaceEngine.ay, 18.0f);
                interfaceEngine.ay.setTextAlign(Paint.Align.LEFT);
                interfaceEngine.aw = new Fq1260();
                interfaceEngine.aw.set(interfaceEngine.av);
                interfaceEngine.aw.setARGB(255, 240, 240, 0);
                interfaceEngine.ax = new Fq1260();
                interfaceEngine.ax.setColor(Color.argb(100, 0, 0, 0));
                interfaceEngine.ax.setStyle(Paint.Style.FILL_AND_STROKE);
                interfaceEngine.az = new Fq1260();
                interfaceEngine.az.setARGB(100, 30, 240, 30);
                interfaceEngine.az.setTextAlign(Paint.Align.LEFT);
                interfaceEngine.az.setSubpixelText(true);
                interfaceEngine.az.setAntiAlias(true);
                current.a(interfaceEngine.az, 12.0f);
                Fq1260.a(interfaceEngine.az);
                interfaceEngine.aC = new Fq1260();
                if (interfaceEngine.bN) {
                    interfaceEngine.aC.setARGB(255, 240, 240, 240);
                } else {
                    interfaceEngine.aC.setARGB(255, 30, 240, 30);
                }
                interfaceEngine.aC.setTextAlign(Paint.Align.CENTER);
                interfaceEngine.aC.setSubpixelText(true);
                interfaceEngine.aC.setAntiAlias(true);
                current.a(interfaceEngine.aC, 12.0f);
                Fq1260.a(interfaceEngine.aC);
                K1104.c("smallTextPaint size: " + interfaceEngine.aC.getTextSize());
                interfaceEngine.aB = new Fq1260();
                interfaceEngine.aB.set(interfaceEngine.aC);
                current.a(interfaceEngine.aB, 10.0f);
                Fq1260.a(interfaceEngine.aB);
                interfaceEngine.aA = new Fq1260();
                interfaceEngine.aA.set(interfaceEngine.aC);
                current.a(interfaceEngine.aA, 8.0f);
                Fq1260.a(interfaceEngine.aA);
                interfaceEngine.aD = new Fq1260();
                if (interfaceEngine.bN) {
                    interfaceEngine.aD.setARGB(255, 240, 240, 240);
                } else {
                    interfaceEngine.aD.setARGB(255, 30, 240, 30);
                }
                interfaceEngine.aD.setTextAlign(Paint.Align.CENTER);
                interfaceEngine.aD.setSubpixelText(true);
                interfaceEngine.aD.setAntiAlias(true);
                current.a(interfaceEngine.aD, 20.0f);
                Fq1260.a(interfaceEngine.aD);
                interfaceEngine.aE = new Fq1260();
                interfaceEngine.aE.setARGB(255, 30, 240, 30);
                interfaceEngine.aE.setTextAlign(Paint.Align.CENTER);
                interfaceEngine.aE.setSubpixelText(true);
                interfaceEngine.aE.setAntiAlias(true);
                current.a(interfaceEngine.aE, 20.0f);
                Fq1260.a(interfaceEngine.aE);
                interfaceEngine.aI = new Fq1260();
                interfaceEngine.aI.setARGB(150, 20, 20, 20);
                current.a(interfaceEngine.aI, 16.0f);
                Fq1260.a(interfaceEngine.aI);
                interfaceEngine.aF = new Fq1260();
                interfaceEngine.aF.set(interfaceEngine.aD);
                interfaceEngine.aF.setARGB(255, 128, 0, 0);
                current.a(interfaceEngine.aF, 14.0f);
                interfaceEngine.aF.setTextAlign(Paint.Align.CENTER);
                Fq1260.a(interfaceEngine.aF);
                interfaceEngine.aG = new Fq1260();
                interfaceEngine.aG.set(interfaceEngine.aF);
                interfaceEngine.aG.setARGB(255, 220, 222, 49);
                interfaceEngine.aH = new Fq1260();
                interfaceEngine.aH.set(interfaceEngine.aD);
                current.a(interfaceEngine.aH, 12.0f);
                interfaceEngine.aH.setARGB(125, 230, 230, 230);
                interfaceEngine.aH.setTextAlign(Paint.Align.CENTER);
                Fq1260.a(interfaceEngine.aH);
                interfaceEngine.aQ = new Fq1260();
                interfaceEngine.aQ.setColor(-0x1000000);
                interfaceEngine.aQ.setAntiAlias(true);
                interfaceEngine.aQ.setSubpixelText(true);
                interfaceEngine.aQ.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
                current.a(interfaceEngine.aQ, 14.0f);
                interfaceEngine.aR = new Fq1260();
                interfaceEngine.aR.set(interfaceEngine.aQ);
                interfaceEngine.aR.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
                current.a(interfaceEngine.aR, 16.0f);
                interfaceEngine.aS = new Fq1260();
                interfaceEngine.aS.set(interfaceEngine.aR);
                interfaceEngine.aS.setColor(Color.rgb(232, 63, 80));
                current.a(interfaceEngine.aS, 16.0f);
                interfaceEngine.aK = new Paint();
                interfaceEngine.aK.setColor(-0x1000000);
                interfaceEngine.aK.setTextAlign(Paint.Align.CENTER);
                interfaceEngine.aK.setAntiAlias(true);
                interfaceEngine.aK.setSubpixelText(true);
                interfaceEngine.aK.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
                current.a(interfaceEngine.aK, 20.0f);
                interfaceEngine.aL = new Paint();
                interfaceEngine.aL.setColor(-1);
                interfaceEngine.aL.setAlpha(160);
                if (K1104.Z()) {
                    interfaceEngine.aL.setAlpha(140);
                }
                current.a(interfaceEngine.aL, 16.0f);
                interfaceEngine.aM = new Fq1260();
                interfaceEngine.aM.setColor(-0x1000000);
                interfaceEngine.aM.setAlpha(210);
                current.a(interfaceEngine.aM, 16.0f);
                interfaceEngine.aP = new Fq1260();
                interfaceEngine.aP.setColor(-0x777778);
                interfaceEngine.aP.setAlpha(240);
                interfaceEngine.aP.setStyle(Paint.Style.STROKE);
                interfaceEngine.aP.setStrokeWidth(1.0f);
                current.a(interfaceEngine.aP, 16.0f);
                interfaceEngine.aN = new Fq1260();
                interfaceEngine.aN.setColor(-0xff0100);
                interfaceEngine.aN.setAlpha(80);
                interfaceEngine.aN.setStyle(Paint.Style.FILL);
                interfaceEngine.aN.setStrokeWidth(4.0f);
                current.a(interfaceEngine.aN, 16.0f);
                interfaceEngine.aO = new Fq1260();
                interfaceEngine.aO.setColor(Color.argb(120, 235, 167, 49));
                interfaceEngine.aO.setStyle(Paint.Style.FILL);
                interfaceEngine.aO.setStrokeWidth(8.0f);
                current.a(interfaceEngine.aO, 16.0f);
                interfaceEngine.aJ = new Fq1260();
                interfaceEngine.aJ.setSubpixelText(true);
                interfaceEngine.aJ.setAntiAlias(true);
                current.a(interfaceEngine.aJ, 12.0f);
                Fq1260.a(interfaceEngine.aJ);

                this.B = Bt894.b(context);
                this.dF = "NetworkEngine";
                this.bU = new Ae1028();

                this.dF = "StatsHandler";
                this.bV = new Bv896();

                this.dF = "ModEngine";
                this.bW = new A1018();
                this.bW.j();
                this.bW.e();
                if (this.eg) {
                    this.bW.f();
                }

                this.dF = "CommandController";
                this.cc = new C904();

                this.dF = "GameSaver";
                this.bX = new Aj803();

                this.dF = "ReplayEngine";
                this.bY = new Bp890();

                this.dF = "UnitGeoIndex";
                this.bZ = new C738();

                this.dF = "Precalculating map fog";
                B326.a();

                this.dF = "ScorchMark.load";
                N350.b();

                this.dF = "Projectile.load";
                F342.b();

                this.dF = "Emitter.load";
                F922.b();

                this.dF = "Unit.loadAllUnits";
                long time4 = Cf910.a();
                Ce454.bp();
                Cf910.a("loadAllUnits took:", time4);

                this.dF = "Loading custom unit data";
                long time5 = Cf910.a();
                Ag500.e();

                this.dF = "getAllUnitsChecksum";
                Cf910.a("CustomUnits took:", time5);

                long time6 = Cf910.a();
                this.c = Ce454.bt();
                Cf910.a("allUnitsChecksum took:", time6);

                this.y = new Paint();
                this.y.setARGB(50, 255, 255, 255);

                System.gc();
                this.bf = true;
                K1104.c("Init completed");
                Cf910.a("Loading took:", startTime);

                long time7 = Cf910.a();
                this.dF = "Loading map data";
                if (!K1104.ax) {
                    this.q();
                }
                Cf910.a("loadAMenuMap took:", time7);

                this.dF = "Last setup";
                if (K1104.as && !K1104.aR) {
                    if (K1104.dU != null) {
                        K1104.b("setupANRWatchDog: activeANRWatchDog!=null");
                    } else {
                        E1340 watchdog = new E1340(4000);
                        K1104.dU = watchdog;
                        watchdog.a = new R1313();
                        K1104.dU.start();
                        K1104.b("setupANRWatchDog: running");
                    }
                }

                Ae1028 network = this.bU;
                String networkString;
                if (!K1104.X()) {
                    networkString = null;
                } else {
                    I345 game = (I345) K1104.t();
                    networkString = game.an();
                }
                network.bi = networkString;
                network.bh = true;

                this.dF = "init complete";

                if (I345.aB) {
                    Cj459.s();
                    System.exit(0);
                }
                if (I345.aC) {
                    Cj459.r();
                    System.exit(0);
                }

                this.bg = true;
            } catch (Throwable t) {
                throw t;
            }
        }
    }

    // ==== from a(F_F_F_F)Z.java ====
    private strictfp boolean a(float p1, float p2, float p3, float p4) {
        float limit = 15.0f;
        float zero = 0.0f;
        float one = 1.0f;

        float v1 = com.corrodinggames.rts.gameFramework.f1006.d(this.cv + this.cF, this.cw + this.cG, p2, p3);
        float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.cv + this.cF, this.cw + this.cG, p2, p3);
        float v3 = p4 * p1;

        float v4 = v3 + one;
        if (limit < v4) {
            limit = v3 + one;
        }
        limit = limit * limit;

        if (v2 < limit || this.cq) {
            return true;
        }

        this.cz = this.cz + com.corrodinggames.rts.gameFramework.f1006.k(v1) * v3;
        this.cA = this.cA + com.corrodinggames.rts.gameFramework.f1006.j(v1) * v3;

        if (com.corrodinggames.rts.gameFramework.f1006.d(this.cz) < one || com.corrodinggames.rts.gameFramework.f1006.d(this.cA) >= one) {
            this.cv += this.cz;
            this.cw += this.cA;
            this.cz = zero;
            this.cA = zero;
            this.a(this.cv, this.cw);
        }

        return false;
    }

    // ==== from a(F_I)V.java ====
    public final strictfp void a(float p1, int p2) {
        synchronized (this.ai) {
            if (this.bu == 2) {
                this.ah();
            } else if (this.bu % 10000 == 0 && this.bu != 0) {
                this.ah();
            }

            if (i345.aI && !this.aP && i345.X() && Debug.getNativeHeapAllocatedSize() > 0xc800000L) {
                k1104.c("getNativeHeapAllocatedSize: " + f1006.d((int) Debug.getNativeHeapAllocatedSize()));
                this.aP = true;
            }

            if (k1104.dZ && !k1104.ea) {
                k1104.ea = true;
                String msg = "Warning game has less than 5mb of free space remaining. A larger battle might cause a crash. ";
                if (this.bW.g() > 1) {
                    msg = msg + "This is often caused by large mods, you currently have: " + this.bW.g() + " mods loaded. ";
                }
                this.b("Warning: Low memory detected", msg);
            }

            if (!k1104.dX && k1104.dY != null) {
                k1104.dX = true;
                String str = "trying to load data";
                if (k1104.dY == ae798.a) {
                    str = "trying to load game textures";
                } else if (k1104.dY == ae798.b) {
                    str = "trying to create a texture";
                } else if (k1104.dY == ae798.c) {
                    str = "trying to colour new texture";
                } else if (k1104.dY == ae798.d) {
                    str = "trying to create texture buffer for on-screen fog fading";
                } else if (k1104.dY == ae798.e) {
                    str = "trying to create game fonts";
                } else if (k1104.dY == ae798.f) {
                    str = "trying to load game sounds";
                } else if (k1104.dY == ae798.g) {
                    str = "trying to load UI textures";
                }
                String message = "The game ran out of memory " + str + ". ";
                if (this.bW.g() > 1) {
                    message = message + "This is often caused by large mods, you currently have: " + this.bW.g() + " mods. ";
                }
                if (k1104.Z() && !i345.b) {
                    message = message + "You are also using the 32 bit version, switching to the 64 bit version might help. ";
                }
                this.b("Warning: Out Of Memory", message);
            }

            this.ed.a();
            this.ee.b();
            this.bU.k();
            this.an = this.ao;
            if (this.an.getSurfaceExists()) {
            }

            while (this.j.peek() != null) {
                ((Runnable) this.j.poll()).run();
            }

            if (!this.bD) {
                if (!this.ap) {
                    Log.e("RustedWarfare", "game running without a loaded level!!!");
                    InGameActivity act = this.an.getInGameActivity();
                    if (act != null) {
                        if (!act.isFinishing()) {
                            act.finish();
                        } else {
                            k1104.b("stopAndClose: inGameActivity is isFinishing");
                        }
                    } else {
                        k1104.b("stopAndClose: Error getInGameActivity==null");
                    }
                    try {
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                return;
            }

            this.bn = true;

            if (!this.E && this.bu > 5) {
                this.E = true;
                boolean failedLoadingAttempts = this.bN.numIncompleteLoadAttempts > 1;
                this.bN.numIncompleteLoadAttempts = 0;
                if (this.eg) {
                    this.bN.numLoadsSinceRunningGameOrNormalExit = 0;
                }
                this.bN.save();
                if (this.eg && (this.eh || this.bW.c() > 0)) {
                    if (this.ei != null) {
                        this.b("Safe mode", "Started game in safe mode due to " + this.ei + ". Mods have been disabled.");
                    } else if (failedLoadingAttempts) {
                        this.b("Safe mode", "Started game in safe mode due to failed loading attempts. Mods have been disabled.");
                    } else {
                        this.b("Safe mode", "Started game in safe mode due to multiple loads without starting a game or exiting. Mods have been disabled.");
                    }
                }
            }

            if (!this.bE && this.bD && this.bN.numLoadsSinceRunningGameOrNormalExit != 0) {
                this.bN.numLoadsSinceRunningGameOrNormalExit = 0;
                this.bN.save();
            }

            if (aj803.a()) {
                aj803 bX = this.bX;
                k1104 game = k1104.t();
                if (bX.d == -9999) {
                    bX.c = game.bv;
                    bX.d = game.bv;
                }
                if (bX.d + 300000 < game.bv) {
                    bX.d = game.bv;
                    long time = cf910.a();
                    aj803.b("autosave", true);
                    float timeFloat = cf910.a(time);
                    k1104.c("Autosaved (" + cf910.a((double) timeFloat) + ")");
                }
            }

            float newCpu = this.cS * this.cV;
            if (newCpu != this.cU) {
                float oldCXOverCU = this.cX / this.cU;
                float oldCYOverCU = this.cY / this.cU;
                this.cU = newCpu;
                this.am();
                if (this.cW) {
                    float deltaX = (this.cX / this.cU) - oldCXOverCU;
                    float deltaY = (this.cY / this.cU) - oldCYOverCU;
                    this.a(this.cv - deltaX, this.cw - deltaY);
                    this.cW = false;
                }
            }

            if (this.co != 0.0f || this.cp != 0.0f) {
                float f = 3.0f * p1;
                float coDelta;
                float cpDelta;

                float coAdjust = 0.0f;
                if (this.co > 0.0f) {
                    coAdjust = f1006.f(this.co, f);
                } else if (this.co < 0.0f) {
                    coAdjust = f1006.e(this.co, -f);
                }
                float coNew = 0.15f * this.co + coAdjust;

                if (f1006.d(this.co) <= f) {
                    this.co -= coNew;
                    coDelta = coNew;
                } else {
                    coDelta = this.co;
                    this.co = 0.0f;
                }

                float cpAdjust = 0.0f;
                if (this.cp > 0.0f) {
                    cpAdjust = f1006.f(this.cp, f);
                } else if (this.cp < 0.0f) {
                    cpAdjust = f1006.e(this.cp, -f);
                }
                float cpNew = 0.15f * this.cp + cpAdjust;

                if (f1006.d(this.cp) <= f) {
                    this.cp -= cpNew;
                    cpDelta = cpNew;
                } else {
                    cpDelta = this.cp;
                    this.cp = 0.0f;
                }

                this.cv += coDelta;
                this.cw += cpDelta;
                this.a(this.cv, this.cw);
                this.H();
            }

            if (this.cO != this.cP) {
                this.am();
            }

            float frameTimeClamped = (p1 > 3.0f) ? 3.0f : p1;
            if (frameTimeClamped < 0.0f) {
                frameTimeClamped = 0.0f;
            }
            float speedFactor = (this.br >= 0.0f) ? this.br : frameTimeClamped;
            this.bx = (int) ((float) this.bx + 16.666666f * speedFactor);

            if (this.ap && !this.bE) {
                if (this.af == null) {
                    ce454 unit = i345.a(this.bp);
                    if (unit != null) {
                        this.af = unit;
                    } else {
                        unit = i345.a((p352) null);
                        this.af = unit;
                    }
                }
                if (this.ae == null) {
                    this.ae = this.af;
                    this.af = null;
                }

                if (this.ag != 0.0f && this.af != null) {
                    this.a(speedFactor, this.af.eq, this.af.er, this.ag * 0.5f);
                }

                if (this.ae != null) {
                    boolean result = this.a(speedFactor, this.ae.eq, this.ae.er, (1.0f - this.ag) * 0.5f);
                    float dist = f1006.a(this.cv + this.cF, this.cw + this.cG, this.ae.eq, this.ae.er);
                    if (dist < 6400.0f) {
                        result = true;
                    }
                    if (result) {
                        this.ah = true;
                    }
                }

                if (this.ah) {
                    this.ag += 0.01f * speedFactor;
                    if (this.ag >= 1.0f) {
                        this.ag = 0.0f;
                        this.ae = null;
                        this.ah = false;
                    }
                }
            }

            this.p += p2;
            this.q++;
            if (this.q >= 40) {
                if (this.p == 0) this.p = 1;
                this.r = (int) (((float) this.q * 1000) / this.p + 0.5f);
                this.s = (float) this.p / this.q;
                this.p = 0;
                this.q = 0;
                if (this.bN.showFps) {
                    this.t = this.r + "fps";
                }
            }
            this.U();
            for (int i = 0; i < this.dJ.length; i++) {
                this.dJ[i] = true;
            }

            this.de = f1006.a(this.de, 0.1f * speedFactor);
            this.df = f1006.a(this.df, 0.1f * speedFactor);
            this.de = f1006.b(this.de, 5.0f);
            this.df = f1006.b(this.df, 5.0f);
            this.bP.a(speedFactor);
            this.H();
            b326.c();

            if (this.bU.C) {
                float v0;
                if (this.bY.w != 1) {
                    v0 = this.bY.w * speedFactor;
                } else {
                    v0 = speedFactor;
                }
                this.bU.a(v0);

                boolean b = this.b(true);
                if (!b && !this.bU.aa) {
                    this.F += v0;
                    while (this.F > this.bU.K) {
                        if (this.bU.m()) {
                            this.bU.aa = true;
                            break;
                        } else {
                            this.F -= this.bU.K;
                            this.bU.b(false);
                            if (!this.bU.aa) {
                                this.b(this.bU.K);
                            }
                        }
                    }
                }

                if (!this.bU.D) {
                    if (!this.bU.ah && !this.bU.af) {
                    }
                }
            } else {
                if (this.bY.t) {
                    float frameTime;
                    if (this.bY.w != 1) {
                        frameTime = this.bY.w * speedFactor;
                    } else {
                        frameTime = speedFactor;
                    }
                    if (this.bq != 1.0f) {
                        frameTime *= this.bq;
                    }
                    boolean b = this.b(false);
                    if (!b) {
                        this.F += frameTime;
                    }
                    while (this.F > this.bU.K) {
                        this.F -= this.bU.K;
                        if (!this.bU.m()) {
                            this.b(this.bU.K);
                        }
                    }
                    if (this.F > 100.0f) this.F = 100.0f;
                    if (this.F < 0.0f) this.F = 0.0f;
                } else {
                    boolean b = this.b(false);
                    if (!b) {
                        this.b(speedFactor);
                    }
                }
            }

            boolean b2 = this.b(false);
            if (b2) {
                try {
                    Thread.sleep(2);
                } catch (Exception e) {
                }
            }

            this.bR.f();
            this.bJ.a.clear();
            this.bK.a(speedFactor);

            if (this.bQ.ao != 0) {
                this.bQ.ao = 0;
                k1104.c("Number of controllers changed, now:" + this.bQ.ao);
            }

            if (!this.ds) {
                if (this.an.usingBasicDraw()) {
                    l1266 canvas = this.an.getNewCanvasLock(true);
                    this.a(canvas, speedFactor);
                } else {
                    ab5 view = this.an;
                    view.drawStarting(speedFactor, p2);
                    if (view.getDirectSurfaceRendering() && !view.isPaused()) {
                        Object sync = view.getGameThreadSync();
                        synchronized (sync) {
                            if (view.getDirectSurfaceRendering() && !view.isPaused()) {
                                l1266 canvas = view.getNewCanvasLock(true);
                                try {
                                    if (canvas != null) {
                                        if (canvas.c()) {
                                            k1104.c("gameengine draw: bufferedCanvas drawn on");
                                        }
                                        canvas.a(true);
                                    }
                                    if (canvas == null) {
                                        k1104.e("GameEngine gameViewCanvas is null after lockCanvas - " + view.hashCode());
                                    }
                                    this.a(canvas, speedFactor);
                                    this.bL.a(null);
                                } finally {
                                    if (canvas != null) {
                                        try {
                                            view.unlockAndReturnCanvas(canvas, true);
                                        } catch (IllegalArgumentException e) {
                                            e.printStackTrace();
                                            k1104.e("GameEngine catch currentGameView - " + view.hashCode());
                                            k1104.e("GameEngine catch currentGameView.gameThreadSync - " + view.getGameThreadSync().hashCode());
                                            view.forceSurfaceUnlockWorkaround();
                                        } catch (IllegalStateException e) {
                                            e.printStackTrace();
                                            k1104.e("GameEngine catch currentGameView - " + view.hashCode());
                                            k1104.e("GameEngine catch currentGameView.gameThreadSync - " + view.getGameThreadSync().hashCode());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    view.drawCompleted(speedFactor, p2);
                }
            }
            this.ds = false;
            k1104.dF = null;

            if (this.dr) {
                this.dr = false;
                String nextLevel = null;
                Integer check = i345.j(this.di);
                if (check != null) {
                    nextLevel = i345.k(this.di);
                }
                if (this.bU.C) {
                    new k347(this).start();
                    nextLevel = null;
                }
                if (nextLevel != null) {
                    k1104.c("gotoNextLevel: Loading next level: " + nextLevel);
                    this.di = nextLevel;
                    this.bP.h.a();
                    this.a(true, false, ac796.b);
                } else {
                    k1104.c("gotoNextLevel: No next level, finishing");
                    this.bD = false;
                    InGameActivity act = this.an.getInGameActivity();
                    if (act != null) {
                        act.finish();
                        act.showPCMainMenu();
                    } else {
                        k1104.c("gotoNextLevel: Error getInGameActivity==null");
                    }
                }
            }

            if (!this.ap && this.bB && !this.h) {
                k1104.c("starting method trace");
                Debug.startMethodTracing("lukeTrace", 0x68e7780);
                this.h = true;
            }

            this.bC = true;
            this.ef.a();
        }
    }

    // ==== from a(I_I)V.java ====
    public final strictfp void a(int p1, int p2) {
        this.a(p1, p2, 1.0f);
        return;
    }

    // ==== from a(I_I_F)V.java ====
    public final strictfp void a(int p1, int p2, float p3) {
        this.ci = (float) p1;
        this.cj = (float) p2;
        this.ck = p3;
        this.am();
    }

    // ==== from a(l1266_F)V.java ====
    private strictfp void a(com.corrodinggames.rts.gameFramework.m.l1266 p1, float p2) {
        synchronized (this.aj) {
            this.b(p1, p2);
        }
    }

    // ==== from a(l348)V.java ====
    private strictfp void a(com.corrodinggames.rts.game.l348 p1) {
        if (this.M != null) {
            throw new RuntimeException("Layer already enabled");
        }
        this.M = this.bL;
        this.bL = p1.b;
        this.bL.g();
        this.bL.a(new android.graphics.Rect(0, 0, this.bL.k(), this.bL.l()));
        this.bL.b(p1.f, p1.e);
    }

    // ==== from a(p352)ce454.java ====
    private static strictfp com.corrodinggames.rts.game.units.ce454 a(com.corrodinggames.rts.game.p352 p0) {
        int count = 0;
        java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bG.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
            if (unit.s() && (p0 != null || unit.bZ == p0)) {
                count++;
            }
        }
        if (count > 0) {
            int randomIndex = com.corrodinggames.rts.gameFramework.f1006.a(0, count - 1);
            int index = 0;
            java.util.Iterator iterator2 = com.corrodinggames.rts.game.units.ce454.bG.iterator();
            while (iterator2.hasNext()) {
                com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator2.next();
                if (unit.s() && (p0 != null || unit.bZ == p0)) {
                    if (index == randomIndex) {
                        return unit;
                    }
                    index++;
                }
            }
        }
        return null;
    }

    // ==== from a(void)Z.java ====
    public final strictfp boolean a() {
        if (this.bP.u) {
            return true;
        } else {
            return false;
        }
    }

    // ==== from a(Z)I.java ====
    public final strictfp int a(boolean p1) {
        if (!com.corrodinggames.rts.game.i345.aR || p1) {
            return 176;
        }
        try {
            return this.al.getPackageManager().getPackageInfo(this.al.getPackageName(), 0).versionCode;
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    // ==== from a(Z_I)V.java ====
    public final strictfp void a(boolean p1, int p2) {
        synchronized (this) {
            B();
            a(p1, false, p2);
        }
    }

    // ==== from a(Z_Z_I)V.java ====
    public final strictfp void a(boolean p1, boolean p2, int p3) {
        this.bz = this.bN.teamUnitCapSinglePlayer;
        if (this.bz <= 0) {
            this.bz = 1;
        }
        this.by = this.bz;
        this.c(p2);
        com.corrodinggames.rts.game.p352.M();
        this.bl = false;
        System.gc();
        this.bF = true;
        this.bD = false;
        this.bm = false;
        this.bC = false;
        this.bv = 0;
        this.ce = false;
        this.bU.w = 1L;
        this.bu = 0;
        this.bG = 0;
        com.corrodinggames.rts.gameFramework.f1006.a();
        if (!p2) {
            this.dn = false;
            this.do = false;
            this.dp = 0.0f;
            this.dr = false;
            this.dq = false;
        }
        this.i = 0;
        if (!p2) {
            this.cS = 1.0f;
        }
        this.du = 0.0f;
        if (!this.bY.g()) {
            if (!this.bU.C) {
                com.corrodinggames.rts.game.units.custom.ag500.a(true);
            } else {
                com.corrodinggames.rts.game.units.custom.ag500.c();
            }
        }
        if (!this.bU.C) {
            if (!this.bY.g()) {
                if (p1) {
                    this.bp = new com.corrodinggames.rts.game.e341(0);
                    this.bp.w = "Player";
                    for (int v2 = 1; v2 < 8; v2++) {
                        new com.corrodinggames.rts.game.a.a296(v2);
                    }
                    this.bU.B();
                }
            }
        }
        this.cb = null;
        this.bI = new com.corrodinggames.rts.game.b.b326();
        try {
            if (this.dj != null) {
                java.io.DataInputStream inputStream = this.dj.b;
                try {
                    inputStream.reset();
                } catch (java.io.IOException e) {
                    e.printStackTrace();
                }
                this.bI.a(inputStream, p2);
            } else {
                this.bI.a(this.di, p2);
            }
        } catch (com.corrodinggames.rts.game.b.h332 e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder("Error loading map: ");
            sb.append(e.getMessage());
            this.g(sb.toString());
            if (com.corrodinggames.rts.game.i345.aQ) {
                com.corrodinggames.rts.gameFramework.k1104.c("Crashing on allowed map error because automated testing is active");
                throw new RuntimeException(e);
            }
            if (!this.bU.C && this.an != null) {
                com.corrodinggames.rts.appFramework.InGameActivity activity = this.an.getInGameActivity();
                if (activity != null) {
                    activity.showPCMainMenu();
                }
            }
            String error = com.corrodinggames.rts.game.i345.a(e);
            com.corrodinggames.rts.game.i345.d("Map Load Warning", error);
            this.bF = false;
            return;
        }
        if (!this.bI.X) {
            com.corrodinggames.rts.gameFramework.k1104.c("map did not load, returning");
            this.bF = false;
            return;
        }
        this.bI.H = false;
        com.corrodinggames.rts.game.p352.f();
        for (int i = 0; i < com.corrodinggames.rts.game.p352.c; i++) {
            com.corrodinggames.rts.game.p352 team = com.corrodinggames.rts.game.p352.i(i);
            if (team != null) {
                team.B();
            }
        }
        if (!p2) {
            com.corrodinggames.rts.game.units.custom.l609.F();
        }
        if (!this.bU.C && !this.bY.g()) {
            this.bU.aA.h = 1.0f;
            this.bU.aA.q = com.corrodinggames.rts.gameFramework.f1006.a(1, 1000000000);
        }
        this.bG = this.bU.aA.q;
        com.corrodinggames.rts.gameFramework.k1104.c("global Seed: " + this.bG);
        if (this.bU.C || this.bY.g()) {
            if (!this.bU.G) {
                this.by = this.bU.ay;
                this.bz = this.bU.az;
            }
            com.corrodinggames.rts.gameFramework.k1104.c("Unit cap is now: " + this.bz);
            if (this.bU.aA.d == 0) {
                this.bI.F = false;
                this.bI.G = false;
            } else if (this.bU.aA.d == 1) {
                this.bI.F = true;
                this.bI.G = false;
            } else if (this.bU.aA.d == 2) {
                this.bI.F = true;
                this.bI.G = true;
            }
            this.bI.H = this.bU.aA.e;
            for (int i = 0; i < com.corrodinggames.rts.game.p352.c; i++) {
                com.corrodinggames.rts.game.p352 team = com.corrodinggames.rts.game.p352.i(i);
                if (team != null) {
                    if (team.Q == null) {
                        com.corrodinggames.rts.gameFramework.k1104.c("Fog null for team: " + team.l);
                    } else {
                        for (int x = 0; x < this.bI.D; x++) {
                            for (int y = 0; y < this.bI.E; y++) {
                                team.Q[x][y] = 10;
                            }
                        }
                    }
                }
            }
            int v14 = this.bU.e();
            for (int i = 0; i < com.corrodinggames.rts.game.p352.c; i++) {
                com.corrodinggames.rts.game.p352 team = com.corrodinggames.rts.game.p352.i(i);
                if (team != null) {
                    team.p = v14;
                    if (team.x) {
                        if (!team.z) {
                            if (team.A != null) {
                                team.y = team.A.intValue();
                            } else {
                                team.y = this.bU.aA.f;
                            }
                        } else {
                            team.c("aiDifficulty is locked");
                        }
                    }
                    team.L = this.bU.aA.l;
                    boolean v10 = false;
                    boolean v8 = false;
                    int v13;
                    if (team.B != null) {
                        v13 = team.B.intValue();
                    } else {
                        v13 = this.bU.aA.g;
                    }
                    if (v13 != 1) {
                        boolean v5 = true;
                        boolean v2 = true;
                        Float v9 = null;
                        Float v7 = null;
                        Float v6 = null;
                        Float v11 = null;
                        if (v13 == 5 || v13 == 4) {
                            v2 = false;
                        } else if (v13 > 10) {
                            v2 = false;
                        }
                        if (v13 == 5 || v13 == 4 || v13 == 3) {
                            v5 = false;
                        } else if (v13 > 10) {
                            v5 = false;
                        }
                        if (v13 == 9) {
                            v5 = false;
                            v2 = false;
                        }
                        int v3 = v2 ? 1 : 0;
                        Iterator<com.corrodinggames.rts.game.units.ce454> iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
                        while (iterator.hasNext()) {
                            com.corrodinggames.rts.game.units.ce454 unit = iterator.next();
                            if (unit instanceof com.corrodinggames.rts.game.units.ce454 && !unit.bX && unit.bZ == team) {
                                if (unit.bQ && !v10) {
                                    v10 = true;
                                    v9 = Float.valueOf(unit.eq);
                                    v7 = Float.valueOf(unit.er);
                                    if (!v5) {
                                        unit.bN();
                                    }
                                } else {
                                    if (unit.bR && !v8) {
                                        v8 = true;
                                        v6 = Float.valueOf(unit.eq);
                                        v11 = Float.valueOf(unit.er);
                                        if (v3 == 0) {
                                            unit.bN();
                                        }
                                    }
                                }
                            }
                        }
                        if (v9 == null) {
                            v9 = v6;
                            v7 = v11;
                        }
                        if (v9 == null) {
                            com.corrodinggames.rts.gameFramework.k1104.c("placementLocation==null for team:" + team.l);
                            continue;
                        }
                        float x = v9.floatValue();
                        float y = v7.floatValue();
                        if (v13 == 2) {
                            for (int j = 0; j <= 2; j++) {
                                if (j != 1) {
                                    com.corrodinggames.rts.game.units.ce454 unit = com.corrodinggames.rts.game.units.cj459.h.a(false);
                                    unit.b(team);
                                    unit.eq = x - 50.0f + (j * 50);
                                    unit.er = y;
                                    com.corrodinggames.rts.game.p352.c(unit);
                                }
                            }
                            for (int j = 0; j <= 2; j++) {
                                com.corrodinggames.rts.game.units.ce454 unit = com.corrodinggames.rts.game.units.cj459.w.a(false);
                                unit.b(team);
                                unit.eq = x - 50.0f + (j * 50);
                                unit.er = y + 50.0f;
                                com.corrodinggames.rts.game.p352.c(unit);
                            }
                        } else if (v13 == 3 || v13 == 4) {
                            for (int j = 0; j <= 2; j++) {
                                com.corrodinggames.rts.game.units.el732 unit = com.corrodinggames.rts.game.units.cj459.a("combatEngineer");
                                if (unit != null) {
                                    com.corrodinggames.rts.game.units.ce454 created = unit.a();
                                    created.b(team);
                                    created.eq = x - 50.0f + (j * 50);
                                    created.er = y + 50.0f;
                                    com.corrodinggames.rts.game.p352.c(created);
                                } else {
                                    com.corrodinggames.rts.gameFramework.j.ae1028.e("Could not find: combatEngineer on network.setup.startingUnits==3");
                                }
                            }
                        } else if (v13 == 5) {
                            com.corrodinggames.rts.game.units.el732 unit = com.corrodinggames.rts.game.units.cj459.a("experimentalSpider");
                            if (unit != null) {
                                com.corrodinggames.rts.game.units.ce454 created = unit.a();
                                created.b(team);
                                created.eq = x;
                                created.er = y;
                                created.ci = 90.0f;
                                created.es = 2.0f;
                                created.cE();
                                com.corrodinggames.rts.game.p352.c(created);
                            } else {
                                com.corrodinggames.rts.gameFramework.j.ae1028.e("Could not find: experimentalSpider on network.setup.startingUnits==5");
                            }
                        } else if (v13 != 9 && v13 > 10) {
                            com.corrodinggames.rts.game.units.custom.l609 customUnit = com.corrodinggames.rts.game.units.custom.l609.c(v13);
                            if (customUnit != null) {
                                com.corrodinggames.rts.game.units.custom.j607 created = com.corrodinggames.rts.game.units.custom.l609.a(false, customUnit);
                                created.b(team);
                                created.eq = x;
                                created.er = y;
                                if (!created.bq()) {
                                    created.ci = 90.0f;
                                }
                                if (customUnit.eI) {
                                    created.cE();
                                    created.cT();
                                }
                                com.corrodinggames.rts.game.p352.c(created);
                            } else {
                                com.corrodinggames.rts.gameFramework.j.ae1028.e("Could not find starting unit on startingUnits==" + String.valueOf(v13));
                            }
                        }
                    }
                }
            }
        }
        if (!p2) {
            if (this.cb == null || !this.cb.q) {
                this.a(0.0f, 0.0f);
                int unitCount = 0;
                int treeCount = 0;
                boolean found = false;
                Iterator<com.corrodinggames.rts.game.units.ce454> iterator = com.corrodinggames.rts.game.units.ce454.bG.iterator();
                while (iterator.hasNext()) {
                    com.corrodinggames.rts.game.units.ce454 unit = iterator.next();
                    if (unit instanceof com.corrodinggames.rts.game.units.cd453) {
                        treeCount++;
                    } else {
                        unitCount++;
                    }
                    if (unit.bZ == this.bp && unit.bR) {
                        this.b(unit.eq, unit.er);
                        found = true;
                    }
                }
                if (!found) {
                    Iterator<com.corrodinggames.rts.game.units.ce454> iterator2 = com.corrodinggames.rts.game.units.ce454.bG.iterator();
                    while (iterator2.hasNext()) {
                        com.corrodinggames.rts.game.units.ce454 unit = iterator2.next();
                        if (unit.bZ == this.bp && !unit.r() && !unit.s()) {
                            this.b(unit.eq, unit.er);
                        }
                    }
                }
                com.corrodinggames.rts.gameFramework.k1104.c("there are " + unitCount + " units on this map and " + treeCount + " trees");
            }
        }
        this.A = com.corrodinggames.rts.gameFramework.bt894.b(this.al).a(this.di);
        this.bR.a(this.bI, p2);
        this.bT.a(p2);
        this.cc.a();
        this.bS.a = 1;
        if (!p2) {
            com.corrodinggames.rts.gameFramework.d.a917.a();
        }
        this.bX.a(p2);
        this.bP.a(p2);
        if (!p2) {
            this.bP.h();
            this.ai();
            if (this.bs) {
                this.bP.h();
            }
        }
        this.bZ.a(this.bI);
        if (!p2) {
            this.bK.b();
        }
        this.bV.a();
        Iterator<com.corrodinggames.rts.game.units.ce454> unitIterator = com.corrodinggames.rts.game.units.ce454.bG.iterator();
        while (unitIterator.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 unit = unitIterator.next();
            if (unit instanceof com.corrodinggames.rts.game.units.bp437) {
                ((com.corrodinggames.rts.game.units.bp437) unit).a(false);
            }
        }
        this.A.e = true;
        this.B.a(this.al);
        this.bD = true;
        this.bE = false;
        this.bF = false;
        if (p3 != com.corrodinggames.rts.gameFramework.ac796.a) {
            if (!this.bN.hasPlayedGameOrSeenHelp) {
                this.bN.hasPlayedGameOrSeenHelp = true;
                this.bN.save();
            }
        }
        for (int i = 0; i < 5; i++) {
            System.gc();
        }
        if (!com.corrodinggames.rts.gameFramework.k1104.aR) {
            android.util.Log.v("RustedWarfare", "getNativeHeapSize" + String.valueOf(android.os.Debug.getNativeHeapSize()));
            android.util.Log.v("RustedWarfare", "getNativeHeapAllocatedSize" + String.valueOf(android.os.Debug.getNativeHeapAllocatedSize()));
            android.util.Log.v("RustedWarfare", "getNativeHeapFreeSize" + String.valueOf(android.os.Debug.getNativeHeapFreeSize()));
            android.util.Log.v("RustedWarfare", "Runtime.getRuntime().maxMemory()" + String.valueOf(Runtime.getRuntime().maxMemory()));
        }
        if (this.dh != null) {
            this.dh.c = System.currentTimeMillis();
        }
        this.F = 0.0f;
        if (this.bU.G && this.bU.C) {
            com.corrodinggames.rts.gameFramework.k1104.c("Disabling network for singleplayer");
            this.bU.C = false;
        }
        if (!com.corrodinggames.rts.game.i345.ab()) {
            if (p3 == com.corrodinggames.rts.gameFramework.ac796.c) {
                com.corrodinggames.rts.gameFramework.k1104.c("Not starting replay recording as we are loading a save");
            } else {
                this.bY.a(p2);
            }
        }
    }

    // ==== from ai(void)V.java ====
    private strictfp void ai() {
        this.bP.h();
        Iterator iterator = ce454.bG.iterator();
        while (iterator.hasNext()) {
            ce454 v0 = (ce454) iterator.next();
            if (v0.bZ == this.bp && v0 instanceof bp437) {
                if (v0.ai() && v0.i_() && v0.by() && !v0.s() && !v0.r()) {
                    k1104.c("selectAnyOnScreenBuilder: found builder");
                    this.bP.b(v0);
                    return;
                }
            }
        }
        k1104.c("selectAnyOnScreenBuilder: no builder found");
    }

    // ==== from aj(void)Z.java ====
    private strictfp boolean aj() {
        boolean v0 = true;
        if (this.J == null) {
            this.J = new com.corrodinggames.rts.game.l348("assets/shaders/post_base.frag");
        }
        if (this.K == null) {
            this.K = new com.corrodinggames.rts.game.l348("assets/shaders/post_displacement.frag");
        }
        this.J.a(this.bL);
        this.K.a(this.bL);
        if (!this.J.g || this.K.g) {
            if (!this.L) {
                this.L = true;
                com.corrodinggames.rts.gameFramework.k1104.c("setupPostprocessing: failed");
            }
            v0 = false;
        }
        return v0;
    }

    // ==== from ak(void)Z.java ====
    private strictfp boolean ak() {
        if (this.bN.showUnitIcons) {
            return false;
        }
        if (this.cU < 0.7) {
            if (this.cB >= this.bI.f() - 5.0f && this.cy >= this.bI.g() - 5.0f) {
                return true;
            }
        }
        if (com.corrodinggames.rts.gameFramework.k1104.bb) {
            return this.cU < 0.1;
        } else if (com.corrodinggames.rts.game.i345.Z()) {
            return this.cU < 0.27;
        } else {
            return this.cU < 0.4;
        }
    }

    // ==== from al(void)V.java ====
    private strictfp void al() {
        boolean v0;
        int v1 = 0;

        if (this.cN.left >= 0 && this.cN.top >= 0 && (float) this.cN.right > this.bI.f() && (float) this.cN.bottom <= this.bI.g()) {
            v0 = false;
        } else {
            v0 = true;
        }

        if (v0) {
            this.bL.b(android.graphics.Color.rgb(0, 0, 0));
        }
    }

    // ==== from am(void)V.java ====
    this.cg = this.N();

    this.O();

    this.cl = this.ci / 2.0f;

    this.cm = this.cj / 2.0f;

    this.cn = (float)(int)(this.cj / 3.0f);

    if (i345.Z()) {
        this.cn = (float)(int)(this.cj / 2.5f);
    }

    float v0 = (float)(int)(this.ci / 3.0f);

    if (this.cn > v0) {
        this.cn = v0;
    }

    this.cn = f1006.b(this.cn, 60.0f, (float)(int)(250.0f * this.cg));

    v0 = this.cv + this.cF;

    float v1 = this.cw;

    float v2 = this.cG;

    if (this.cP) {
        this.cC = this.ci;
        this.cD = this.ci;
    }

    else {
        this.cD = this.ci - this.cn + 1.0f;
        if (f.i988.bO) {
            this.cC = this.ci;
        } else {
            this.cC = this.cD;
        }
    }

    if (this.cC < 1.0f) {
        this.cC = 1.0f;
    }

    if (this.cD < 1.0f) {
        this.cD = 1.0f;
    }

    if (this.cO == this.cP) {
        float v3 = this.cn / 2.0f / this.cU;
        if (this.cP) {
            v0 += v3;
        } else {
            v0 -= v3;
        }
    }

    this.cO = this.cP;

    this.cE = this.cj;

    this.cx = this.cC / this.cU;

    this.cy = this.cE / this.cU;

    this.cB = this.cD / this.cU;

    this.cF = this.cx / 2.0f;

    this.cG = this.cy / 2.0f;

    this.cH.set(0, 0, (int) this.cC, (int) this.cE);

    this.cI.set(0, 0, (int) this.cx + 1, (int) this.cy + 1);

    this.cJ.set(0.0f, 0.0f, this.cx + 1.0f, this.cy + 1.0f);

    this.a(v0, v1);

    // ==== from an(void)String.java ====
    private strictfp String an() {
        if (!com.corrodinggames.rts.game.i345.X()) {
            return null;
        }
        try {
            android.content.pm.PackageManager packageManager = this.al.getPackageManager();
            android.content.pm.PackageInfo packageInfo = packageManager.getPackageInfo(this.al.getPackageName(), 64);
            android.content.pm.Signature[] signatures = packageInfo.signatures;
            if (signatures.length > 0) {
                return com.corrodinggames.rts.gameFramework.f1006.a(signatures[0].toByteArray());
            }
            return null;
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    // ==== from ao(void)Z.java ====
    private static strictfp boolean ao() {
        return com.corrodinggames.rts.game.units.bp437.class.getSimpleName().equals("OrderableUnit");
    }

    // ==== from ap(void)V.java ====
    private strictfp void ap() {
        synchronized (this) {
            this.ab = false;
            if (this.aa != null) {
                this.aa.cancel();
                this.aa = null;
            }
        }
    }

    // ==== from b(ab5)V.java ====
    public final strictfp void b(com.corrodinggames.rts.appFramework.ab5 p1) {
        synchronized (this.ac) {
            p1.onParentPause();
        }
    }

    // ==== from b(F)V.java ====
    private strictfp void b(float p1) {
            if (this.ac() && p1 < 0.1f) {
                com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame1: deltaSpeed:" + p1 + " frame:" + this.bu + " network.currentStepRate:" + this.bU.K);
            }
            if (this.bq != 1.0f && !this.bU.C && !this.bY.t) {
                p1 *= this.bq;
            }
            float deltaSpeed = p1 * this.G;
            this.H = 2.0f + deltaSpeed;
            this.I = deltaSpeed;
            this.bU.l();
            this.bv = (int)((float)this.bv + 16.666666f * deltaSpeed);
            com.corrodinggames.rts.gameFramework.c904 c904Instance = this.cc;
            com.corrodinggames.rts.gameFramework.k1104 k1104Instance = com.corrodinggames.rts.gameFramework.k1104.t();
            com.corrodinggames.rts.gameFramework.c904.e = 0;
            if (!k1104Instance.bU.C) {
                c904Instance.c();
            } else {
                c904Instance.d();
            }
            this.bY.f();
            this.bu++;
            com.corrodinggames.rts.game.p352.G();
            if (this.bI != null) {
                this.bI.d(deltaSpeed);
            }
            if (this.ac() && deltaSpeed < 0.1f) {
                com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame2: deltaSpeed:" + deltaSpeed + " frame:" + this.bu);
            }
            com.corrodinggames.rts.game.units.ce454.bn();
            com.corrodinggames.rts.gameFramework.utility.r1353 r1353Instance = com.corrodinggames.rts.gameFramework.ah801.dj();
            Object[] objs = r1353Instance.d;
            int size = r1353Instance.size();
            boolean ac = this.ac();
            int index = 0;
            while (index < size) {
                com.corrodinggames.rts.gameFramework.ah801 ah801Instance = (com.corrodinggames.rts.gameFramework.ah801) objs[index];
                if (ac && deltaSpeed != this.I) {
                    com.corrodinggames.rts.gameFramework.j.ae1028.f("JIT bug detected, attempting to correct. before object:" + ah801Instance.ej + " frame:" + this.bu + " deltaSpeed:" + deltaSpeed);
                    deltaSpeed = this.I;
                }
                ah801Instance.a(deltaSpeed);
                index++;
            }
            if (this.ac() && deltaSpeed < 0.1f) {
                com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame3: deltaSpeed:" + deltaSpeed + " frame:" + this.bu);
            }
            int weakSize = r1353Instance.a.size();
            index = 0;
            while (index < weakSize) {
                com.corrodinggames.rts.gameFramework.utility.u1356 item = (com.corrodinggames.rts.gameFramework.utility.u1356) r1353Instance.a.get(index);
                if (item.a == com.corrodinggames.rts.gameFramework.utility.t1355.a && !((com.corrodinggames.rts.gameFramework.ah801) item.b).el) {
                    ((com.corrodinggames.rts.gameFramework.ah801) item.b).a(deltaSpeed);
                }
                index++;
            }
            this.bZ.a();
            com.corrodinggames.rts.game.units.bp437.g(deltaSpeed);
            com.corrodinggames.rts.game.units.custom.j607.cU();
            com.corrodinggames.rts.game.units.custom.j607.dc();
            this.i++;
            if (this.i >= 1000) {
                this.i = 0;
                java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
                int count = 0;
                while (iterator.hasNext()) {
                    com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) iterator.next();
                    if (ce.bX && !(ce instanceof com.corrodinggames.rts.game.units.cd453)) {
                        count++;
                    }
                }
                if (count > 70) {
                    iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
                    while (iterator.hasNext()) {
                        com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) iterator.next();
                        if (ce instanceof com.corrodinggames.rts.game.units.ce454 && ce.bX && !(ce instanceof com.corrodinggames.rts.game.units.cd453) && ce.bY < (long)(this.bv - 30000) && count > 70) {
                            ce.a();
                            count--;
                        }
                    }
                }
            }
            com.corrodinggames.rts.game.p352.d(deltaSpeed);
            com.corrodinggames.rts.gameFramework.d.a917.a(deltaSpeed);
            this.bO.a(deltaSpeed);
            com.corrodinggames.rts.gameFramework.d.b918 b918Instance = this.C;
            if (com.corrodinggames.rts.gameFramework.d.b918.a()) {
                if (!b918Instance.a) {
                    b918Instance.b();
                }
                b918Instance.e += 0.2f * deltaSpeed;
                b918Instance.f += 0.07f * deltaSpeed;
                b918Instance.e %= (float) b918Instance.b.h();
                b918Instance.f %= (float) b918Instance.b.g();
            }
            com.corrodinggames.rts.gameFramework.utility.ab1322.a(deltaSpeed);
            if (this.cb != null) {
                this.cb.b(deltaSpeed);
            }
            this.bT.a(deltaSpeed);
            this.bR.a(deltaSpeed);
            if (this.cd != null) {
                this.cd.b();
            }
            com.corrodinggames.rts.gameFramework.bv896 bv896Instance = this.bV;
            int currentStep = com.corrodinggames.rts.gameFramework.k1104.t().bv;
            if (bv896Instance.e && bv896Instance.d <= currentStep) {
                bv896Instance.a(currentStep, false, false);
            }
        }

    // ==== from b(l1266_F)V.java ====
    private strictfp void b(com.corrodinggames.rts.gameFramework.m.l1266 p1, float p2) {
        if (p1 == null) {
            com.corrodinggames.rts.game.i345.a("drawAll", "canvas is null, not may not be available yet");
            return;
        }
        if (com.corrodinggames.rts.game.i345.aA) {
            return;
        }
        this.bL.a(p1);
        this.bL.a(this.an.getRenderer());
        this.bL.e();
        this.bw++;
        com.corrodinggames.rts.gameFramework.m.f1243.G = 0.0F;
        if (this.dr) {
            this.bL.b(android.graphics.Color.rgb(0, 0, 0));
            this.bL.a("Loading..", this.cl, this.cm, this.dm);
            return;
        }
        float f = this.ck;
        if (f != 1.0F) {
            this.bL.g();
            this.bL.a(f, f);
        }
        boolean z = com.corrodinggames.rts.gameFramework.k1104.ae();
        if (z && this.f(0x71) && this.f(0x2c)) {
            z = false;
        }
        boolean v0 = z && !this.aj();
        if (v0) {
            this.a(this.J);
            try {
                this.bL.b(android.graphics.Color.rgb(0, 0, 0));
                {
                    com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
                }
                this.c(p2);
                {
                    com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
                }
            } finally {
                this.b(this.J);
            }
            this.J.b();
            if (!this.K.a()) {
                this.a(this.K);
                int i = 0;
                try {
                    this.bL.b(android.graphics.Color.rgb(128, 128, 255));
                    this.I();
                    i = this.bO.a(3);
                    this.bO.l = null;
                } finally {
                    this.b(this.K);
                }
                if (i > 0) {
                    this.K.d.a("screenBase", this.J.a);
                    this.K.d.b("screenBaseSize", this.J.a);
                    this.K.d.a("u_resolution", this.ci, this.cj);
                    this.K.d.a("u_offsetBy", 0.2F * this.cU);
                    this.K.d.a("u_uiScaling", 1.0F);
                    this.K.b();
                }
            }
        } else {
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
            }
            this.c(p2);
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.d;
            }
        }
        if (!this.s()) {
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.f;
            }
            this.d(p2);
            {
                com.corrodinggames.rts.gameFramework.cg911 unused = com.corrodinggames.rts.gameFramework.cg911.f;
            }
        }
        if (this.bN.showFps && this.cQ == 0.0F && !this.cR && !this.cP) {
            this.bL.a(this.t, 100.0F, 35.0F, this.l);
        }
        if (com.corrodinggames.rts.game.i345.e != null) {
            this.bL.a(com.corrodinggames.rts.game.i345.e, 100.0F, 85.0F, this.l);
        }
        if (!this.ap) {
            com.corrodinggames.rts.gameFramework.m.l1266 c = this.bL.c();
            if (c == null || com.corrodinggames.rts.gameFramework.k1104.aT) {
                this.bP.c(p2);
            }
        }
        if (!this.s()) {
            this.bO.a(4);
        }
        com.corrodinggames.rts.game.units.custom.j607.dd();
        this.bL.f();
        if (f != 1.0F) {
            p1.a_();
        }
    }

    // ==== from b(l348)V.java ====
    private strictfp void b(com.corrodinggames.rts.game.l348 p1) {
        if (this.M == null) {
            throw new RuntimeException("Layer not enabled");
        }
        this.bL.h();
        this.bL.n();
        this.bL = this.M;
        this.M = null;
        this.bL.b(p1.f, p1.e);
    }

    // ==== from b(void)I.java ====
    public final strictfp int b() {
        return this.r;
    }

    // ==== from b(Z)Z.java ====
    private strictfp boolean b(boolean p1) {
        if (p1 && !this.bY.g()) {
            if (p1 && !this.bU.aY) {
                return true;
            }
            return this.bU.m();
        }
        if (this.bP.u) {
            return true;
        }
        if (this.bm) {
            return true;
        }
        if (this.ap && !this.bE) {
            return true;
        }
        if (p1 && !this.bU.aY) {
            return true;
        }
        return this.bU.m();
    }

    // ==== from c(F)V.java ====
    private strictfp void c(float p1) {
        if (!this.bD) {
            return;
        }
        this.W.a();
        this.dt = 0;
        boolean v0 = false;
        com.corrodinggames.rts.gameFramework.ah801[] v8 = com.corrodinggames.rts.game.units.ce454.et.c;
        int v9 = com.corrodinggames.rts.gameFramework.ah801.et.size();
        for (int v1 = 0; v1 < v9; v1++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v8[v1];
            boolean v3 = v2.en;
            boolean v4 = v2.a(this);
            v2.en = v4;
            if (v3 != v4) {
                v0 = true;
            }
            if (v4) {
                this.W.a(v2);
            }
        }
        if (this.V.size() != this.W.size()) {
            v0 = true;
        }
        if (v0) {
            com.corrodinggames.rts.gameFramework.utility.v1357 temp = this.V;
            this.V = this.W;
            this.W = temp;
        }
        if (!this.ak()) {
            java.util.Collections.sort(this.V, com.corrodinggames.rts.gameFramework.ah801.ek);
        }
        this.bL.g();
        this.bL.a(this.cH);
        this.al();
        if (this.bN.renderFancyWater) {
            if (this.N == null) {
                this.N = this.bL.a(com.corrodinggames.rts.R.drawable.water_cloud);
            }
            if (this.O == null) {
                this.O = this.bL.a(com.corrodinggames.rts.R.drawable.water_layer1);
            }
            if (this.P == null) {
                this.P = this.bL.a(com.corrodinggames.rts.R.drawable.water_layer2);
            }
            this.R.set(this.cH);
            this.Q += 0.05f * p1;
            if (this.Q > 100.0f) {
                this.Q -= 100.0f;
            }
            this.bL.a(this.N, this.R, (android.graphics.Paint) null, this.cr / 6, this.cs / 6, 1, 1);
            this.R.set(this.cI);
            this.S.set(this.cI);
            this.bL.g();
            this.I();
            this.bL.a(this.P, this.S, (android.graphics.Paint) null, (float) this.cr + this.Q, (float) this.cs + this.Q);
            this.bL.a(this.O, this.S, (android.graphics.Paint) null, (float) this.cr, (float) this.cs);
            this.bL.h();
        }
        if (this.bI != null) {
            this.bI.c(p1);
        }
        this.I();
        this.bL.a(this.cI);
        boolean v1 = this.ak();
        this.bR.c();
        com.corrodinggames.rts.gameFramework.ah801[] v3 = this.V.c;
        int v4 = this.V.size();
        this.cZ = true;
        this.da = true;
        this.db = true;
        this.dc = true;
        this.dd = true;
        if (this.cU < 0.45) {
            this.db = false;
            this.cZ = false;
            this.dd = false;
        }
        if (this.cU < 0.3) {
            this.dc = false;
            this.da = false;
        }
        if (!v1) {
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                if (v2.eo == 0) {
                    v2.b(p1);
                }
            }
        }
        com.corrodinggames.rts.gameFramework.d.a917.b();
        this.bO.b(p1);
        this.bO.a(1);
        if (v1) {
            if (this.bP.aX == 0) {
                com.corrodinggames.rts.game.units.ce454.bK.setARGB(0xaf, 0xaf, 0xaf, 0xaf);
                com.corrodinggames.rts.game.units.ce454.bL.setARGB(0xff, 0xff, 0xff, 0xff);
            } else {
                com.corrodinggames.rts.game.units.ce454.bK.setARGB(0xff, 0xc3, 0xc3, 0xc3);
                com.corrodinggames.rts.game.units.ce454.bL.setARGB(0xff, 0xff, 0xff, 0xff);
            }
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                if (!v2.e(p1)) {
                    v2.b(p1);
                }
            }
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                v2.a(p1, true);
                v2.n(p1);
            }
        } else {
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                v2.c(p1);
            }
            for (int v2 = 0; v2 < v9; v2++) {
                com.corrodinggames.rts.gameFramework.ah801 v2Obj = v8[v2];
                boolean shouldProcess = v2Obj.en;
                if (!v2Obj.en) {
                    if (v2Obj instanceof com.corrodinggames.rts.game.units.ce454) {
                        com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) v2Obj;
                        if (ce.cI && (ce.bZ != this.bp || ce.bK())) {
                            shouldProcess = true;
                        }
                    }
                }
                if (shouldProcess) {
                    v2Obj.d(p1);
                    if (!v2Obj.en) {
                        v2Obj.n(p1);
                    }
                }
            }
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                if (v2.eo != 0 && v2.eo != 10) {
                    v2.b(p1);
                }
            }
            for (int v0 = 0; v0 < v4; v0++) {
                com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
                v2.a(p1, false);
                v2.n(p1);
            }
            com.corrodinggames.rts.game.p352.H();
        }
        this.db = true;
        this.dc = true;
        this.bO.a(2);
        for (int v0 = 0; v0 < v4; v0++) {
            com.corrodinggames.rts.gameFramework.ah801 v2 = v3[v0];
            if (v2.eo == 10) {
                v2.b(p1);
            }
        }
        this.C.c();
        if (this.cb != null) {
            com.corrodinggames.rts.gameFramework.n.p1300.a();
        }
        com.corrodinggames.rts.gameFramework.utility.ab1322.c();
        this.bL.h();
    }

    // ==== from c(void)Z.java ====
    public final strictfp boolean c() {
        return this.eg;
    }

    // ==== from c(Z)V.java ====
    private strictfp void c(boolean p1) {
        synchronized (this.ai) {
            if (this.an != null) {
                this.an.flushCanvas();
            }
            this.bn = false;
            if (!p1) {
                this.bY.e();
            }
            this.bR.b();
            this.g();
            if (!com.corrodinggames.rts.game.i345.Z()) {
                this.bK.d();
            }
            this.bO.a(p1);
            if (this.bI != null) {
                this.bI.e();
                this.bI = null;
            }
            if (this.cb != null) {
                this.cb = null;
            }
            if (this.bZ != null) {
                this.bZ.e = null;
            }
            this.ae = null;
            this.af = null;
            this.i = 0;
            com.corrodinggames.rts.game.p352.N();
            com.corrodinggames.rts.gameFramework.g.g1013.a.a(this, com.corrodinggames.rts.gameFramework.g.d1010.a);
            return;
        }
    }

    // ==== from d(F)V.java ====
    private strictfp void d(float f) {
        this.bP.b(f);
        if (this.cb != null) {
            this.cb.a(f);
        }
        this.bT.b(f);
        if (this.ce) {
            this.bL.a("Look Mode", this.cl, this.cm, this.dm);
        }
        if (this.bj) {
            int v2 = 20;
            for (int v1 = 0; v1 < com.corrodinggames.rts.game.p352.c; v1++) {
                com.corrodinggames.rts.game.p352 v0 = com.corrodinggames.rts.game.p352.i(v1);
                if (v0 != null && v0 instanceof com.corrodinggames.rts.game.a.a296) {
                    com.corrodinggames.rts.game.a.a296 a296Instance = (com.corrodinggames.rts.game.a.a296) v0;
                    String str = new StringBuilder()
                        .append(a296Instance.l)
                        .append("| c:")
                        .append(a296Instance.p)
                        .toString();
                    this.bL.a(str, 20.0f, (float) v2, this.dk);
                    v2 += 20;
                }
            }
        }
    }

    // ==== from d(void)Z.java ====
    public final strictfp boolean d() {
        return this.ej;
    }

    // ==== from d(Z)V.java ====
    private strictfp void d(boolean p1) {
        int delay = 1;
        synchronized (this.ac) {
            this.ab = true;
            if (this.aa == null) {
                if (!p1) {
                    delay = 700;
                }
                this.aa = new Timer();
                this.aa.schedule(new j346(this), (long) delay);
            }
        }
    }

    // ==== from e(void)Z.java ====
    public final strictfp boolean e() {
        return this.ek;
    }

    // ==== from f(void)V.java ====
    public final strictfp void f() {
        B();
        c(false);
        bD = false;
        bE = false;
        bC = false;
        bm = false;
        bP.u = false;
    }

    // ==== from g(void)V.java ====
    public final strictfp void g() {
        r1353 v1 = ah801.dj();
        Iterator v2 = v1.iterator();
        while (v2.hasNext()) {
            ah801 v0 = (ah801) v2.next();
            v0.a();
        }
        ce454.bn();
        ah801.dj();
        int v0 = v1.size();
        if (v0 != 0) {
            StringBuilder v2Builder = new StringBuilder("SHOULD_NOT_HAPPEN: we still had ");
            v2Builder.append(v0);
            v2Builder.append(" objects in gameObjectListForLogic after removeAll");
            k1104.a(v2Builder.toString());
            Iterator v3 = v1.iterator();
            while (v3.hasNext()) {
                ah801 v0Obj = (ah801) v3.next();
                StringBuilder v1Builder = new StringBuilder("Object: ");
                v1Builder.append(v0Obj.ej);
                String v1Str = v1Builder.toString();
                String v0Str;
                if (v0Obj instanceof ce454) {
                    v0Str = ((ce454) v0Obj).J();
                } else {
                    v0Str = v1Str;
                }
                k1104.a("Remaining object: " + v0Str);
            }
        }
        ce454.bn().clear();
        ah801.dj().clear();
        j607.cV();
        this.V.clear();
    }

    // ==== from h(void)String.java ====
    public final strictfp String h() {
        if (com.corrodinggames.rts.gameFramework.k1104.aU) {
            return "com.corrodinggames.rts.java";
        }
        if (com.corrodinggames.rts.gameFramework.k1104.aV) {
            return "com.corrodinggames.rts.gdx";
        }
        if (com.corrodinggames.rts.game.i345.aR) {
            return "com.corrodinggames.rts.server";
        }
        if (this.al == null) {
            return "<null context>";
        }
        return this.al.getPackageName();
    }

    // ==== from i(void)String.java ====
    public final strictfp String i() {
        if (com.corrodinggames.rts.gameFramework.k1104.aU) {
            return "java";
        }
        if (com.corrodinggames.rts.gameFramework.k1104.aV) {
            return "java-gdx";
        }
        if (com.corrodinggames.rts.game.i345.aR) {
            return "dedicatedServer";
        }
        if (this.al == null) {
            return "<null context>";
        }
        try {
            return this.al.getPackageManager().getInstallerPackageName(this.h());
        } catch (IllegalArgumentException e) {
            return "IllegalArgumentException: " + e.getMessage();
        }
    }

    // ==== from j(void)Z.java ====
    public final strictfp boolean j() {
        if ("1.15".contains("p")) {
            return true;
        }
        return false;
    }

    // ==== from k(void)Z.java ====
    public final strictfp boolean k() {
        boolean v0 = true;
        if (!com.corrodinggames.rts.gameFramework.k1104.aW) {
            v0 = false;
        } else if (!com.corrodinggames.rts.game.i345.ao() && com.corrodinggames.rts.game.i345.aS) {
            v0 = false;
        }
        return v0;
    }

    // ==== from l(void)String.java ====
    public final strictfp String l() {
        String v0 = this.n();
        return v0;
    }

    // ==== from m(void)V.java ====
    public final strictfp void m() {
        i345.a = null;
        this.n();
    }

    // ==== from n(void)String.java ====
    public final strictfp String n() {
        if (com.corrodinggames.rts.game.i345.a != null) {
            return com.corrodinggames.rts.game.i345.a;
        }
        String v0 = "v1.15";
        if (!com.corrodinggames.rts.gameFramework.k1104.ar || com.corrodinggames.rts.game.i345.aS) {
            v0 = "DEBUG BUILD - ".concat(String.valueOf("v1.15"));
        } else if (com.corrodinggames.rts.gameFramework.k1104.as) {
            v0 = "TESTING BUILD - ".concat(String.valueOf("v1.15"));
        } else if ("v1.15".contains("p")) {
            v0 = "BETA VERSION - ".concat(String.valueOf("v1.15"));
        }
        if (!com.corrodinggames.rts.gameFramework.k1104.aW && com.corrodinggames.rts.game.i345.ao()) {
            v0 = "RAW - ".concat(String.valueOf(v0));
        }
        com.corrodinggames.rts.game.i345.a = v0;
        return v0;
    }

    // ==== from o(void)String.java ====
    public final strictfp String o() {
        return "1.15";
    }

    // ==== from p(void)String.java ====
    public final strictfp String p() {
        return "1.15";
    }

    // ==== from q(void)V.java ====
    public final strictfp void q() {
        synchronized(this) {
            if (this.ad > 20) {
                return;
            }
            int v1 = this.bN.nextBackgroundMap;
            com.corrodinggames.rts.gameFramework.SettingsEngine v2 = this.bN;
            v2.nextBackgroundMap = v2.nextBackgroundMap + 1;
            com.corrodinggames.rts.gameFramework.SettingsEngine v3 = this.bN;
            if (v3.nextBackgroundMap > 3) {
                com.corrodinggames.rts.gameFramework.SettingsEngine v4 = this.bN;
                v4.nextBackgroundMap = 1;
            }
            this.bN.save();
            v1 = com.corrodinggames.rts.gameFramework.f1006.b(v1, 1, 3);
            this.dj = null;
            this.di = "maps/menu_background/menu" + v1 + ".tmx";
            try {
                com.corrodinggames.rts.game.p352.b(10, true);
            } catch (java.io.IOException e) {
                throw new RuntimeException(e);
            }
            int i = 0;
            while (i < com.corrodinggames.rts.game.p352.c) {
                com.corrodinggames.rts.game.a.a296 a = new com.corrodinggames.rts.game.a.a296(i);
                if (i == 0) {
                    this.bp = a;
                }
                i++;
            }
            this.a(false, com.corrodinggames.rts.gameFramework.ac796.a);
            this.bE = true;
            this.bP.h();
            if (!this.bD) {
                com.corrodinggames.rts.gameFramework.k1104.f("Menu load failed");
                this.ad = this.ad + 1;
            }
        }
    }

    // ==== from r(void)I.java ====
    public final strictfp int r() {
        return this.c;
    }

}
