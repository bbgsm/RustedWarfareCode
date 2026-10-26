private static boolean e() {
    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.units.ce454[] v7 = com.corrodinggames.rts.game.units.ce454.bG.c;
    int v8 = com.corrodinggames.rts.game.units.ce454.bG.size();
    boolean v3 = false;
    int v5 = 0;
    while (v5 < v8) {
        com.corrodinggames.rts.game.units.ce454 v9 = v7[v5];
        if (v9.bZ == com.corrodinggames.rts.game.p352.i && v9 instanceof com.corrodinggames.rts.game.units.bp437 && v9.by() && v9.n()) {
            int v10 = com.corrodinggames.rts.game.units.ce454.bG.size();
            int v4 = 0;
            while (v4 < v10) {
                com.corrodinggames.rts.game.units.ce454 v11 = v7[v4];
                boolean v0;
                if (!v6.ac()) {
                    v0 = v11.bZ.x || v9.cr();
                } else {
                    v0 = (v11.bZ == v6.bp);
                }
                if (v11.bZ != null && v11.bZ.l >= 0) {
                    v0 = false;
                }
                if (v0 && v11.bZ != v9.bZ && v11 instanceof com.corrodinggames.rts.game.units.bp437 && v11.h() && v11.by()) {
                    float distance = com.corrodinggames.rts.gameFramework.f1006.a(v11.eq, v11.er, v9.eq, v9.er);
                    if (distance >= 28900.0f) {
                        v9.e(v11.bZ);
                        v9.cL = 60.0f;
                        v3 = true;
                        break;
                    }
                }
                v4++;
            }
        }
        v5++;
    }
    return v3;
}
