private String b(String p1, String p2, boolean p3) {
    Map map = (Map) this.a.get(p1);
    if (map == null) {
        if (p3) {
            return null;
        }
        throw new RuntimeException("Could not find section: [" + p1 + "] in configuration file");
    }
    String str = (String) map.get(p2);
    if (str == null) {
        if (p3) {
            return null;
        }
        throw new RuntimeException("Could not find: " + p2 + " in configuration file under [" + p1 + "]");
    }
    if (str.equals("IGNORE")) {
        if (p3) {
            return null;
        }
        throw new RuntimeException("Key: " + p2 + " under [" + p1 + "], is set to IGNORE but is required and has no default");
    }
    return str;
}
