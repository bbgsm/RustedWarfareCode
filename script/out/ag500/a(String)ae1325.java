private static com.corrodinggames.rts.gameFramework.utility.ae1325 a(String p0) {
    synchronized (com.corrodinggames.rts.game.units.custom.ag500.n) {
        com.corrodinggames.rts.gameFramework.utility.ae1325 v0 = (com.corrodinggames.rts.gameFramework.utility.ae1325) com.corrodinggames.rts.game.units.custom.ag500.n.get(p0);
        if (v0 != null) {
            return v0;
        }
        String str = String.valueOf(p0);
        com.corrodinggames.rts.gameFramework.utility.o1350 v2 = com.corrodinggames.rts.gameFramework.e.a926.k(str);
        if (v2 == null) {
            return null;
        }
        java.io.BufferedInputStream v3 = new java.io.BufferedInputStream(v2);
        try {
            v0 = new com.corrodinggames.rts.gameFramework.utility.ae1325(v3, p0);
            v0.g = true;
            v0.c = false;
            v0.h = v2.b;
        } catch (java.io.IOException e) {
            e.printStackTrace();
            throw new com.corrodinggames.rts.game.units.custom.ch575("Load of '" + p0 + "' failed: " + e.getMessage());
        }
        com.corrodinggames.rts.game.units.custom.ag500.n.put(p0, v0);
        return v0;
    }
}
