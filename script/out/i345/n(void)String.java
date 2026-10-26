public final strictfp String n() {
    if (com.corrodinggames.rts.game.i345.a != null) {
        return com.corrodinggames.rts.game.i345.a;
    }
    String v0 = "v1.15";
    if (!com.corrodinggames.rts.gameFramework.k1104.ar || com.corrodinggames.rts.game.i345.aS) {
        v0 = "DEBUG BUILD - ".concat(String.valueOf("v1.15"));
    } else if (com.corrodinggames.rts.gameFramework.k1104.as) {
        v0 = "TESTING BUILD - ".concat(String.valueOf("v1.15"));
    } else if ("v1.15".contains("p")) {
        v0 = "BETA VERSION - ".concat(String.valueOf("v1.15"));
    }
    if (!com.corrodinggames.rts.gameFramework.k1104.aW && com.corrodinggames.rts.game.i345.ao()) {
        v0 = "RAW - ".concat(String.valueOf(v0));
    }
    com.corrodinggames.rts.game.i345.a = v0;
    return v0;
}
