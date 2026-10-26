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
