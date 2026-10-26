public final strictfp void a(android.app.Activity p1, com.corrodinggames.rts.appFramework.ab5 p2, boolean p3) {
    synchronized (this) {
        synchronized (this.ac) {
            if (!com.corrodinggames.rts.game.i345.aR) {
                p2.onParentResume();
            }
            this.am = p1;
            this.ap = p3;
            this.cP = this.ap;
            if (p3 && !this.bD && !this.bF && !com.corrodinggames.rts.gameFramework.k1104.ax && !this.bU.C) {
                this.q();
            }
            com.corrodinggames.rts.appFramework.ab5 old = this.ao;
            if (this.an == null) {
                this.an = p2;
            }
            this.ao = p2;
            if (old != null && old != p2) {
                old.onReplacedByAnotherView();
            }
            if (p2 != null) {
                p2.updateResolution();
            }
            if (this.bP != null) {
                this.bP.b();
            }
            this.ap();
            this.A();
        }
    }
}
