public final strictfp void a(android.app.Activity activity, com.corrodinggames.rts.appFramework.ab5 ab5) {
    synchronized (this.ac) {
        if (this.am == activity) {
            this.d(false);
        }
        ab5.onParentStop();
    }
}
