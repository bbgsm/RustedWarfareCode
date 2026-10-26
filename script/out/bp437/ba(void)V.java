public final strictfp void ba() {
    com.corrodinggames.rts.gameFramework.k1104 framework = com.corrodinggames.rts.gameFramework.k1104.t();
    android.graphics.RectF rectF = new android.graphics.RectF();
    rectF.set(this.bI());
    rectF.top *= (float) framework.bI.o;
    rectF.bottom *= (float) framework.bI.o;
    rectF.left *= (float) framework.bI.n;
    rectF.right *= (float) framework.bI.n;
    rectF.offset(this.eq, this.er);
    rectF.offset(-this.cB(), -this.cC());
    rectF.top -= 10.0f;
    rectF.bottom += 10.0f;
    rectF.left -= 10.0f;
    rectF.right += 10.0f;
    com.corrodinggames.rts.gameFramework.utility.r1353 iterable = com.corrodinggames.rts.game.units.ce454.bn();
    java.util.Iterator iterator = iterable.iterator();
    while (iterator.hasNext()) {
        com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
        if (!(unit instanceof com.corrodinggames.rts.game.units.ce454)) {
            continue;
        }
        if (unit == this) {
            continue;
        }
        if (unit.eq + unit.cl > rectF.left
                && unit.eq - unit.cl < rectF.right
                && unit.er + unit.cl > rectF.top
                && unit.er - unit.cl < rectF.bottom) {
            if (unit instanceof com.corrodinggames.rts.game.units.bp437
                    && unit.bX) {
                unit.a();
            }
            if (unit instanceof com.corrodinggames.rts.game.units.cd453) {
                ((com.corrodinggames.rts.game.units.cd453) unit).j();
            }
        }
    }
    return;
}
