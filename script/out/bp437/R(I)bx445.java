private strictfp com.corrodinggames.rts.game.units.bx445 R(int p1) {
    if (this.aw != null) {
        if (p1 == 0) {
            return dd();
        } else {
            return de();
        }
    } else {
        if (p1 >= this.ay) {
            return null;
        } else {
            return this.ax[p1];
        }
    }
}
