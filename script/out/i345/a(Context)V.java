public final strictfp void a(Context p1) {
    synchronized (this) {
        Log.e("RustedWarfare", "--- ----------------- ----");
        Log.e("RustedWarfare", "--- GameEngine:init() ----");
        Log.e("RustedWarfare", "--- ----------------- ----");
        if (this.bf) {
            Log.e("RustedWarfare", "GameEngine init has already been called");
            return;
        }
        k1104.c(new StringBuilder("Version:").append(this.n()).toString());
        Object ignored_cg911 = cg911.C;
        if (k1104.bb) {
            if (this.getClass().equals(i345.class)) {
                throw new RuntimeException(new StringBuilder("inSpace but class is:").append(this.getClass()).toString());
            }
        }
        System.gc();
        this.dF = "Asset Index";
        this.bH = new m1348(p1);
        long startTime = cf910.a();
        this.ca = new cf910(this);
        if (i345.aR) {
            this.cf = 1.0f;
        } else {
            android.content.res.Resources resources = p1.getResources();
            android.util.DisplayMetrics metrics = resources.getDisplayMetrics();
            this.cf = resources.getDisplayMetrics().density;
            k1104.c(new StringBuilder("densityScaleRaw: ").append(this.cf).toString());
            float densityZoom = f1006.b(0.0f, 0.0f, (float) metrics.widthPixels, (float) metrics.heightPixels) / 1131.0f;
            k1104.c("defaultViewpointZoomDensity: " + densityZoom);
            if (densityZoom < 0.5f) {
                densityZoom = 0.5f;
            }
            if (densityZoom > 3.0f) {
                densityZoom = 3.0f;
            }
            k1104.c("defaultViewpointZoomDensity after limit: " + densityZoom);
            this.cV = 1.0f;
            if (f1006.d(densityZoom - 1.0f) > 0.1) {
                this.cV = densityZoom;
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
        k1104.c(new StringBuilder("densityScaleRaw*densityScaleMultiplier: ").append(this.cf).toString());
        if (k1104.b(p1)) {
            this.aq = true;
        }
        this.D = new b338();
        this.bl = false;
        this.dF = "InputController";
        this.bQ = new an807();
        an807 inputController = this.bQ;
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
        k1104.c("getControllerCount:0");
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
        this.bN = SettingsEngine.getInstance(p1);
        this.bN.loadMainExternalFolder(true);
        a926.b();
        int numToCompare = 3;
        if (i345.aW) {
            numToCompare = 1;
        }
        if (this.bN.numIncompleteLoadAttempts > 1 || this.bN.numLoadsSinceRunningGameOrNormalExit > numToCompare) {
            this.eg = true;
            if (this.bN.numIncompleteLoadAttempts > 2 || this.bN.numLoadsSinceRunningGameOrNormalExit > 4) {
                this.bN.forceEnglish = true;
                this.eh = true;
            }
            if (this.bN.numIncompleteLoadAttempts > 3) {
                this.bN.newRender = false;
            }
            if (this.bN.numIncompleteLoadAttempts > 4 || this.bN.numLoadsSinceRunningGameOrNormalExit > 5) {
                k1104.c("Extra safe mode");
                this.ej = true;
            }
            if (this.bN.numIncompleteLoadAttempts > 5) {
                k1104.c("Extra safe mode x2");
                this.ek = true;
            }
            if (this.bN.numIncompleteLoadAttempts > 6) {
                k1104.c("Extra safe mode x3");
                this.bN.newRender = false;
                this.bN.shaderEffects = false;
                this.bN.teamShaders = false;
            }
            if (this.bN.newRender && this.bN.numLoadsSinceRunningGameOrNormalExit > 15) {
                k1104.c("Disabling opengl mode");
                this.bN.newRender = false;
            }
            k1104.c(new StringBuilder("starting game in safe mode, numIncompleteLoadAttempts:")
                .append(this.bN.numIncompleteLoadAttempts)
                .append(" numLoadsSinceRunningGameOrNormalExit:")
                .append(this.bN.numLoadsSinceRunningGameOrNormalExit)
                .toString());
        }
        if (i345.aL) {
            this.eg = true;
            this.ei = "<forced by command line>";
        }
        if (i345.aM) {
            this.eg = true;
            this.ej = true;
            this.ek = true;
            this.ei = "<forced by command line>";
        }
        this.bN.numLoadsSinceRunningGameOrNormalExit++;
        this.bN.numIncompleteLoadAttempts++;
        boolean saveResult = this.bN.save();
        if (!saveResult && i345.aW) {
            k1104.c("starting game in safe mode, failed to save settings");
            this.ei = "failing to write preferences data";
            this.eg = true;
        }
        a901.a();
        this.cg = this.N();
        k1104.c(new StringBuilder("densityScale(): ").append(this.cg).toString());
        long localeStartTime = cf910.a();
        a1015.a();
        cf910.a("Locale.init took:", localeStartTime);
        p352.C();

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

        long audioStartTime = cf910.a();
        this.dF = "AudioEngine";
        e788.a();
        this.bJ = new e788();
        e788.a(p1);
        cf910.a("AudioEngine took:", audioStartTime);

        this.dF = "MusicController";
        this.bK = new ax817();
        ax817 musicController = this.bK;
        musicController.w = p1;
        if (!k1104.ab()) {
            ax817.a.a(musicController);
            musicController.k = ax817.a.a();
            musicController.A = ax817.a.a();
            bi883.a();
            musicController.e = new bm887(musicController);
            musicController.e.start();
        }

        if (i345.be != null) {
            k1104.c("init(): using Graphics instance");
            this.bL = i345.be;
        } else {
            if (i345.bd != null) {
                k1104.c("init(): using GraphicsSlick2d");
                try {
                    this.bL = (fi1252) i345.bd.newInstance();
                } catch (InstantiationException e) {
                    throw new RuntimeException(e);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            } else if (i345.aR) {
                this.bL = new fj1253();
            } else {
                this.bL = new fh1251();
            }
        }

        this.dF = "graphics.init";
        this.bL.a(p1);
        this.bL.b();
        i1022.a();
        this.dF = "Fonts";
        this.P();
        this.dF = "effects.init";
        this.bO = new c919();
        this.bO.a();
        this.dF = "minimapHandler";
        this.bT = new q996();
        this.bT.a();

        if (i345.ch != null) {
            k1104.c("We have an initial screen size, can do early setup of image buffers");
            this.dF = "Map Buffers";
            this.a(i345.ch.x, i345.ch.y, 1.0f);
            this.am();
            b326.b();
            b326.c();
            this.bT.c();
            if (k1104.ae()) {
                this.dF = "Setting up postprocessing";
                boolean postOk = this.aj();
                if (!postOk) {
                    k1104.c("Failed to setup postprocessing");
                }
            }
        }

        this.dF = "PathEngine";
        this.bR = new k1099();
        this.dF = "GroupController";
        this.bS = new al805();
        this.dF = "CollisionEngine";
        this.bM = new a793();
        this.dF = "InterfaceEngine";
        this.bP = new i988();
        i988 interfaceEngine = this.bP;
        k1104 gameEngine = k1104.t();
        if (k1104.bb) {
            interfaceEngine.bN = true;
        }
        i988.c();
        interfaceEngine.bG = a1015.a("gui.notAvailableInDemoText", new Object[0]);
        interfaceEngine.bH = "Locked";
        interfaceEngine.bI = bu555.b("gui.notEnoughResources");
        interfaceEngine.bJ = a1015.a("gui.cannotPlace.general", new Object[0]);
        interfaceEngine.bK = a1015.a("gui.cannotPlace.needsResourcePool", new Object[0]);
        interfaceEngine.bL = a1015.a("gui.cannotPlace.needsWater", new Object[0]);
        interfaceEngine.g = new a950(gameEngine, interfaceEngine);
        interfaceEngine.b();
        interfaceEngine.h = new o994(gameEngine, interfaceEngine);
        interfaceEngine.i = new ay975(gameEngine);
        interfaceEngine.j = new m992(gameEngine, interfaceEngine);
        interfaceEngine.k = new f985();
        if (k1104.Y()) {
            interfaceEngine.b = true;
        }
        interfaceEngine.ba = gameEngine.bL.a(R.drawable.button_no);
        interfaceEngine.bb = gameEngine.bL.a(R.drawable.button_yes);
        interfaceEngine.bc = gameEngine.bL.a(R.drawable.button_more);
        interfaceEngine.bf = new Paint();
        interfaceEngine.bf.setFilterBitmap(true);
        interfaceEngine.bg = new Paint();
        interfaceEngine.bg.setFilterBitmap(true);
        interfaceEngine.bg.setARGB(40, 255, 255, 255);
        interfaceEngine.bh = gameEngine.bL.a(R.drawable.button_add);
        interfaceEngine.bi = gameEngine.bL.a(R.drawable.button_subtract);
        interfaceEngine.bj = gameEngine.bL.a(R.drawable.icon_rally);
        interfaceEngine.bn = gameEngine.bL.a(R.drawable.rounded_glow_button);
        interfaceEngine.bo = gameEngine.bL.a(R.drawable.rounded_white_button);
        interfaceEngine.bp = new e939(interfaceEngine.bn, 32, 27);
        interfaceEngine.bq = new e939(gameEngine.bL.a(R.drawable.rounded_glow_highlight_button), 32, 27);
        interfaceEngine.br = interfaceEngine.bp.a();
        interfaceEngine.br.v = interfaceEngine.bq;
        interfaceEngine.bs = new e939(gameEngine.bL.a(R.drawable.rounded_dark_box), 32, 27);
        interfaceEngine.bt = new e939(gameEngine.bL.a(R.drawable.rounded_dark_box_titled), 36, 36);
        interfaceEngine.bt.r = new e939(gameEngine.bL.a(R.drawable.rounded_shadow), 36, 36);
        interfaceEngine.bt.f = true;
        interfaceEngine.bu = new e939(gameEngine.bL.a(R.drawable.rounded_green), 36, 36);
        interfaceEngine.bu.r = interfaceEngine.bt.r;
        interfaceEngine.bu.u = 20;
        interfaceEngine.bk = gameEngine.bL.a(R.drawable.icon_upgrade);
        interfaceEngine.bl = gameEngine.bL.a(R.drawable.metal_dark, false);
        interfaceEngine.bm = gameEngine.bL.a(R.drawable.touch_indicator, false);
        i943.b();
        interfaceEngine.bE.setARGB(145, 0, 175, 0);
        interfaceEngine.bE.setStrokeWidth(6.0f);
        fq1260.a(interfaceEngine.bE);
        interfaceEngine.bD.setAntiAlias(true);
        interfaceEngine.au = new Paint();
        interfaceEngine.av = new fq1260();
        interfaceEngine.av.setARGB(255, 0, 240, 0);
        interfaceEngine.av.setAntiAlias(true);
        interfaceEngine.av.setSubpixelText(true);
        interfaceEngine.av.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        gameEngine.a(interfaceEngine.av, 20.0f);
        interfaceEngine.av.setTextAlign(Paint.Align.LEFT);
        interfaceEngine.ay = new fq1260();
        interfaceEngine.ay.setARGB(255, 0, 240, 0);
        interfaceEngine.ay.setAntiAlias(true);
        interfaceEngine.ay.setSubpixelText(true);
        interfaceEngine.ay.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        gameEngine.a(interfaceEngine.ay, 18.0f);
        interfaceEngine.ay.setTextAlign(Paint.Align.LEFT);
        interfaceEngine.aw = new fq1260();
        interfaceEngine.aw.set(interfaceEngine.av);
        interfaceEngine.aw.setARGB(255, 240, 240, 0);
        interfaceEngine.ax = new fq1260();
        interfaceEngine.ax.setColor(Color.argb(100, 0, 0, 0));
        interfaceEngine.ax.setStyle(Paint.Style.FILL_AND_STROKE);
        interfaceEngine.az = new fq1260();
        interfaceEngine.az.setARGB(100, 30, 240, 30);
        interfaceEngine.az.setTextAlign(Paint.Align.LEFT);
        interfaceEngine.az.setSubpixelText(true);
        interfaceEngine.az.setAntiAlias(true);
        gameEngine.a(interfaceEngine.az, 12.0f);
        fq1260.a(interfaceEngine.az);
        interfaceEngine.aC = new fq1260();
        if (interfaceEngine.bN) {
            interfaceEngine.aC.setARGB(255, 240, 240, 240);
        } else {
            interfaceEngine.aC.setARGB(255, 30, 240, 30);
        }
        interfaceEngine.aC.setTextAlign(Paint.Align.CENTER);
        interfaceEngine.aC.setSubpixelText(true);
        interfaceEngine.aC.setAntiAlias(true);
        gameEngine.a(interfaceEngine.aC, 12.0f);
        fq1260.a(interfaceEngine.aC);
        k1104.c(new StringBuilder("smallTextPaint size: ").append(interfaceEngine.aC.getTextSize()).toString());
        interfaceEngine.aB = new fq1260();
        interfaceEngine.aB.set(interfaceEngine.aC);
        gameEngine.a(interfaceEngine.aB, 10.0f);
        fq1260.a(interfaceEngine.aB);
        interfaceEngine.aA = new fq1260();
        interfaceEngine.aA.set(interfaceEngine.aC);
        gameEngine.a(interfaceEngine.aA, 8.0f);
        fq1260.a(interfaceEngine.aA);
        interfaceEngine.aD = new fq1260();
        if (interfaceEngine.bN) {
            interfaceEngine.aD.setARGB(255, 240, 240, 240);
        } else {
            interfaceEngine.aD.setARGB(255, 30, 240, 30);
        }
        interfaceEngine.aD.setTextAlign(Paint.Align.CENTER);
        interfaceEngine.aD.setSubpixelText(true);
        interfaceEngine.aD.setAntiAlias(true);
        gameEngine.a(interfaceEngine.aD, 20.0f);
        fq1260.a(interfaceEngine.aD);
        interfaceEngine.aE = new fq1260();
        interfaceEngine.aE.setARGB(255, 30, 240, 30);
        interfaceEngine.aE.setTextAlign(Paint.Align.CENTER);
        interfaceEngine.aE.setSubpixelText(true);
        interfaceEngine.aE.setAntiAlias(true);
        gameEngine.a(interfaceEngine.aE, 20.0f);
        fq1260.a(interfaceEngine.aE);
        interfaceEngine.aI = new fq1260();
        interfaceEngine.aI.setARGB(150, 20, 20, 20);
        gameEngine.a(interfaceEngine.aI, 16.0f);
        fq1260.a(interfaceEngine.aI);
        interfaceEngine.aF = new fq1260();
        interfaceEngine.aF.set(interfaceEngine.aD);
        interfaceEngine.aF.setARGB(255, 128, 0, 0);
        gameEngine.a(interfaceEngine.aF, 14.0f);
        interfaceEngine.aF.setTextAlign(Paint.Align.CENTER);
        fq1260.a(interfaceEngine.aF);
        interfaceEngine.aG = new fq1260();
        interfaceEngine.aG.set(interfaceEngine.aF);
        interfaceEngine.aG.setARGB(255, 220, 222, 49);
        interfaceEngine.aH = new fq1260();
        interfaceEngine.aH.set(interfaceEngine.aD);
        gameEngine.a(interfaceEngine.aH, 12.0f);
        interfaceEngine.aH.setARGB(125, 230, 230, 230);
        interfaceEngine.aH.setTextAlign(Paint.Align.CENTER);
        fq1260.a(interfaceEngine.aH);
        interfaceEngine.aQ = new fq1260();
        interfaceEngine.aQ.setColor(-16777216);
        interfaceEngine.aQ.setAntiAlias(true);
        interfaceEngine.aQ.setSubpixelText(true);
        interfaceEngine.aQ.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
        gameEngine.a(interfaceEngine.aQ, 14.0f);
        interfaceEngine.aR = new fq1260();
        interfaceEngine.aR.set(interfaceEngine.aQ);
        interfaceEngine.aR.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        gameEngine.a(interfaceEngine.aR, 16.0f);
        interfaceEngine.aS = new fq1260();
        interfaceEngine.aS.set(interfaceEngine.aR);
        interfaceEngine.aS.setColor(Color.rgb(232, 63, 80));
        gameEngine.a(interfaceEngine.aS, 16.0f);
        interfaceEngine.aK = new Paint();
        interfaceEngine.aK.setColor(-16777216);
        interfaceEngine.aK.setTextAlign(Paint.Align.CENTER);
        interfaceEngine.aK.setAntiAlias(true);
        interfaceEngine.aK.setSubpixelText(true);
        interfaceEngine.aK.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
        gameEngine.a(interfaceEngine.aK, 20.0f);
        interfaceEngine.aL = new Paint();
        interfaceEngine.aL.setColor(-1);
        interfaceEngine.aL.setAlpha(160);
        if (k1104.Z()) {
            interfaceEngine.aL.setAlpha(140);
        }
        gameEngine.a(interfaceEngine.aL, 16.0f);
        interfaceEngine.aM = new Paint();
        interfaceEngine.aM.setColor(-16777216);
        interfaceEngine.aM.setAlpha(210);
        gameEngine.a(interfaceEngine.aM, 16.0f);
        interfaceEngine.aP = new Paint();
        interfaceEngine.aP.setColor(-0x777778);
        interfaceEngine.aP.setAlpha(240);
        interfaceEngine.aP.setStyle(Paint.Style.STROKE);
        interfaceEngine.aP.setStrokeWidth(1.0f);
        gameEngine.a(interfaceEngine.aP, 16.0f);
        interfaceEngine.aN = new Paint();
        interfaceEngine.aN.setColor(-0xff0100);
        interfaceEngine.aN.setAlpha(80);
        interfaceEngine.aN.setStyle(Paint.Style.FILL);
        interfaceEngine.aN.setStrokeWidth(4.0f);
        gameEngine.a(interfaceEngine.aN, 16.0f);
        interfaceEngine.aO = new Paint();
        interfaceEngine.aO.setColor(Color.argb(120, 235, 167, 49));
        interfaceEngine.aO.setStyle(Paint.Style.FILL);
        interfaceEngine.aO.setStrokeWidth(8.0f);
        gameEngine.a(interfaceEngine.aO, 16.0f);
        interfaceEngine.aJ = new Paint();
        interfaceEngine.aJ.setSubpixelText(true);
        interfaceEngine.aJ.setAntiAlias(true);
        gameEngine.a(interfaceEngine.aJ, 12.0f);
        fq1260.a(interfaceEngine.aJ);

        this.B = bt894.b(p1);
        this.dF = "NetworkEngine";
        this.bU = new ae1028();
        this.dF = "StatsHandler";
        this.bV = new bv896();
        this.dF = "ModEngine";
        this.bW = new a1018();
        this.bW.j();
        this.bW.e();
        if (this.eg) {
            this.bW.f();
        }
        this.dF = "CommandController";
        this.cc = new c904();
        this.dF = "GameSaver";
        this.bX = new aj803();
        this.dF = "ReplayEngine";
        this.bY = new bp890();
        this.dF = "UnitGeoIndex";
        this.bZ = new c738();
        this.dF = "Precalculating map fog";
        b326.a();
        this.dF = "ScorchMark.load";
        n350.b();
        this.dF = "Projectile.load";
        f342.b();
        this.dF = "Emitter.load";
        f922.b();
        this.dF = "Unit.loadAllUnits";
        long loadAllUnitsStart = cf910.a();
        ce454.bp();
        cf910.a("loadAllUnits took:", loadAllUnitsStart);
        this.dF = "Loading custom unit data";
        long customUnitsStart = cf910.a();
        ag500.e();
        this.dF = "getAllUnitsChecksum";
        cf910.a("CustomUnits took:", customUnitsStart);
        long checksumStart = cf910.a();
        this.c = ce454.bt();
        cf910.a("allUnitsChecksum took:", checksumStart);
        this.y = new Paint();
        this.y.setARGB(50, 255, 255, 255);
        System.gc();
        this.bf = true;
        k1104.c("Init completed");
        cf910.a("Loading took:", startTime);
        Object ignored_cg911_2 = cg911.C;
        long mapDataStart = cf910.a();
        this.dF = "Loading map data";
        if (!k1104.ax) {
            this.q();
        }
        cf910.a("loadAMenuMap took:", mapDataStart);
        this.dF = "Last setup";
        if (k1104.as && !k1104.aR) {
            if (k1104.dU != null) {
                k1104.b("setupANRWatchDog: activeANRWatchDog!=null");
            } else {
                e1340 anrWatchDog = new e1340(4000);
                k1104.dU = anrWatchDog;
                anrWatchDog.a = new r1313();
                k1104.dU.start();
                k1104.b("setupANRWatchDog: running");
            }
        }
        ae1028 networkEngine = this.bU;
        String forgeId = null;
        if (k1104.X()) {
            i345 gameObj = (i345) k1104.t();
            forgeId = gameObj.an();
        }
        networkEngine.bi = forgeId;
        networkEngine.bh = true;
        this.dF = "init complete";
        if (i345.aB) {
            cj459.s();
            System.exit(0);
        }
        if (i345.aC) {
            cj459.r();
            System.exit(0);
        }
        this.bg = true;
    }
}
