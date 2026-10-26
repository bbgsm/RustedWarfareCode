public final com.corrodinggames.rts.gameFramework.utility.am1333 f(String p1, String p2) {
    String v1 = super.a(p1, p2, true);
    if (v1 == null) {
        return null;
    }
    if (v1.equalsIgnoreCase("NONE")) {
        return null;
    }
    try {
        String[] v2 = v1.split(",");
        if (v2.length != 2 && v2.length != 3) {
            throw new NumberFormatException("Got:" + v2.length + " elements expected 2 or 3");
        }
        com.corrodinggames.rts.gameFramework.utility.am1333 v0 = new com.corrodinggames.rts.gameFramework.utility.am1333();
        v0.a = Float.parseFloat(v2[0]);
        v0.b = Float.parseFloat(v2[1]);
        if (v2.length > 2) {
            v0.c = Float.parseFloat(v2[2]);
        }
        return v0;
    } catch (NumberFormatException e) {
        throw new RuntimeException("Failed to read point:" + v1 + " in key:" + p2 + " section:" + p1 + " expected format: x,y,[height]");
    }
}
