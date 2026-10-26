public final strictfp void a(String p1) {
    com.corrodinggames.rts.game.units.el732 v0 = q();
    String v0Text;
    if (v0 != null) {
        v0Text = q().i();
    } else {
        v0Text = "<NO UNIT TYPE>";
    }
    StringBuilder v1 = new StringBuilder("(Unit log:");
    v1.append(v0Text);
    v1.append(" id:");
    v1.append(this.ej);
    v1.append("): ");
    v1.append(p1);
    com.corrodinggames.rts.gameFramework.k1104.d(v1.toString());
    return;
}
