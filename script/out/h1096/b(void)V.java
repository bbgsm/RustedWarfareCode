public final strictfp void b() {
    com.corrodinggames.rts.gameFramework.k1104.M();
    int c = this.c;
    int b = this.b;
    this.f = new byte[b * c];
    if (this.a.equals(com.corrodinggames.rts.game.units.cg456.d)) {
        return;
    }
    com.corrodinggames.rts.gameFramework.k.k1099 k1099Var = this.q;
    com.corrodinggames.rts.game.b.b326 b326Var = k1099Var.q;
    int p = b326Var.p;
    int q = b326Var.q;
    com.corrodinggames.rts.game.units.ce454[] ce454Array = com.corrodinggames.rts.game.units.ce454.bG.c;
    int size = com.corrodinggames.rts.game.units.ce454.bG.size();
    for (int i = 0; i < size; i++) {
        com.corrodinggames.rts.game.units.ce454 ce454Var = ce454Array[i];
        if (!ce454Var.bV || ce454Var.bq() || ce454Var.cM || ce454Var instanceof com.corrodinggames.rts.game.units.cd453
            || ce454Var.bX || ce454Var.h() || ce454Var.cP != null || ce454Var.Q()) {
            continue;
        }
        int radius = 2;
        float v15 = ce454Var.cl + 5.0f;
        float v16 = ce454Var.cl + 10.0f;
        if (v16 < 10.0f) {
            radius = 0;
        } else if (v16 < 20.0f) {
            radius = 1;
        }
        b326Var.a(ce454Var.eq, ce454Var.er);
        int U = b326Var.U;
        int V = b326Var.V;
        for (int rowOffset = U - radius; rowOffset <= U + radius; rowOffset++) {
            for (int colOffset = V - radius; colOffset <= V + radius; colOffset++) {
                if (b326Var.c(rowOffset, colOffset)) {
                    b326Var.a(rowOffset, colOffset);
                    float px = (float)(b326Var.U + p);
                    float py = (float)(b326Var.V + q);
                    float dist = com.corrodinggames.rts.gameFramework.f1006.a(px, py, ce454Var.eq, ce454Var.er);
                    int index = rowOffset * c + colOffset;
                    if (dist < v15 * v15) {
                        byte[] fArray = this.f;
                        fArray[index] = (byte)(fArray[index] + 6);
                    } else if (dist < v16 * v16) {
                        byte[] fArray = this.f;
                        fArray[index] = (byte)(fArray[index] + 1.998);
                    }
                    if (this.f[index] < -1) {
                        this.f[index] = 127;
                    }
                }
            }
        }
    }
}
