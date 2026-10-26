private static void a(String p0, Exception p1, com.corrodinggames.rts.gameFramework.i.b1019 p2) {
    com.corrodinggames.rts.gameFramework.k1104.b("Error while loading unit:" + String.valueOf(p0));
    com.corrodinggames.rts.gameFramework.k1104.b(p1);

    if (p0 == null) {
        p0 = "<null>";
    }

    String v0;
    if (p1 instanceof com.corrodinggames.rts.game.units.custom.ch575) {
        v0 = p1.getMessage();
    } else {
        v0 = com.corrodinggames.rts.gameFramework.f1006.a(p1);
    }

    if (v0 == null) {
        v0 = "<No error cause>";
    }

    if (!v0.contains("unit config file")) {
        v0 = v0.replace(p0 + ": ", "");
        v0 = v0.replace(p0, "");
    }

    String v1 = com.corrodinggames.rts.game.units.custom.ag500.a(p2, p0);

    if (p2 != null) {
        v1 = "Error loading unit: " + v1 + ": \n" + v0;
    } else {
        if (v0.contains("Error loading core unit")) {
            v1 = v0;
        } else {
            v1 = "Error loading core unit: " + v1 + ": \n" + v0 + " (This might be from placing a mod in 'assets/', they should go under 'mods/')";
        }
    }

    if (p1 instanceof com.corrodinggames.rts.game.units.custom.ch575) {
        com.corrodinggames.rts.game.units.custom.ch575 ch = (com.corrodinggames.rts.game.units.custom.ch575) p1;
        if (ch.c != null || ch.d != null) {
            v1 = v1 + " (section:" + ch.c + ", key:" + ch.d + ")";
        }
    }

    if (com.corrodinggames.rts.game.units.custom.ag500.s != null) {
        com.corrodinggames.rts.game.units.custom.ag500.s = v1;
    }

    if (p2 != null) {
        p2.a(v1);
        return;
    }

    try {
        Thread.sleep(2L);
    } catch (InterruptedException e) {
    }
    throw new RuntimeException(v1, p1);
}
