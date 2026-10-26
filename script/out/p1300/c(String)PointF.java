private android.graphics.PointF c(String p1) {
    com.corrodinggames.rts.gameFramework.k1104 k1104 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.b.b326 b326 = k1104.bI;
    com.corrodinggames.rts.game.b.k335 k335 = b326.R;
    if (k335 == null) {
        return null;
    }
    java.util.Iterator iterator = k335.c.iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.b.a325 a = (com.corrodinggames.rts.game.b.a325) iterator.next();
        if ("point".equalsIgnoreCase(a.d) && a.c != null && a.c.equalsIgnoreCase(p1)) {
            this.K.set(a.e, a.f);
            return this.K;
        }
    }
    return null;
}
