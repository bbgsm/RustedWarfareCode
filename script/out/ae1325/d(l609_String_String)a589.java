public final com.corrodinggames.rts.game.units.custom.e.a589 d(com.corrodinggames.rts.game.units.custom.l609 p1, java.lang.String p2, java.lang.String p3) {
    java.lang.String v1 = this.a(p2, p3, null);
    if (v1 == null) {
        return null;
    }
    com.corrodinggames.rts.game.units.custom.e.a589 v0 = com.corrodinggames.rts.game.units.custom.e.a589.a(v1);
    if (v0 != null) {
        return v0;
    }
    v0 = p1.i(v1);
    if (v0 != null) {
        return v0;
    }
    com.corrodinggames.rts.game.units.custom.logicBooleans.BooleanParseException v2 = new com.corrodinggames.rts.game.units.custom.logicBooleans.BooleanParseException("[" + p2 + "]" + p3 + ": Could not find custom resource type of:" + v1);
    throw v2;
}
