public final PointF e(String p1, String p2) {
    String v1 = this.a(p1, p2, true);
    if (v1 == null) {
        return null;
    }
    if (v1.equalsIgnoreCase("NONE")) {
        return null;
    }
    try {
        String[] v2 = v1.split(",");
        if (v2.length != 2) {
            throw new NumberFormatException("Got:" + v2.length + " elements expected 2");
        }
        PointF v0 = new PointF();
        v0.x = Float.parseFloat(v2[0]);
        v0.y = Float.parseFloat(v2[1]);
        return v0;
    } catch (NumberFormatException ignored) {
        throw new RuntimeException("Failed to read point:" + v1 + " in key:" + p2 + " section:" + p1 + " expected format: x,y");
    }
}
