public final com.corrodinggames.rts.gameFramework.utility.p1351 j(String p1, String p2) {
    com.corrodinggames.rts.gameFramework.utility.p1351 v2 = new com.corrodinggames.rts.gameFramework.utility.p1351();
    java.util.Map v0 = (java.util.Map) this.a.get(p1);
    if (v0 != null) {
        java.util.Iterator v3 = v0.keySet().iterator();
        while (v3.hasNext()) {
            String v1 = (String) v3.next();
            if (v1.startsWith(p2) && !"IGNORE".equals(v0.get(v1))) {
                v2.add(v1);
            }
        }
    }
    return v2;
}
