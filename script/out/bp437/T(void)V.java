public strictfp void T() {
    com.corrodinggames.rts.game.units.el732 v0 = q();
    String v0String;
    if (v0 != null) {
        v0 = q();
        v0String = v0.i();
    } else {
        v0String = "<NO UNIT TYPE>";
    }
    StringBuilder v1 = new StringBuilder("---- Debug for:");
    v1.append(v0String);
    v1.append(" id:");
    v1.append(this.ej);
    v1.append("---");
    com.corrodinggames.rts.gameFramework.k1104.d(v1.toString());
}
