private static strictfp com.corrodinggames.rts.game.units.ce454 a(com.corrodinggames.rts.game.p352 p0) {
    int count = 0;
    java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bG.iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
        if (unit.s() && (p0 != null || unit.bZ == p0)) {
            count++;
        }
    }
    if (count > 0) {
        int randomIndex = com.corrodinggames.rts.gameFramework.f1006.a(0, count - 1);
        int index = 0;
        java.util.Iterator iterator2 = com.corrodinggames.rts.game.units.ce454.bG.iterator();
        while (iterator2.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator2.next();
            if (unit.s() && (p0 != null || unit.bZ == p0)) {
                if (index == randomIndex) {
                    return unit;
                }
                index++;
            }
        }
    }
    return null;
}
