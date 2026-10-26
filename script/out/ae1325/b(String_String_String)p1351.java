public final com.corrodinggames.rts.gameFramework.utility.p1351 b(String p1, String p2, String p3) {
    com.corrodinggames.rts.gameFramework.utility.p1351 v1 = new com.corrodinggames.rts.gameFramework.utility.p1351();
    java.util.Map map = (java.util.Map) this.a.get(p1);
    if (map != null) {
        java.util.Iterator v2 = map.keySet().iterator();
        while (v2.hasNext()) {
            String key = (String) v2.next();
            if (!key.startsWith(p2) || key.startsWith(p3)) {
                v1.add(key);
            }
        }
    }
    return v1;
}
