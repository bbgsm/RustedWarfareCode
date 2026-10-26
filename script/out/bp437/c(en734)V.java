private strictfp void c(com.corrodinggames.rts.game.units.en734 p1) {
    com.corrodinggames.rts.game.units.a.c360 v0 = p1.c;
    if (v0 == null) {
        as();
        p1 = null;
    }
    if (p1 != null) {
        com.corrodinggames.rts.game.units.eo735 v0Eo = com.corrodinggames.rts.game.units.eo735.p;
        com.corrodinggames.rts.game.units.a.c360 v0C = p1.c;
        com.corrodinggames.rts.game.units.a.s376 v0S = a(v0C);
        T();
        if (v0S == null) {
            StringBuilder v0Sb = new StringBuilder("Failed to find action:");
            com.corrodinggames.rts.game.units.a.c360 v1C = p1.c;
            String v1S = v1C.b;
            v0Sb.append(v1S);
            String v0Str = v0Sb.toString();
            a(v0Str);
        } else {
            android.graphics.PointF v1 = new android.graphics.PointF(p1.e, p1.f);
            a(v0S, false, v1, p1.h);
        }
        as();
    }
}
