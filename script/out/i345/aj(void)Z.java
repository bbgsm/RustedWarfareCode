private strictfp boolean aj() {
    boolean v0 = true;
    if (this.J == null) {
        this.J = new com.corrodinggames.rts.game.l348("assets/shaders/post_base.frag");
    }
    if (this.K == null) {
        this.K = new com.corrodinggames.rts.game.l348("assets/shaders/post_displacement.frag");
    }
    this.J.a(this.bL);
    this.K.a(this.bL);
    if (!this.J.g || this.K.g) {
        if (!this.L) {
            this.L = true;
            com.corrodinggames.rts.gameFramework.k1104.c("setupPostprocessing: failed");
        }
        v0 = false;
    }
    return v0;
}
