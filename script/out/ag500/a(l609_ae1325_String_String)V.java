private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2, String p3) {
    String joinedNames = p1.a(p2, p3 + "name", (String) null);
    if (joinedNames == null) {
        return;
    }
    String[] names = joinedNames.split(",");
    for (int i = 0; i < names.length; i++) {
        String name = names[i].trim();
        com.corrodinggames.rts.game.units.custom.a.d489 d = new com.corrodinggames.rts.game.units.custom.a.d489();
        d.k = name;
        d.o = p1.a(p2, p3 + "extraLagHidingInUI", Boolean.FALSE).booleanValue();
        d.p = p1.a(p2, p3 + "pos", Float.valueOf(999.0f)).floatValue();
        d.aJ = p1.b(p2, p3 + "tech", Integer.valueOf(1)).intValue();
        d.aK = p1.a(p2, p3 + "forceNano", Boolean.FALSE).booleanValue();
        d.aL = p1.a(p2, p3 + "type", (String) null);
        d.q = com.corrodinggames.rts.game.units.custom.d.b579.a(p0, p1, p2, p3 + "price");
        d.aF = p1.a(p0, p2, p3 + "isGuiBlinking", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
        d.v = p1.a(p0, p2, p3 + "isVisible", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
        d.z = p1.a(p0, p2, p3 + "isLocked", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
        d.A = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedMessage", (String) null);
        if (d.z != null) {
            d.y = true;
        }
        if (d.z == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
            d.z = null;
        }
        d.B = p1.a(p0, p2, p3 + "isLockedAlt", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
        d.C = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedAltMessage", (String) null);
        if (d.B != null) {
            d.y = true;
        }
        if (d.B == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
            d.B = null;
        }
        d.D = p1.a(p0, p2, p3 + "isLockedAlt2", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
        d.E = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedAlt2Message", (String) null);
        if (d.D != null) {
            d.y = true;
        }
        if (d.D == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
            d.D = null;
        }
        com.corrodinggames.rts.game.units.custom.d.b579 addResources = com.corrodinggames.rts.game.units.custom.d.b579.a(p0, p1, p2, p3 + "addResources", true);
        if (addResources != null && addResources.d()) {
            d.ae = addResources;
        }
        d.aM = com.corrodinggames.rts.game.units.custom.a.f491.a;
        if (!name.equalsIgnoreCase("NONE")) {
            p0.gh.add(d);
        }
    }
}
