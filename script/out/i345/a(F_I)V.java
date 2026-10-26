public final strictfp void a(float p1, int p2) {
    Object v2 = this.ai;
    synchronized(v2) {
        int v0 = this.bu;
        if (v0 == 2 || (v0 % 10000 == 0 && v0 != 0)) {
            this.ah();
        }

        if (i345.aI && !this.aP && i345.X() && Debug.getNativeHeapAllocatedSize() > 0xc800000L) {
            String msg = new StringBuilder("getNativeHeapAllocatedSize: ")
                .append(f1006.d((int) Debug.getNativeHeapAllocatedSize()))
                .toString();
            k1104.c(msg);
            this.aP = true;
        }

        if (k1104.dZ && !k1104.ea) {
            k1104.ea = true;
            String v0Str = "Warning game has less than 5mb of free space remaining. A larger battle might cause a crash. ";
            int v1Int = this.bW.a1018.g();
            if (v1Int > 1) {
                v0Str = new StringBuilder()
                    .append("Warning game has less than 5mb of free space remaining. A larger battle might cause a crash. ")
                    .append("This is often caused by large mods, you currently have: ")
                    .append(v1Int)
                    .append(" mods loaded. ")
                    .toString();
            }
            this.b("Warning: Low memory detected", v0Str);
        }

        if (!k1104.dX && k1104.dY != null) {
            k1104.c("Showing out of memory message");
            k1104.dX = true;
            String v0Str = "trying to load data";
            if (k1104.dY == ae798.a) {
                v0Str = "trying to load game textures";
            } else if (k1104.dY == ae798.b) {
                v0Str = "trying to create a texture";
            } else if (k1104.dY == ae798.c) {
                v0Str = "trying to colour new texture";
            } else if (k1104.dY == ae798.d) {
                v0Str = "trying to create texture buffer for on-screen fog fading";
            } else if (k1104.dY == ae798.e) {
                v0Str = "trying to create game fonts";
            } else if (k1104.dY == ae798.f) {
                v0Str = "trying to load game sounds";
            } else if (k1104.dY == ae798.g) {
                v0Str = "trying to load UI textures";
            }
            v0Str = new StringBuilder("The game ran out of memory ").append(v0Str).append(". ").toString();
            int v1Int = this.bW.a1018.g();
            if (v1Int > 1) {
                v0Str = new StringBuilder(v0Str)
                    .append("This is often caused by large mods, you currently have: ")
                    .append(v1Int)
                    .append(" mods. ")
                    .toString();
            }
            if (k1104.Z() && !i345.b) {
                v0Str = new StringBuilder(v0Str)
                    .append("You are also using the 32 bit version, switching to the 64 bit version might help. ")
                    .toString();
            }
            this.b("Warning: Out Of Memory", v0Str);
        }

        this.ed.a();
        this.ee.b();
        this.bU.k();
        this.an = this.ao;

        if (this.an.getSurfaceExists()) {
            while (this.j.peek() != null) {
                ((Runnable) this.j.poll()).run();
            }
            if (!this.bD) {
                if (!this.ap) {
                    Log.e("RustedWarfare", "game running without a loaded level!!!");
                    InGameActivity v0Activity = this.an.getInGameActivity();
                    if (v0Activity != null) {
                        if (!v0Activity.isFinishing()) {
                            v0Activity.finish();
                        } else {
                            k1104.b("stopAndClose: inGameActivity is isFinishing");
                        }
                    } else {
                        k1104.b("stopAndClose: Error getInGameActivity==null");
                    }
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                return;
            }

            this.bn = true;
            if (!this.E && this.bu > 5) {
                this.E = true;
                boolean v0Flag = this.bN.numIncompleteLoadAttempts > 1;
                this.bN.numIncompleteLoadAttempts = 0;
                if (this.eg) {
                    this.bN.numLoadsSinceRunningGameOrNormalExit = 0;
                }
                this.bN.save();
                if (this.eg && (this.eh || this.bW.a1018.c() > 0)) {
                    if (this.ei != null) {
                        this.b("Safe mode", "Started game in safe mode due to " + this.ei + ". Mods have been disabled.");
                    } else if (v0Flag) {
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

            aj803 v0bX = this.bX;
            k1104 v1Main = k1104.t();
            if (aj803.a()) {
                if (v0bX.d == -9999) {
                    v0bX.c = v1Main.bv;
                    v0bX.d = v1Main.bv;
                }
                if (v0bX.d + 300000 < v1Main.bv) {
                    v0bX.d = v1Main.bv;
                    long v0long = cf910.a();
                    aj803.b("autosave", true);
                    float v0float = cf910.a(v0long);
                    double v0double = v0float;
                    String autosaveMsg = new StringBuilder("Autosaved (").append(cf910.a(v0double)).append(")").toString();
                    k1104.c(autosaveMsg);
                }
            }

            float v0c = this.cS * this.cV;
            if (v0c != this.cU) {
                float v1Old = this.cX / this.cU;
                float v3Old = this.cv;
                float v4Old = this.cY / this.cU;
                float v5Old = this.cw;
                this.cU = v0c;
                this.am();
                if (this.cW) {
                    float v0New = this.cX / this.cU;
                    float v6New = this.cv;
                    float v7New = this.cY / this.cU;
                    float v8New = this.cw;
                    float v9New = this.cv;
                    float new0 = v0New + v6New - (v1Old + v3Old);
                    new0 = v9New - new0;
                    float new1 = v7New + v8New - (v4Old + v5Old);
                    new1 = this.cw - new1;
                    this.a(new0, new1);
                    this.cW = false;
                }
            }

            if (this.co != 0 || this.cp != 0) {
                float v3 = 3.0f * p1;
                float v0Move = 0.0f;
                if (this.co > 0) {
                    v0Move = f1006.f(this.co, v3);
                } else if (this.co < 0) {
                    v0Move = f1006.e(this.co, -v3);
                }
                float v1Move = 0.15f * this.co + v0Move;

                float v0MoveY = 0.0f;
                if (this.cp > 0) {
                    v0MoveY = f1006.f(this.cp, v3);
                } else if (this.cp < 0) {
                    v0MoveY = f1006.e(this.cp, -v3);
                }
                float v1MoveY = 0.15f * this.cp + v0MoveY;

                if (f1006.d(this.co) <= v3) {
                    v1Move = this.co;
                    this.co = 0;
                } else {
                    this.co -= v1Move;
                }

                if (f1006.d(this.cp) <= v3) {
                    v1MoveY = this.cp;
                    this.cp = 0;
                } else {
                    this.cp -= v1MoveY;
                }

                this.cv += v1Move;
                this.cw += v1MoveY;
                this.a(this.cv, this.cw);
                this.H();
            }

            if (this.cO != this.cP) {
                this.am();
            }

            float v0max = p1;
            if (p1 > 3.0f) {
                v0max = 3.0f;
            }
            if (v0max < 0) {
                v0max = 0;
            }
            float v1Speed = (this.br >= 0) ? this.br : v0max;
            this.bx = (int)(this.bx + 16.666666f * v1Speed);

            if (this.ap && !this.bE) {
                if (this.af == null) {
                    ce454 v0unit = i345.a(this.bp);
                    if (v0unit != null) {
                        this.af = v0unit;
                    } else {
                        this.af = i345.a(null);
                    }
                }
                if (this.ae == this.af) {
                    this.af = null;
                }
                if (this.ae == null) {
                    this.ae = this.af;
                    this.af = null;
                }
                if (this.ag != 0 && this.af != null) {
                    this.a(v1Speed, this.af.eq, this.af.er, this.ag * 0.5f);
                }
                if (this.ae != null) {
                    boolean v0near = this.a(v1Speed, this.ae.eq, this.ae.er, (1.0f - this.ag) * 0.5f);
                    float dist = f1006.a(this.cv + this.cF, this.cw + this.cG, this.ae.eq, this.ae.er);
                    if (dist < 6400.0f) {
                        v0near = true;
                    }
                    if (v0near) {
                        this.ah = true;
                    }
                }
                if (this.ah) {
                    this.ag += 0.01f * v1Speed;
                    if (this.ag >= 1.0f) {
                        this.ag = 0;
                        this.ae = null;
                        this.ah = false;
                    }
                }
            }

            this.p += p2;
            this.q += 1;
            if (this.q >= 40) {
                if (this.p == 0) {
                    this.p = 1;
                }
                this.r = (int)((this.q * 1000) / this.p + 0.5f);
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

            this.de = f1006.a(this.de, 0.1f * v1Speed);
            this.df = f1006.a(this.df, 0.1f * v1Speed);
            this.de = f1006.b(this.de, 5.0f);
            this.df = f1006.b(this.df, 5.0f);
            this.bP.a(v1Speed);
            this.H();
            b326.c();

            if (this.bU.C) {
                float v0time = (this.bY.w != 1) ? this.bY.w * v1Speed : v1Speed;
                this.bU.a(v0time);
                if (!this.b(true) && !this.bU.aa) {
                    this.F += v0time;
                } else {
                    this.F += 0;
                }
                while (this.F > this.bU.K) {
                    if (this.bU.m()) {
                        this.bU.aa = true;
                    } else {
                        this.F -= this.bU.K;
                        this.bU.b(false);
                        if (!this.bU.aa) {
                            this.b(this.bU.K);
                        }
                    }
                }
                if (!this.bU.D) {
                    if (this.bU.ah || this.bU.af) {
                        if (this.bU.ah && this.bU.af) {
                            if (this.bu < this.bU.Z - this.bU.S - 5) {
                                ae1028.d("nearly within frame range");
                                this.bU.ah = false;
                            }
                        }
                        if (this.bu > this.bU.Z - 6) {
                            ae1028.d("we have back within frame range");
                            this.bU.ah = false;
                            this.bU.af = false;
                        }
                    }
                    if (!this.bU.af) {
                        if (this.bu < this.bU.Z - this.bU.S - 10) {
                            ae1028.d("we are slightly out of frame range, speeding up");
                            this.bU.af = true;
                        }
                    }
                    if (!this.bU.ah) {
                        if (this.bu < this.bU.Z - this.bU.S - 30) {
                            ae1028.d("we are out of frame range, fast forwarding (" + this.bu + "->" + this.bU.Z + ")");
                            this.bU.ah = true;
                        }
                    }
                    if (!this.bU.ah && this.bU.af) {
                        this.bU.ag += v1Speed;
                        if (this.bU.ag > this.bU.K * 3.0f) {
                            this.bU.ag = 0;
                            this.bU.b(true);
                            if (!this.bU.aa) {
                                this.b(this.bU.K);
                            }
                        }
                    }
                    if (this.bU.ah) {
                        this.bU.b(true);
                        if (!this.bU.aa) {
                            this.b(this.bU.K);
                        }
                    }
                    if (this.bu < this.bU.Z - 90) {
                        this.bU.b(true);
                        if (!this.bU.aa) {
                            this.b(this.bU.K);
                        }
                    }
                    if (this.bu < this.bU.Z - 120) {
                        this.bU.b(true);
                        if (!this.bU.aa) {
                            this.b(this.bU.K);
                        }
                    }
                    if (this.bu < this.bU.Z - 600) {
                        this.bU.b(true);
                        if (!this.bU.aa) {
                            this.b(this.bU.K);
                        }
                    }
                }
            } else {
                if (this.bY.t) {
                    float v0time = (this.bY.w != 1) ? this.bY.w * v1Speed : v1Speed;
                    if (this.bq != 1.0f) {
                        v0time *= this.bq;
                    }
                    if (!this.b(false)) {
                        this.F += v0time;
                    } else {
                        this.F += 0;
                    }
                    while (this.F > this.bU.K) {
                        this.F -= this.bU.K;
                        if (!this.bU.m()) {
                            this.b(this.bU.K);
                        }
                    }
                    if (this.F > 100.0f) {
                        this.F = 100.0f;
                    }
                    if (this.F < 0) {
                        this.F = 0;
                    }
                } else {
                    if (!this.b(false)) {
                        this.b(v1Speed);
                    }
                }
            }

            if (this.b(false)) {
                try {
                    Thread.sleep(2L);
                } catch (Exception e) {
                }
            }

            this.bR.f();
            this.bJ.a.clear();
            this.bK.a(v1Speed);
            if (this.bQ.ao != 0) {
                this.bQ.ao = 0;
                k1104.c("Number of controllers changed, now:" + this.bQ.ao);
            }
            a1309.a();

            if (!this.ds) {
                if (this.an.usingBasicDraw()) {
                    l1266 v0canvas = this.an.getNewCanvasLock(true);
                    this.a(v0canvas, v1Speed);
                } else {
                    ab5 v3View = this.an;
                    v3View.drawStarting(v1Speed, p2);
                    if (v3View.getDirectSurfaceRendering() && !v3View.isPaused()) {
                        Object v4sync = v3View.getGameThreadSync();
                        synchronized(v4sync) {
                            if (v3View.getDirectSurfaceRendering() && !v3View.isPaused()) {
                                l1266 v5canvas = v3View.getNewCanvasLock(true);
                                try {
                                    if (!v3View.isPaused()) {
                                        if (v5canvas != null && v5canvas.c()) {
                                            k1104.c("gameengine draw: bufferedCanvas drawn on");
                                        }
                                        if (v5canvas != null) {
                                            v5canvas.a(true);
                                        } else {
                                            k1104.e("GameEngine gameViewCanvas is null after lockCanvas - " + v3View.hashCode());
                                        }
                                        this.a(v5canvas, v1Speed);
                                        this.bL.a(null);
                                    }
                                } finally {
                                    if (v5canvas != null) {
                                        try {
                                            v3View.unlockAndReturnCanvas(v5canvas, true);
                                        } catch (IllegalArgumentException e) {
                                            e.printStackTrace();
                                            k1104.e("GameEngine catch currentGameView - " + v3View.hashCode());
                                            k1104.e("GameEngine catch currentGameView.gameThreadSync - " + v3View.getGameThreadSync().hashCode());
                                            v3View.forceSurfaceUnlockWorkaround();
                                        } catch (IllegalStateException e) {
                                            e.printStackTrace();
                                            k1104.e("GameEngine catch currentGameView - " + v3View.hashCode());
                                            k1104.e("GameEngine catch currentGameView.gameThreadSync - " + v3View.getGameThreadSync().hashCode());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    v3View.drawCompleted(v1Speed, p2);
                }
            }

            this.ds = false;
            k1104.dF = null;

            if (this.dr) {
                this.dr = false;
                String v0next = null;
                Integer v0int = i345.j(this.di);
                if (v0int != null) {
                    v0next = i345.k(this.di);
                }
                if (this.bU.C) {
                    new k347(this).start();
                    v0next = null;
                }
                if (v0next != null) {
                    k1104.c("gotoNextLevel: Loading next level: " + v0next);
                    this.di = v0next;
                    this.bP.h.a();
                    this.a(true, false, ac796.b);
                } else {
                    k1104.c("gotoNextLevel: No next level, finishing");
                    this.bD = false;
                    InGameActivity v0act = this.an.getInGameActivity();
                    if (v0act != null) {
                        v0act.finish();
                        v0act.showPCMainMenu();
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
        } else {
            return;
        }
    }
}
