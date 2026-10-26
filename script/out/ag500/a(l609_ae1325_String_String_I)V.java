private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2, String p3, int p4) {
    String v4 = null;
    if (p4 > 10) {
        throw new com.corrodinggames.rts.game.units.custom.ch575("@copyFromSection can only be 10 levels deep, maybe you have a loop?");
    }
    String copyFromValue = p1.a(p3, "@copyFromSection", v4);
    if (copyFromValue == null || copyFromValue.equals("")) {
        return;
    }
    String[] sections = copyFromValue.split(",");
    java.util.List list = java.util.Arrays.asList(sections);
    java.util.Collections.reverse(list);
    int length = sections.length;
    for (int i = 0; i < length; i++) {
        String section = sections[i];
        String trimmedSection = section.trim();
        if (!trimmedSection.equals("")) {
            com.corrodinggames.rts.gameFramework.utility.p1351 keys = p1.j(trimmedSection, "");
            if (keys.size() == 0) {
                throw new com.corrodinggames.rts.game.units.custom.ch575("[" + p3 + "]@copyFromSection: Could not find keys in target section: " + trimmedSection);
            }
            java.util.Iterator iterator = keys.iterator();
            while (iterator.hasNext()) {
                String key = (String) iterator.next();
                java.util.Map sourceMap = (java.util.Map) p1.a.get(trimmedSection);
                String value;
                if (sourceMap == null) {
                    value = null;
                } else {
                    value = (String) sourceMap.get(key);
                }
                if (value != null) {
                    if (p1.g) {
                        throw new RuntimeException("locked changes");
                    }
                    java.util.LinkedHashMap targetMap = (java.util.LinkedHashMap) p1.a.get(p2);
                    if (targetMap == null) {
                        targetMap = new java.util.LinkedHashMap();
                        p1.a.put(p2, targetMap);
                    }
                    if (targetMap.get(key) == null) {
                        targetMap.put(key, value);
                    }
                }
            }
            com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, trimmedSection, p4 + 1);
        }
    }
}
