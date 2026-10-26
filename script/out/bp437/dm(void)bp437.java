private strictfp com.corrodinggames.rts.game.units.bp437 dm() {
    java.util.Iterator<?> v2 = com.corrodinggames.rts.game.units.ce454.bG.iterator();
    while (v2.hasNext()) {
        com.corrodinggames.rts.game.units.ce454 v0 = (com.corrodinggames.rts.game.units.ce454) v2.next();
        if (v0 == this) {
            continue;
        }
        if (!(v0 instanceof com.corrodinggames.rts.game.units.bp437)) {
            continue;
        }
        com.corrodinggames.rts.game.units.bp437 v0bp = (com.corrodinggames.rts.game.units.bp437) v0;
        if (v0bp.bX) {
            continue;
        }
        if (v0bp.bZ != this.bZ) {
            continue;
        }
        if (v0bp.q() != this.q()) {
            continue;
        }
        float v1 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v0bp.eq, v0bp.er);
        float v3 = this.cl + v0bp.cl;
        v3 *= v3;
        boolean v1b = v1 < v3;
        if (v1b) {
            return v0bp;
        }
    }
    return null;
}
