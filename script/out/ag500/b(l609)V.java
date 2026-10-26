private static void b(com.corrodinggames.rts.game.units.custom.l609 p0) {
    int v1 = 0;
    com.corrodinggames.rts.game.units.custom.bt554[] v8 = p0.ax;
    int v6 = 0;
    while (v6 < v8.length) {
        com.corrodinggames.rts.game.units.custom.bt554 v9 = v8[v6];
        float v3 = -1.0f;
        com.corrodinggames.rts.game.units.custom.bt554 v2 = null;
        float v7;
        if (v9.o) {
            v7 = 0.1f;
        } else {
            v7 = 1.0f;
        }
        int v0 = v1;
        while (v0 < v8.length) {
            com.corrodinggames.rts.game.units.custom.bt554 v5 = v8[v0];
            if (v9 != v5 && !v5.l) {
                float v4 = com.corrodinggames.rts.gameFramework.f1006.a(v9.d * v7, v9.e, v5.d * v7, v5.e);
                if (v2 == null || v4 < v3) {
                    v3 = v4;
                    v2 = v5;
                }
            }
            v0++;
        }
        float v0_float = com.corrodinggames.rts.gameFramework.f1006.a(v3);
        float v2_float = 2.0f + v0_float;
        java.util.ArrayList v3_list = new java.util.ArrayList();
        v0 = v1;
        while (v0 < v8.length) {
            com.corrodinggames.rts.game.units.custom.bt554 v4 = v8[v0];
            if (v9 != v4 && !v4.l) {
                float v5 = com.corrodinggames.rts.gameFramework.f1006.a(v9.d * v7, v9.e, v4.d * v7, v4.e);
                float v10 = v2_float * v2_float;
                if (v5 <= v10) {
                    v3_list.add(Integer.valueOf(v4.a));
                }
            }
            v0++;
        }
        v9.S = new int[v3_list.size()];
        int v2_idx = v1;
        while (v2_idx < v3_list.size()) {
            v9.S[v2_idx] = ((Integer) v3_list.get(v2_idx)).intValue();
            v2_idx++;
        }
        v6++;
    }
}
