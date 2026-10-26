public final strictfp void as() {
    this.X = 0.0f;
    this.aa = 0.0f;
    this.Y = 0.0f;
    this.at = false;
    this.as = -999.0f;
    this.au = false;
    this.u = 0;

    if (this.O == 0) {
        this.ax();
        this.e = 0.0f;
        this.d = 0.0f;
        this.c = 0.0f;
        return;
    }

    if (this.O == 1) {
        this.f = false;
        this.O = 0;
        this.ax();
        this.e = 0.0f;
        this.d = 0.0f;
        this.c = 0.0f;
        this.L();
        return;
    }

    if (this.Q.length > 0) {
        com.corrodinggames.rts.game.units.en734 v1 = this.Q[0];
        this.f = false;
        for (int v0 = 0; v0 < this.O - 1; v0++) {
            this.Q[v0] = this.Q[v0 + 1];
        }
        this.Q[this.O - 1] = v1;
    }

    this.O = this.O - 1;
    this.L();
    this.ax();
}
