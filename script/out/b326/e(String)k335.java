private strictfp com.corrodinggames.rts.game.b.k335 e(String p1) {
    java.util.Iterator v1 = this.Q.iterator();
    while (v1.hasNext()) {
        com.corrodinggames.rts.game.b.k335 v0 = (com.corrodinggames.rts.game.b.k335) v1.next();
        if (p1.equalsIgnoreCase(v0.b)) {
            return v0;
        }
    }
    return null;
}
