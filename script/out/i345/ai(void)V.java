private strictfp void ai() {
    this.bP.h();
    Iterator iterator = ce454.bG.iterator();
    while (iterator.hasNext()) {
        ce454 v0 = (ce454) iterator.next();
        if (v0.bZ == this.bp && v0 instanceof bp437) {
            if (v0.ai() && v0.i_() && v0.by() && !v0.s() && !v0.r()) {
                k1104.c("selectAnyOnScreenBuilder: found builder");
                this.bP.b(v0);
                return;
            }
        }
    }
    k1104.c("selectAnyOnScreenBuilder: no builder found");
}
