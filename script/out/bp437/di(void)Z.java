private strictfp boolean di() {
    com.corrodinggames.rts.gameFramework.k1104 v1 = com.corrodinggames.rts.gameFramework.k1104.t();
    boolean v0 = v1.bN.renderAntiAlias;
    if (!cL()) {
        v0 = false;
        if (!(v1.cU < 1.0f)) {
            v0 = true;
        }
    }
    if (this.cq) {
        v0 = com.corrodinggames.rts.game.units.cj459.ag;
    }
    return v0;
}
