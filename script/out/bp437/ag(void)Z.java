public final strictfp boolean ag() {
    java.util.ArrayList arrayList = this.N();
    java.util.Iterator iterator = arrayList.iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.a.s376 unit = (com.corrodinggames.rts.game.units.a.s376) iterator.next();
        if (unit.f()) {
            return true;
        }
    }
    return false;
}
