private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, com.corrodinggames.rts.gameFramework.utility.ae1325 p2, String p3, int p4) {
    if (p4 > 10) {
        throw new com.corrodinggames.rts.game.units.custom.ch575("copyFrom can only be 10 levels deep, maybe you have a loop?");
    }
    String v0 = p2.a("core", "copyFrom", null);
    if (v0 != null) {
        String[] v2 = v0.split(",");
        java.util.Collections.reverse(java.util.Arrays.asList(v2));
        int v3 = v2.length;
        for (int v1 = 0; v1 < v3; v1++) {
            String item = v2[v1].trim();
            if (!item.equals("")) {
                if (item.contains("..")) {
                    throw new com.corrodinggames.rts.game.units.custom.ch575("'..' not supported in copyFrom");
                }
                String resolvedTarget;
                if (item.startsWith("ROOT:")) {
                    String suffix = item.substring(5);
                    String iniPath;
                    if (p0.J == null) {
                        iniPath = "units/common.ini";
                    } else {
                        iniPath = p0.J.o + "/common.ini";
                    }
                    resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j(iniPath), suffix);
                } else if (item.startsWith("CORE:")) {
                    String suffix = item.substring(5);
                    resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j("units/common.ini"), suffix);
                } else {
                    resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j(p3), item);
                }
                com.corrodinggames.rts.gameFramework.utility.ae1325 targetIni = com.corrodinggames.rts.game.units.custom.ag500.a(resolvedTarget);
                if (targetIni == null) {
                    String errorMessage = "Could not find copyFrom target:" + resolvedTarget;
                    if (p4 != 0) {
                        errorMessage = errorMessage + " (while loading: " + p3 + ")";
                    }
                    throw new com.corrodinggames.rts.game.units.custom.ch575(errorMessage);
                }
                p0.l(targetIni.h);
                p1.a(targetIni);
                com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, targetIni, resolvedTarget, p4 + 1);
            }
        }
    }
}
