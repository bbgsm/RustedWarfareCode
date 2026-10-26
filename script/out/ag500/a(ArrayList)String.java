private static String a(java.util.ArrayList p0) {
    java.util.HashMap<com.corrodinggames.rts.gameFramework.i.b1019, Integer> map = new java.util.HashMap<>();
    java.util.Iterator iterator = p0.iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.custom.l609 unit = (com.corrodinggames.rts.game.units.custom.l609) iterator.next();
        com.corrodinggames.rts.gameFramework.i.b1019 key = unit.J;
        if (key != null) {
            Integer count = (Integer) map.get(key);
            if (count == null) {
                count = Integer.valueOf(1);
            } else {
                count = Integer.valueOf(count.intValue() + 1);
            }
            map.put(key, count);
        }
    }
    String result = "";
    java.util.Iterator keyIterator = map.keySet().iterator();
    while (keyIterator.hasNext()) {
        com.corrodinggames.rts.gameFramework.i.b1019 key = (com.corrodinggames.rts.gameFramework.i.b1019) keyIterator.next();
        Integer count = (Integer) map.get(key);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(result);
        sb.append(key.a());
        sb.append("(unitCount: ");
        sb.append(count);
        if (key.i()) {
            sb.append("");
        } else {
            sb.append("[disabled]");
        }
        sb.append("), ");
        result = sb.toString();
    }
    return result;
}
