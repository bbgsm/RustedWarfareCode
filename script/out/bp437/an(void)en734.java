public final strictfp com.corrodinggames.rts.game.units.en734 an() {
    int v0 = this.O;
    this.Q(v0);
    com.corrodinggames.rts.game.units.en734 v1 = this.Q[this.O];
    if (v1 == null) {
        com.corrodinggames.rts.game.units.en734 v2 = new com.corrodinggames.rts.game.units.en734();
        this.Q[this.O] = v2;
    }
    v1 = this.Q[this.O];
    v1.b();
    if (this.O < 29) {
        this.O = this.O + 1;
    }
    if (this.O > 0) {
        this.L();
    }
    return v1;
}
