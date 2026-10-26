private com.corrodinggames.rts.gameFramework.n.a1285 b(String p1) {
    String v1 = p1.trim();
    java.util.Iterator v2 = this.J.iterator();
    com.corrodinggames.rts.gameFramework.n.a1285 v0;
    while (true) {
        if (!v2.hasNext()) {
            v0 = null;
            break;
        }
        v0 = (com.corrodinggames.rts.gameFramework.n.a1285) v2.next();
        if (v0.b != null) {
            if (v0.b.equalsIgnoreCase(v1)) {
                return v0;
            }
        }
    }
    return v0;
}
