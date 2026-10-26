public final com.corrodinggames.rts.game.units.custom.bu555 a(String p1, String p2, String p3, boolean p4) {
    String v0 = p4 ? p(p1, p2) : a(p1, p2, null);
    if (v0 == null) {
        return null;
    }
    p3 = v0;
    v0 = com.corrodinggames.rts.gameFramework.utility.ae1325.e(p3);
    com.corrodinggames.rts.game.units.custom.bu555 v2 = new com.corrodinggames.rts.game.units.custom.bu555();
    if (v0 != null && v0.startsWith("i:")) {
        v2.e = v0.substring(2).trim();
        com.corrodinggames.rts.gameFramework.h.a1015.a(v2.e, new Object[0]);
        return v2;
    }
    java.util.ArrayList<com.corrodinggames.rts.game.units.custom.bv556> v3 = new java.util.ArrayList<>();
    com.corrodinggames.rts.game.units.custom.bv556 v4 = new com.corrodinggames.rts.game.units.custom.bv556();
    v4.a = null;
    v4.b = v0;
    v3.add(v4);
    String v1 = p2 + "_";
    com.corrodinggames.rts.gameFramework.utility.p1351 v5 = j(p1, v1);
    java.util.Iterator<String> v6 = v5.iterator();
    while (v6.hasNext()) {
        String v7 = v6.next();
        String v8 = v7.substring(v1.length()).toLowerCase(java.util.Locale.ROOT);
        String v9 = p4 ? q(p1, v7) : c(p1, v7);
        String v10 = com.corrodinggames.rts.gameFramework.utility.ae1325.e(v9);
        com.corrodinggames.rts.game.units.custom.bv556 v11 = new com.corrodinggames.rts.game.units.custom.bv556();
        v11.a = v8;
        v11.b = v10;
        v3.add(v11);
    }
    v2.b = v3.toArray(new com.corrodinggames.rts.game.units.custom.bv556[0]);
    v2.b();
    return v2;
}
