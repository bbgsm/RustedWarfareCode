public final strictfp void d(float p1) {
    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (com.corrodinggames.rts.game.b.b326.a) {
        this.ar += p1;
        if (this.ar > 60.0f) {
            this.ar = 0.0f;
            if (this.aq > 0L) {
                com.corrodinggames.rts.gameFramework.k1104.d("seeThoughFogOfWarTimes: " + com.corrodinggames.rts.gameFramework.cf910.b((double) this.aq));
                this.aq = 0L;
            }
            if (this.aq < 0L) {
                com.corrodinggames.rts.gameFramework.k1104.d("seeThoughFogOfWarTimes negative: " + com.corrodinggames.rts.gameFramework.cf910.b((double) this.aq));
                this.aq = 0L;
            }
        }
    }
    if (this.F && this.G) {
        this.h();
        this.as += p1;
        if (this.as > 260.0f) {
            this.as = 0.0f;
            com.corrodinggames.rts.gameFramework.utility.v1357 unitList = com.corrodinggames.rts.game.units.ce454.et;
            com.corrodinggames.rts.gameFramework.ah801[] units = unitList.c;
            int unitCount = com.corrodinggames.rts.gameFramework.ah801.et.size();
            boolean anyProcessed = false;
            for (int mapIndex = 0; mapIndex < com.corrodinggames.rts.game.p352.c; mapIndex++) {
                com.corrodinggames.rts.game.p352 map = com.corrodinggames.rts.game.p352.i(mapIndex);
                if (map != null && !map.J) {
                    for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                        com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                        if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                            com.corrodinggames.rts.game.units.bp437 bp = (com.corrodinggames.rts.game.units.bp437) obj;
                            if (bp.bq()) {
                                bp.g(map);
                            }
                        }
                    }
                    if (map.Q == null) {
                        com.corrodinggames.rts.gameFramework.k1104.b("fogOfWar_map==null for:" + mapIndex);
                    }
                    boolean doNotify = map.m();
                    byte[][] fogMap = map.Q;
                    byte[][] thisFogMap = this.O;
                    boolean changedThisMap = false;
                    for (int y = 0; y < this.D; y++) {
                        for (int x = 0; x < this.E; x++) {
                            if (fogMap[y][x] < 5) {
                                fogMap[y][x] = 5;
                                if (doNotify) {
                                    com.corrodinggames.rts.game.b.b326.am.a(y, x);
                                    thisFogMap[y][x] = 127;
                                    changedThisMap = true;
                                }
                            }
                        }
                    }
                    if (changedThisMap) {
                        v6.bT.O = true;
                    }
                    anyProcessed = true;
                }
            }
            for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                    com.corrodinggames.rts.game.units.bp437 bp = (com.corrodinggames.rts.game.units.bp437) obj;
                    if (!bp.bX) {
                        bp.a(false);
                    }
                }
            }
            if (anyProcessed) {
                for (int unitIdx = 0; unitIdx < unitCount; unitIdx++) {
                    com.corrodinggames.rts.gameFramework.ah801 obj = units[unitIdx];
                    if (obj instanceof com.corrodinggames.rts.game.units.bp437) {
                        com.corrodinggames.rts.game.units.bp437 bpUnit = (com.corrodinggames.rts.game.units.bp437) obj;
                        if (bpUnit.bq()) {
                            com.corrodinggames.rts.gameFramework.k1104 game = com.corrodinggames.rts.gameFramework.k1104.t();
                            com.corrodinggames.rts.game.p352 currentMap = game.bp;
                            if (currentMap != null && bpUnit.bZ != currentMap && currentMap.l >= 0 && currentMap.l < com.corrodinggames.rts.game.p352.c) {
                                com.corrodinggames.rts.game.units.cf455 slot = bpUnit.dH[currentMap.l];
                                if (slot.c != null && slot.c.c) {
                                    slot.c = null;
                                }
                                if (slot.c == null && slot.a && !bpUnit.d(currentMap)) {
                                    com.corrodinggames.rts.gameFramework.d.a917 newData = new com.corrodinggames.rts.gameFramework.d.a917();
                                    slot.c = newData;
                                    newData.d = bpUnit.q();
                                    newData.g = bpUnit.eq;
                                    newData.h = bpUnit.er;
                                    newData.n = false;
                                    newData.e = bpUnit.bZ;
                                    newData.f = slot.b;
                                    newData.j = currentMap;
                                    newData.u = bpUnit.d_();
                                    newData.v = bpUnit;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
