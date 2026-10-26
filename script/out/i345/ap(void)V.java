private strictfp void ap() {
    synchronized (this) {
        this.ab = false;
        if (this.aa != null) {
            this.aa.cancel();
            this.aa = null;
        }
    }
}
