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
