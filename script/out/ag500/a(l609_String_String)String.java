private static String a(com.corrodinggames.rts.game.units.custom.l609 p0, String p1, String p2) {
    if (p2.startsWith("SHARED:")) {
        p2 = p2.substring(7);
        p1 = "units/shared/common.ini";
    }
    if (p2.startsWith("CORE:")) {
        p2 = p2.substring(5);
        p1 = "units/common.ini";
    }
    if (p2.startsWith("ROOT:")) {
        p2 = p2.substring(5);
        if (p0.J == null) {
            p1 = "units/common.ini";
        } else {
            p1 = p0.J.o + "/common.ini";
        }
    }
    String v0 = com.corrodinggames.rts.gameFramework.f1006.j(p1) + "/";
    while (p2.startsWith("/") || p2.startsWith("\\")) {
        p2 = p2.substring(1);
    }
    return v0 + p2;
}
