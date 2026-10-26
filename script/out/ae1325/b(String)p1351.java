public final com.corrodinggames.rts.gameFramework.utility.p1351 b(String p1) {
    com.corrodinggames.rts.gameFramework.utility.p1351 v1 = new com.corrodinggames.rts.gameFramework.utility.p1351();
    java.util.Set v0 = this.a.keySet();
    java.util.Iterator v2 = v0.iterator();
    while (v2.hasNext()) {
        String v0String = (String) v2.next();
        if (v0String.startsWith(p1)) {
            if (this.d(v0String)) {
                v1.add(v0String);
            }
        }
    }
    return v1;
}
