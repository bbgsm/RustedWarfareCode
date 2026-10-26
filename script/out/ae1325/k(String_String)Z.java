public final boolean k(String p1, String p2) {
    Map map = (Map) this.a.get(p1);
    if (map != null) {
        for (Object obj : map.keySet()) {
            String key = (String) obj;
            if (key.startsWith(p2)) {
                return true;
            }
        }
    }
    return false;
}
