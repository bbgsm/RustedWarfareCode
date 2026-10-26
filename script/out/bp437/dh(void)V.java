private strictfp void dh() {
    float f = this.Y;
    this.Z = f;
    this.Y = 0.0f;

    if (this.aw != null) {
        return;
    }

    if (this.ay == 0) {
        return;
    }

    if (this.ay == 1) {
        this.ay = 0;
        return;
    }

    com.corrodinggames.rts.game.units.bx445 item = this.ax[0];
    int i = 0;
    while (i < this.ay - 1) {
        com.corrodinggames.rts.game.units.bx445[] array = this.ax;
        com.corrodinggames.rts.game.units.bx445 next = array[i + 1];
        array[i] = next;
        i++;
    }
    this.ax[this.ay - 1] = item;
    this.ay = this.ay - 1;
}
