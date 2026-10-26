private static e1216 a(String p0, String p1, boolean p2, l609 p3) {
    e1216 result = null;

    if (p1 == null) {
        return null;
    }

    if (p1.equalsIgnoreCase("NONE")) {
        return null;
    }

    if (p1.equals("")) {
        return null;
    }

    int shadowFlag = 0;
    if (p1.startsWith("SHADOW:")) {
        p1 = p1.substring(7);
        shadowFlag = 1;
    }

    if (p1.startsWith("SHARED:")) {
        p1 = p1.substring(7);
        p0 = "units/shared/common.ini";
    }

    if (p1.startsWith("CORE:")) {
        p1 = p1.substring(5);
        p0 = "units/common.ini";
    }

    if (p1.startsWith("ROOT:")) {
        p1 = p1.substring(5);
        if (p3.J == null) {
            p0 = "units/common.ini";
        } else {
            p0 = p3.J.o + "/common.ini";
        }
    }

    int finalShadowFlag = 1;
    if (p1.startsWith("SHADOW:")) {
        p1 = p1.substring(7);
    } else {
        finalShadowFlag = shadowFlag;
    }

    k1104 k1104Instance = k1104.t();

    String v4 = f1006.j(p0) + "/";

    String v5 = "[" + p2 + "," + finalShadowFlag + "]" + v4 + p1;

    result = ag500.b(v5);
    if (result != null) {
        return result;
    }

    o1350 v6 = ag500.c(v4, p1, p3);

    int v2 = 0;
    if (ag500.e != null) {
        v2 = ag500.e.G;
    }

    if (v2 > 5) {
        k1104.d("Fast failing to oom image for this mod");
        result = k1104Instance.bL.o();
    } else {
        long v8 = cf910.a();
        try {
            result = k1104Instance.bL.a(v6, true);
            ag500.a(v8, ah501.a);
            if (ag500.e != null && !ag500.e.x) {
                boolean unused = k1104.aW;
            }
        } catch (RuntimeException e) {
            k1104.d("imageStream:" + String.valueOf(v6));
            throw new RuntimeException("Error decode image from: " + a926.d(v4 + p1), e);
        }
    }

    try {
        v6.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    if (result == null) {
        throw new RuntimeException("Failed to decode image: " + a926.e(v4 + p1));
    }

    result.a(p2);

    if (finalShadowFlag != 0) {
        result = ce454.a(result, result.p, result.q);
    }

    ag500.a(result);
    ag500.a(v5, result);

    return result;
}
