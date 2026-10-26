private strictfp String an() {
    if (!com.corrodinggames.rts.game.i345.X()) {
        return null;
    }
    try {
        android.content.pm.PackageManager packageManager = this.al.getPackageManager();
        android.content.pm.PackageInfo packageInfo = packageManager.getPackageInfo(this.al.getPackageName(), 64);
        android.content.pm.Signature[] signatures = packageInfo.signatures;
        if (signatures.length > 0) {
            return com.corrodinggames.rts.gameFramework.f1006.a(signatures[0].toByteArray());
        }
        return null;
    } catch (android.content.pm.PackageManager.NameNotFoundException e) {
        throw new RuntimeException(e);
    }
}
