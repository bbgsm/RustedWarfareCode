public strictfp void a(com.corrodinggames.rts.gameFramework.j.bg1057 p1) {
    p1.a(this.b);
    p1.a(this.c);
    p1.a(this.cN[0].e);

    p1.c(this.O);

    int v2 = this.O;
    p1.c(v2);

    for (int i = 0; i < v2; i++) {
        this.Q[i].a(p1);
    }

    p1.a((Enum) this.R);

    com.corrodinggames.rts.game.units.ce454 target = this.T;
    if (target != null && target.bX) {
        target = null;
    }
    p1.b(target);
    p1.a(this.U);
    p1.a(this.W);
    p1.a(this.X);
    p1.c("pathing_active:");
    p1.a(this.i);
    p1.a(this.j);
    p1.a(this.k);
    p1.a(this.q);
    p1.a(this.af);
    p1.a(this.ag);
    p1.a(this.ah);
    p1.a(this.al);
    p1.a(this.am);
    p1.a(this.an);
    p1.a(this.ao);
    p1.c(this.ap);

    p1.c(this.ae);

    p1.c("activePathCount:");

    p1.c(this.ay);
    for (int i = 0; i < this.ay; i++) {
        com.corrodinggames.rts.game.units.bx445 pathPoint = this.ax[i];
        p1.a(pathPoint.a);
        p1.a(pathPoint.b);
    }

    p1.c(this.ay);
    p1.c(this.t);

    p1.b(12);

    p1.a(this.m);
    p1.a(this.n);

    p1.a(this.d);
    p1.a(this.e);

    p1.a(this.s);

    p1.a(this.ak);
    p1.c(this.l);

    p1.a(this.Y);

    p1.a(this.as);
    p1.a(this.at);
    p1.a(this.au);

    p1.a(this.aj);

    p1.a(this.ad);

    p1.c(this.u);

    p1.a(this.Z);

    p1.a(this.aB);
    p1.a(this.aC);

    com.corrodinggames.rts.gameFramework.utility.p1351 br = this.br;
    int size;
    if (br == null) {
        size = 0;
    } else {
        size = br.size();
    }
    p1.a((short) size);

    if (size != 0) {
        p1.d("s");
        Object[] values = br.b;
        for (int j = 0; j < br.a; j++) {
            com.corrodinggames.rts.game.units.g.a747 item = (com.corrodinggames.rts.game.units.g.a747) values[j];
            p1.a((Enum) item.a());
            item.a(this, p1);
        }
        p1.e("s");
    }

    super.a(p1);
}
