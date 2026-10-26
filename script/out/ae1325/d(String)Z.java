public final boolean d(String p1) {
    boolean result = false;
    java.util.Map map = (java.util.Map) this.a.get(p1);
    if (map == null) {
        return result;
    }
    java.util.Iterator iterator = map.keySet().iterator();
    while (iterator.hasNext()) {
        String key = (String) iterator.next();
        if (key != null && !key.startsWith("@")) {
            return true;
        }
    }
    return result;
}
