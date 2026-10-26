public static void loadSinglePlayerMapRaw(String p0, boolean p1, int p2, int p3, boolean p4, boolean p5) {
    com.corrodinggames.rts.gameFramework.k1104 v7 = com.corrodinggames.rts.gameFramework.k1104.t();
    v7.bP.d();
    if (p1 || p5) {
        v7.C();
        synchronized (v7) {
            v7.dj = null;
            v7.di = p0;

            int v0 = com.corrodinggames.rts.game.p352.c - 1;

            int v2 = com.corrodinggames.rts.appFramework.d84.a(p0);

            String v3 = "Max teams on map: " + p0 + " = " + v2;
            com.corrodinggames.rts.gameFramework.k1104.d(v3);

            int v6;
            if (v2 > 0 && v2 - 1 < v0) {
                v6 = v2 - 1;
            } else {
                v6 = v0;
            }

            com.corrodinggames.rts.game.p352.x();

            com.corrodinggames.rts.game.e341 v0Obj = new com.corrodinggames.rts.game.e341(0);
            v7.bp = v0Obj;
            v7.bp.w = "Player";

            int v0_counter = 0;
            int v2_loop = 0;

            while (v2_loop <= 1) {
                int v5 = 1;
                while (v5 <= v6) {
                    boolean v3_flag = (v5 % 2 == 0) || (v2_loop == 1);
                    if (v0_counter < p3 && v3_flag) {
                        com.corrodinggames.rts.game.p352 v3_obj = com.corrodinggames.rts.game.p352.i(v5);
                        if (v3_obj == null) {
                            com.corrodinggames.rts.game.a.a296 v3_new = new com.corrodinggames.rts.game.a.a296(v5);
                            v3_new.w = "AI";
                            v3_new.s = 0;
                            v0_counter++;
                        }
                    }
                    v5++;
                }
                v2_loop++;
            }

            String alliesMsg = "Allies: " + v0_counter + "/" + p3;
            com.corrodinggames.rts.gameFramework.k1104.d(alliesMsg);

            v0_counter = 0;
            v2_loop = 0;

            while (v2_loop <= 1) {
                int v5 = 1;
                while (v5 <= v6) {
                    boolean v3_flag = (v5 % 2 == 0) || (v2_loop == 1);
                    if (!p4) {}
                    int v8 = p2 - p3;
                    if (v0_counter < v8 && v3_flag) {
                        com.corrodinggames.rts.game.p352 v3_obj = com.corrodinggames.rts.game.p352.i(v5);
                        if (v3_obj == null) {
                            com.corrodinggames.rts.game.a.a296 v3_new = new com.corrodinggames.rts.game.a.a296(v5);
                            v3_new.w = "AI";
                            v0_counter++;
                            if (!p4) {
                                v3_new.s = 1;
                            }
                        }
                    }
                    v5++;
                }
                v2_loop++;
            }

            v7.bU.B();

            if (!p5) {
                v7.a(false, com.corrodinggames.rts.gameFramework.ac796.b);
            }
        }
    } else {
        v7.C();
        synchronized (v7) {
            v7.dj = null;
            v7.di = p0;
        }
        if (!p5) {
            v7.a(true, com.corrodinggames.rts.gameFramework.ac796.b);
        }
    }
}
