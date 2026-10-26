public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(com.corrodinggames.rts.game.units.custom.l609 p1, String p2, String p3, com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean p4) {
    String v0 = null;
    v0 = this.a(p2, p3, v0);
    try {
        return com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.create(p1, v0, p4);
    } catch (RuntimeException e) {
        throw new RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
    }
}
