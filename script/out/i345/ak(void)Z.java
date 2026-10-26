private strictfp boolean ak() {
    if (this.bN.showUnitIcons) {
        return false;
    }
    if (this.cU < 0.7) {
        if (this.cB >= this.bI.f() - 5.0f && this.cy >= this.bI.g() - 5.0f) {
            return true;
        }
    }
    if (com.corrodinggames.rts.gameFramework.k1104.bb) {
        return this.cU < 0.1;
    } else if (com.corrodinggames.rts.game.i345.Z()) {
        return this.cU < 0.27;
    } else {
        return this.cU < 0.4;
    }
}
