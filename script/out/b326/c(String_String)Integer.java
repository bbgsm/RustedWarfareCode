private strictfp Integer c(String p1, String p2) {
    Integer v0 = null;
    int v2 = 0;
    while (v2 < this.t.size()) {
        com.corrodinggames.rts.game.b.l336 element = (com.corrodinggames.rts.game.b.l336) this.t.get(v2);
        java.util.Iterator iterator = element.t.entrySet().iterator();
        while (iterator.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) iterator.next();
            Integer key = (Integer) entry.getKey();
            java.util.Properties properties = (java.util.Properties) entry.getValue();
            String value = properties.getProperty(p1);
            if (value != null && value.equals(p2)) {
                v0 = key;
                break;
            }
        }
        if (v0 != null) {
            return v0;
        }
        v2++;
    }
    return v0;
}
