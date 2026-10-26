public final strictfp String i() {
    if (com.corrodinggames.rts.gameFramework.k1104.aU) {
        return "java";
    }
    if (com.corrodinggames.rts.gameFramework.k1104.aV) {
        return "java-gdx";
    }
    if (com.corrodinggames.rts.game.i345.aR) {
        return "dedicatedServer";
    }
    if (this.al == null) {
        return "<null context>";
    }
    try {
        return this.al.getPackageManager().getInstallerPackageName(this.h());
    } catch (IllegalArgumentException e) {
        return "IllegalArgumentException: " + e.getMessage();
    }
}
