private strictfp void d(boolean p1) {
    int delay = 1;
    synchronized (this.ac) {
        this.ab = true;
        if (this.aa == null) {
            if (!p1) {
                delay = 700;
            }
            this.aa = new Timer();
            this.aa.schedule(new j346(this), (long) delay);
        }
    }
}
