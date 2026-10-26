public strictfp void a(com.corrodinggames.rts.gameFramework.j.j1071 p1) throws java.io.IOException {
    int v3 = 0;
    this.b = p1.b.readFloat();
    this.c = p1.b.readFloat();
    this.cN[0].e = p1.b.readFloat();
    this.O = p1.b.readInt();
    if (this.O > 0) {
        Q(com.corrodinggames.rts.gameFramework.f1006.c(this.O - 1, 0x1d));
    }
    int v0 = 0x1e;
    if (p1.c >= 0x2a) {
        v0 = p1.b.readInt();
    }
    for (int v2 = 0; v2 < v0; v2++) {
        Q(v2);
        int v1;
        if (v2 >= this.Q.length) {
            com.corrodinggames.rts.gameFramework.k1104.b("Too many waypoints:" + v2);
            v1 = this.Q.length - 1;
        } else {
            v1 = v2;
        }
        if (this.Q[v1] == null) {
            this.Q[v1] = new com.corrodinggames.rts.game.units.en734();
        }
        this.Q[v1].a(p1);
    }
    this.R = (com.corrodinggames.rts.game.units.a384) p1.b(com.corrodinggames.rts.game.units.a384.class);
    if (this.R == com.corrodinggames.rts.game.units.a384.a) {
        if (!H()) {
            this.R = com.corrodinggames.rts.game.units.a384.b;
        }
        if (p1.c < 0x4a) {
            this.R = com.corrodinggames.rts.game.units.a384.b;
        }
    }
    long v4 = p1.b.readLong();
    this.U = p1.b.readFloat();
    this.W = p1.b.readFloat();
    this.X = p1.b.readFloat();
    this.i = p1.b.readBoolean();
    this.j = p1.b.readFloat();
    this.k = p1.b.readFloat();
    this.q = p1.b.readFloat();
    this.a(p1.c());
    this.ag = p1.b.readBoolean();
    this.ah = p1.b.readBoolean();
    this.al = p1.b.readBoolean();
    this.am = p1.b.readFloat();
    this.an = p1.b.readFloat();
    this.ao = p1.b.readFloat();
    this.ap = p1.b.readInt();
    if (p1.c >= 0x12) {
        this.ae = p1.b.readInt();
    }
    if (p1.c >= 0x15) {
        int v1 = p1.b.readInt();
        for (int v0_ = 0; v0_ < v1; v0_++) {
            h(v0_);
            if (this.ax[v0_] == null) {
                this.ax[v0_] = new com.corrodinggames.rts.game.units.bx445();
            }
            this.ax[v0_].a(p1);
        }
    } else {
        for (int v0_ = 0; v0_ < 0x3c; v0_++) {
            h(v0_);
            if (this.ax[v0_] == null) {
                this.ax[v0_] = new com.corrodinggames.rts.game.units.bx445();
            }
            this.ax[v0_].a(p1);
        }
    }
    this.ay = p1.b.readInt();
    this.t = p1.b.readInt();
    byte v0b = p1.b.readByte();
    if (v0b > 0) {
        this.m = p1.b.readFloat();
        this.n = p1.b.readFloat();
    }
    if (v0b >= 2) {
        this.d = p1.b.readFloat();
        this.e = p1.b.readFloat();
    }
    if (v0b >= 3) {
        this.s = p1.b.readBoolean();
    }
    if (v0b >= 4) {
        this.ak = p1.b.readFloat();
        this.l = p1.b.readInt();
    }
    if (v0b >= 5) {
        this.Y = p1.b.readFloat();
    }
    if (v0b >= 6) {
        this.as = p1.b.readFloat();
        this.at = p1.b.readBoolean();
        this.au = p1.b.readBoolean();
    }
    if (v0b >= 7) {
        this.aj = p1.b.readShort();
    }
    if (v0b >= 8) {
        this.ad = p1.b.readFloat();
    }
    if (v0b >= 9) {
        this.u = p1.b.readInt();
    }
    if (v0b >= 10) {
        this.Z = p1.b.readFloat();
    }
    if (v0b >= 11) {
        this.aB = p1.b.readFloat();
        this.aC = p1.b.readFloat();
    }
    if (v0b >= 12) {
        short v2s = p1.b.readShort();
        if (v2s <= 0) {
            this.br = (com.corrodinggames.rts.gameFramework.utility.p1351) null;
        } else {
            if (this.br == null) {
                this.br = new com.corrodinggames.rts.gameFramework.utility.p1351();
            } else {
                this.br.clear();
            }
            com.corrodinggames.rts.gameFramework.utility.p1351 v6 = this.br;
            p1.a("s", false);
            for (int v1_ = 0; v1_ < v2s; v1_++) {
                com.corrodinggames.rts.game.units.g.b748 v0e = (com.corrodinggames.rts.game.units.g.b748) p1.b(com.corrodinggames.rts.game.units.g.b748.class);
                if (v0e == null) {
                    throw new java.io.IOException("Unknown status effect type");
                }
                com.corrodinggames.rts.game.units.g.a747 effect = v0e.a();
                effect.a(this, p1);
                v6.add(effect);
            }
            p1.c("s");
        }
    }
    super.a(p1);
    if (!this.bX) {
        this.T = com.corrodinggames.rts.gameFramework.ah801.a(v4, false);
        for (int v0_ = 0; v0_ < this.O; v0_++) {
            if (this.Q[v0_] == null) {
                com.corrodinggames.rts.gameFramework.k1104.d("readIn: convertUnitIds is null: " + v0_ + " waypointsCount:" + this.O);
            } else {
                this.Q[v0_].a();
            }
        }
    }
    S();
    if (this.bX) {
        this.ey = true;
    }
}
