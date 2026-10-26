public static float a(String p0, boolean p1, String p2, String p3) {
    float multiplier;
    boolean endsWithS;
    if (p0.endsWith("s")) {
        p0 = p0.substring(0, p0.length() - 1);
        multiplier = 60.0f;
        endsWithS = true;
    } else {
        multiplier = 1.0f;
        endsWithS = false;
    }
    try {
        float value = Float.parseFloat(p0) * multiplier;
        if (p1 && endsWithS) {
            value = 1.0f / value;
        }
        return value;
    } catch (NumberFormatException e) {
        throw new RuntimeException("[" + p2 + "]" + p3 + ": Failed to read time:" + p0 + " expected a float with optional 's' postfix");
    }
}
