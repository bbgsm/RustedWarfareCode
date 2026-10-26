private strictfp void b(com.corrodinggames.rts.gameFramework.k1104 p1) {
    final int v8 = 0x78;
    final int v1 = 1;
    final int v2 = 0;
    if (this.aW != null) {
        com.corrodinggames.rts.game.b.b326 v3 = p1.bI;
        java.util.LinkedList v4 = this.aW.b();
        if (v4 != null) {
            this.aw = this.aW.a();
            this.ay = v2;
            this.s = false;
            java.util.Iterator v5 = v4.iterator();
            while (v5.hasNext()) {
                com.corrodinggames.rts.gameFramework.k.o1103 v0 = (com.corrodinggames.rts.gameFramework.k.o1103) v5.next();
                v3.a(v0.a, v0.b);
                float v6 = (float) (v3.U + v3.p);
                float v7 = (float) (v3.V + v3.q);
                this.a(this.ay, v6, v7);
                this.ay = this.ay + 1;
                if (this.ay >= v8) {
                    this.s = true;
                    break;
                }
            }
            if (this.ay == v1) {
                this.o = (byte) (this.o + 1);
            }
            boolean v0flag;
            if (v4.size() != 0) {
                v3.a(this.m, this.n);
                v0flag = !this.s && ((com.corrodinggames.rts.gameFramework.k.o1103) v4.getLast()).a == v3.U && ((com.corrodinggames.rts.gameFramework.k.o1103) v4.getLast()).b == v3.V;
            } else {
                v0flag = false;
            }
            if (v0flag) {
                if (this.ay == 0) {
                    this.ay = this.ay + 1;
                }
                this.a(this.ay - 1, this.m, this.n);
            }
            this.aW = null;
            if (this.ay > v8) {
                String v0str = new StringBuilder("activePathCount>maxPathNodes: activePathCount:").append(this.ay).toString();
                com.corrodinggames.rts.gameFramework.k1104.b(v0str);
                this.ay = v8;
            }
            this.t = this.ay;
        }
    }
    return;
}
