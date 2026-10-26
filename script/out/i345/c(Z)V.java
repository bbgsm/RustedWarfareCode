private strictfp void c(boolean p1) {
    synchronized (this.ai) {
        try {
            if (this.an != null) {
                this.an.flushCanvas();
            }
            this.bn = false;
            if (!p1) {
                this.bY.e();
            }
            this.bR.b();
            this.g();
            if (!com.corrodinggames.rts.game.i345.Z()) {
                this.bK.d();
            }
            this.bO.a(p1);
            if (this.bI != null) {
                this.bI.e();
                this.bI = null;
            }
            if (this.cb != null) {
                this.cb = null;
            }
            if (this.bZ != null) {
                this.bZ.e = null;
            }
            this.ae = null;
            this.af = null;
            this.i = 0;
            com.corrodinggames.rts.game.p352.N();
            this.a(com.corrodinggames.rts.gameFramework.g.g1013.a, com.corrodinggames.rts.gameFramework.g.d1010.a);
        } catch (Throwable v0) {
            throw v0;
        }
    }
}
