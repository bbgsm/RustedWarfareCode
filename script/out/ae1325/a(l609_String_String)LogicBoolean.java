public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(com.corrodinggames.rts.game.units.custom.l609 p1, java.lang.String p2, java.lang.String p3) {
    java.lang.String v0 = this.c(p2, p3);
    try {
        return com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.create(p1, v0, null);
    } catch (java.lang.RuntimeException e) {
        throw new java.lang.RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
    }
}
