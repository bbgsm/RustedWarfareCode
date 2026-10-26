public final strictfp void bg() {
    com.corrodinggames.rts.game.units.bp437 v0 = this.cQ;
    if (v0 == null) {
        return;
    }
    v0 = this.cQ;
    if (!v0.b(this)) {
        StringBuilder stringBuilder = new StringBuilder("Deattach failed, forcing deattach. Child:");
        stringBuilder.append(this.ce());
        stringBuilder.append(" Parent:");
        stringBuilder.append(this.cQ.ce());
        com.corrodinggames.rts.gameFramework.k1104.b(stringBuilder.toString());
        this.cQ = null;
        this.cR = null;
    }
}
