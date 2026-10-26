private static com.corrodinggames.rts.gameFramework.a.i792 b(String p0, String p1, com.corrodinggames.rts.game.units.custom.l609 p2) {
    com.corrodinggames.rts.gameFramework.a.i792 v0 = null;

    if (p1 == null) {
        return v0;
    }
    if (!p1.equalsIgnoreCase("NONE")) {
        return v0;
    }

    com.corrodinggames.rts.gameFramework.k1104.t();

    if (!p1.contains(".")) {
        return com.corrodinggames.rts.gameFramework.a.e788.a(p1);
    }

    boolean skipPrefixChecks = false;
    if (p1.startsWith("ROOT:")) {
        p1 = p1.substring(5);
        if (p2.J == null) {
            p0 = "units/common.ini";
        } else {
            p0 = p2.J.o + "/common.ini";
            skipPrefixChecks = true;
        }
    }

    if (!skipPrefixChecks) {
        if (p1.startsWith("CORE:")) {
            p1 = p1.substring(5);
            p0 = "units/common.ini";
        }
        if (p1.startsWith("SHARED:")) {
            p1 = p1.substring(7);
            p0 = "units/shared/common.ini";
        }
    }

    String v1 = com.corrodinggames.rts.gameFramework.f1006.j(p0) + "/";
    String v2 = v1 + p1;

    v0 = com.corrodinggames.rts.game.units.custom.ag500.h.get(v2);
    if (v0 != null) {
        com.corrodinggames.rts.game.units.custom.ag500.a(v0);
        return v0;
    }

    if (!p1.toLowerCase(java.util.Locale.ROOT).endsWith(".ogg") && !p1.toLowerCase(java.util.Locale.ROOT).endsWith(".wav")) {
        throw new RuntimeException("Failed to open sound: " + v1 + p1 + " only the ogg & wav sound formats are supported.");
    }

    com.corrodinggames.rts.gameFramework.utility.o1350 stream = com.corrodinggames.rts.game.units.custom.ag500.c(v1, p1, p2);
    long v4 = com.corrodinggames.rts.gameFramework.cf910.a();
    v0 = com.corrodinggames.rts.gameFramework.a.e788.a(p1, stream);
    try {
        stream.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    com.corrodinggames.rts.game.units.custom.ag500.a(v4, com.corrodinggames.rts.game.units.custom.ah501.c);

    if (v0 == null) {
        boolean isOgg = p1.toLowerCase(java.util.Locale.ROOT).endsWith(".ogg");
        String errorMsg = "Sound file found but failed to load: " + v2;
        if (isOgg) {
            errorMsg += " - Check if this file is truly a ogg";
        }
        p2.o(errorMsg);
        v0 = com.corrodinggames.rts.gameFramework.a.e788.b("Failed to load");
    } else {
        com.corrodinggames.rts.game.units.custom.ag500.a(v0);
        com.corrodinggames.rts.game.units.custom.ag500.h.put(v2, v0);
    }
    return v0;
}
