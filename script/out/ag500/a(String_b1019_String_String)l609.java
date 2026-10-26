private static com.corrodinggames.rts.game.units.custom.l609 a(String p0, com.corrodinggames.rts.gameFramework.i.b1019 p1, String p2, String p3) {
    try {
        long start = com.corrodinggames.rts.gameFramework.cf910.a();
        com.corrodinggames.rts.gameFramework.utility.o1350 stream = com.corrodinggames.rts.gameFramework.e.a926.k(String.valueOf(p0));
        if (stream == null) {
            throw new RuntimeException("Failed to open unit config file:" + p0);
        }
        java.io.BufferedInputStream inputStream = new java.io.BufferedInputStream(stream);
        com.corrodinggames.rts.game.units.custom.ag500.a(start, com.corrodinggames.rts.game.units.custom.ah501.g);
        com.corrodinggames.rts.game.units.custom.ag500.b++;
        if (p1 != null) {
            com.corrodinggames.rts.game.units.custom.ag500.c++;
        }
        com.corrodinggames.rts.gameFramework.k1104 k1104Instance = com.corrodinggames.rts.gameFramework.k1104.t();
        String source = "core units";
        if (p1 != null) {
            source = p1.a();
        }
        k1104Instance.dF = "Loading units - " + com.corrodinggames.rts.game.units.custom.ag500.b + " (" + source + ")";
        if (com.corrodinggames.rts.gameFramework.k1104.Z() && stream.b != null) {
            new java.io.File(stream.b).lastModified();
        }
        com.corrodinggames.rts.game.units.custom.l609 result = com.corrodinggames.rts.game.units.custom.ag500.a(p0, inputStream, p1, stream, p2, p3);
        long end = com.corrodinggames.rts.gameFramework.cf910.a();
        try {
            inputStream.close();
            stream.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }
        com.corrodinggames.rts.game.units.custom.ag500.a(end, com.corrodinggames.rts.game.units.custom.ah501.h);
        return result;
    } catch (RuntimeException e) {
        com.corrodinggames.rts.game.units.custom.ag500.a(p0, e, p1);
        return null;
    }
}
