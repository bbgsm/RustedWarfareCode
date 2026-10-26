public final strictfp int a(boolean p1) {
    if (!com.corrodinggames.rts.game.i345.aR || p1) {
        return 176;
    }
    try {
        return this.al.getPackageManager().getPackageInfo(this.al.getPackageName(), 0).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException e) {
        throw new RuntimeException(e);
    }
}
