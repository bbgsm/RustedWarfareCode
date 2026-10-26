public static void b() {
    com.corrodinggames.rts.gameFramework.utility.p1351 changed = new com.corrodinggames.rts.gameFramework.utility.p1351();
    boolean logged = false;

    java.util.Iterator<com.corrodinggames.rts.game.units.custom.l609> outerIterator = com.corrodinggames.rts.game.units.custom.l609.c.iterator();
    while (outerIterator.hasNext()) {
        com.corrodinggames.rts.game.units.custom.l609 unit = outerIterator.next();
        boolean unitChanged = false;

        java.util.Iterator<com.corrodinggames.rts.game.units.custom.aa494> innerIterator = unit.k.iterator();
        while (innerIterator.hasNext()) {
            com.corrodinggames.rts.game.units.custom.aa494 aa = innerIterator.next();
            long calculated = aa.a(false);
            if (calculated != aa.a) {
                aa.a = calculated;
                unitChanged = true;
            }
        }

        if (unitChanged) {
            if (!logged) {
                com.corrodinggames.rts.gameFramework.k1104.d("Detected unit changes");
                logged = true;
            }
            changed.add(unit);
        }
    }

    if (changed.size() > 0) {
        com.corrodinggames.rts.game.units.custom.ag500.a(changed);
    }
}
