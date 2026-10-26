public final com.corrodinggames.rts.gameFramework.utility.p1351 l(String p1, String p2) {
    com.corrodinggames.rts.gameFramework.utility.p1351 v1 = new com.corrodinggames.rts.gameFramework.utility.p1351();
    java.util.Set<String> set = this.a.keySet();
    java.util.Iterator<String> iterator = set.iterator();
    while (iterator.hasNext()) {
        String key = iterator.next();
        if (key.startsWith(p1)) {
            if (!key.startsWith(p2)) {
                continue;
            }
        }
        if (this.d(key)) {
            v1.add(key);
        }
    }
    return v1;
}
