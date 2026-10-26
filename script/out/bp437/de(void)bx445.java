private strictfp com.corrodinggames.rts.game.units.bx445 de() {
    if (this.ay < 2) {
        return null;
    }
    if (this.aw != null) {
        return this.aw.b(this);
    }
    return this.ax[1];
}
