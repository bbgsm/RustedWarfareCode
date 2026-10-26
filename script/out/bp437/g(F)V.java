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
