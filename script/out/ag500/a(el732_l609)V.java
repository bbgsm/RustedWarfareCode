private static void a(com.corrodinggames.rts.game.units.el732 p0, com.corrodinggames.rts.game.units.custom.l609 p1) {
    java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
        if (unit instanceof com.corrodinggames.rts.game.units.custom.j607) {
            com.corrodinggames.rts.game.units.custom.j607 customUnit = (com.corrodinggames.rts.game.units.custom.j607) unit;
            if (customUnit.x == p0) {
                com.corrodinggames.rts.game.p352.b(customUnit);
                customUnit.a(p1, false, true);
                customUnit.S();
                if (customUnit.dK != null) {
                    customUnit.dK.a(p1);
                }
                com.corrodinggames.rts.game.p352.c(customUnit);
            }
            if (customUnit.z == p0) {
                customUnit.z = p1;
            }
        }
    }
}
