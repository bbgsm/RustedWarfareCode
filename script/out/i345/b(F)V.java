    private strictfp void b(float p1) {
        if (this.ac() && p1 < 0.1f) {
            com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame1: deltaSpeed:" + p1 + " frame:" + this.bu + " network.currentStepRate:" + this.bU.K);
        }
        if (this.bq != 1.0f && !this.bU.C && !this.bY.t) {
            p1 *= this.bq;
        }
        float deltaSpeed = p1 * this.G;
        this.H = 2.0f + deltaSpeed;
        this.I = deltaSpeed;
        this.bU.l();
        this.bv = (int)((float)this.bv + 16.666666f * deltaSpeed);
        com.corrodinggames.rts.gameFramework.c904 c904Instance = this.cc;
        com.corrodinggames.rts.gameFramework.k1104 k1104Instance = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.gameFramework.c904.e = 0;
        if (!k1104Instance.bU.C) {
            c904Instance.c();
        } else {
            c904Instance.d();
        }
        this.bY.f();
        this.bu++;
        com.corrodinggames.rts.game.p352.G();
        if (this.bI != null) {
            this.bI.d(deltaSpeed);
        }
        if (this.ac() && deltaSpeed < 0.1f) {
            com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame2: deltaSpeed:" + deltaSpeed + " frame:" + this.bu);
        }
        com.corrodinggames.rts.game.units.ce454.bn();
        com.corrodinggames.rts.gameFramework.utility.r1353 r1353Instance = com.corrodinggames.rts.gameFramework.ah801.dj();
        Object[] objs = r1353Instance.d;
        int size = r1353Instance.size();
        boolean ac = this.ac();
        int index = 0;
        while (index < size) {
            com.corrodinggames.rts.gameFramework.ah801 ah801Instance = (com.corrodinggames.rts.gameFramework.ah801) objs[index];
            if (ac && deltaSpeed != this.I) {
                com.corrodinggames.rts.gameFramework.j.ae1028.f("JIT bug detected, attempting to correct. before object:" + ah801Instance.ej + " frame:" + this.bu + " deltaSpeed:" + deltaSpeed);
                deltaSpeed = this.I;
            }
            ah801Instance.a(deltaSpeed);
            index++;
        }
        if (this.ac() && deltaSpeed < 0.1f) {
            com.corrodinggames.rts.gameFramework.j.ae1028.e("updateAllGame3: deltaSpeed:" + deltaSpeed + " frame:" + this.bu);
        }
        int weakSize = r1353Instance.a.size();
        index = 0;
        while (index < weakSize) {
            com.corrodinggames.rts.gameFramework.utility.u1356 item = (com.corrodinggames.rts.gameFramework.utility.u1356) r1353Instance.a.get(index);
            if (item.a == com.corrodinggames.rts.gameFramework.utility.t1355.a && !((com.corrodinggames.rts.gameFramework.ah801) item.b).el) {
                ((com.corrodinggames.rts.gameFramework.ah801) item.b).a(deltaSpeed);
            }
            index++;
        }
        this.bZ.a();
        com.corrodinggames.rts.game.units.bp437.g(deltaSpeed);
        com.corrodinggames.rts.game.units.custom.j607.cU();
        com.corrodinggames.rts.game.units.custom.j607.dc();
        this.i++;
        if (this.i >= 1000) {
            this.i = 0;
            java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
            int count = 0;
            while (iterator.hasNext()) {
                com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) iterator.next();
                if (ce.bX && !(ce instanceof com.corrodinggames.rts.game.units.cd453)) {
                    count++;
                }
            }
            if (count > 70) {
                iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
                while (iterator.hasNext()) {
                    com.corrodinggames.rts.game.units.ce454 ce = (com.corrodinggames.rts.game.units.ce454) iterator.next();
                    if (ce instanceof com.corrodinggames.rts.game.units.ce454 && ce.bX && !(ce instanceof com.corrodinggames.rts.game.units.cd453) && ce.bY < (long)(this.bv - 30000) && count > 70) {
                        ce.a();
                        count--;
                    }
                }
            }
        }
        com.corrodinggames.rts.game.p352.d(deltaSpeed);
        com.corrodinggames.rts.gameFramework.d.a917.a(deltaSpeed);
        this.bO.a(deltaSpeed);
        com.corrodinggames.rts.gameFramework.d.b918 b918Instance = this.C;
        if (com.corrodinggames.rts.gameFramework.d.b918.a()) {
            if (!b918Instance.a) {
                b918Instance.b();
            }
            b918Instance.e += 0.2f * deltaSpeed;
            b918Instance.f += 0.07f * deltaSpeed;
            b918Instance.e %= (float) b918Instance.b.h();
            b918Instance.f %= (float) b918Instance.b.g();
        }
        com.corrodinggames.rts.gameFramework.utility.ab1322.a(deltaSpeed);
        if (this.cb != null) {
            this.cb.b(deltaSpeed);
        }
        this.bT.a(deltaSpeed);
        this.bR.a(deltaSpeed);
        if (this.cd != null) {
            this.cd.b();
        }
        com.corrodinggames.rts.gameFramework.bv896 bv896Instance = this.bV;
        int currentStep = com.corrodinggames.rts.gameFramework.k1104.t().bv;
        if (bv896Instance.e && bv896Instance.d <= currentStep) {
            bv896Instance.a(currentStep, false, false);
        }
    }
