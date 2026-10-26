public final void a(com.corrodinggames.rts.gameFramework.utility.ae1325 p1) {
    if (this.g) {
        throw new RuntimeException("locked changes");
    }
    for (Object sectionObj : p1.a.keySet()) {
        String section = (String) sectionObj;
        LinkedHashMap map1 = (LinkedHashMap) p1.a.get(section);
        if (this.a(section, "@copyFrom_skipThisSection", Boolean.FALSE).booleanValue()) {
            continue;
        }
        LinkedHashMap map2 = (LinkedHashMap) this.a.get(section);
        if (map2 == null) {
            map2 = new LinkedHashMap();
            this.a.put(section, map2);
        }
        for (Object innerKeyObj : map1.keySet()) {
            String innerKey = (String) innerKeyObj;
            if (map2.get(innerKey) == null) {
                map2.put(innerKey, map1.get(innerKey));
            }
        }
    }
}
