public final strictfp com.corrodinggames.rts.game.units.en734 am() {
    Q(29);

    if (this.O > 0) {
        this.f = false;
    }

    com.corrodinggames.rts.game.units.en734 v2 = this.Q[29];
    int v0 = 29;

    while (v0 > 0) {
        com.corrodinggames.rts.game.units.en734[] v3 = this.Q;
        int v4 = v0 - 1;
        com.corrodinggames.rts.game.units.en734 v4Object = v3[v4];
        v3[v0] = v4Object;
        v0 = v0 - 1;
    }

    this.Q[0] = v2;

    if (this.O < 29) {
        this.O = this.O + 1;
    }

    com.corrodinggames.rts.game.units.en734 v0Object = this.Q[0];
    if (v0Object == null) {
        this.Q[0] = new com.corrodinggames.rts.game.units.en734();
    }

    v0Object = this.Q[0];
    v0Object.b();
    this.X = 0.0f;
    this.aa = 0.0f;
    this.Y = 0.0f;
    L();
    this.ax();
    return v0Object;
}
