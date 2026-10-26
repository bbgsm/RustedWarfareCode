private strictfp void a(float p1, com.corrodinggames.rts.game.units.bx445 p2, com.corrodinggames.rts.game.units.bv443 p3, com.corrodinggames.rts.game.units.en734 p4) {
    com.corrodinggames.rts.gameFramework.k1104 k = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.units.bp437 v5 = this.af;
    float targetX = v5.eq + this.am;
    float targetY = v5.er + this.an;
    int v6 = k.bv - v5.ap;
    float v7 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, targetX, targetY);

    if (v6 > 300 || this.b > 1.0f) {
        this.d += p1;
    }

    boolean flag = false;
    if (this.d > 300.0f) {
        flag = true;
    }
    if (v6 > 300 && v7 > 250000.0f) {
        flag = true;
    }
    if (this.b > 1.0f) {
        if (this.c != 0.0f) {
            flag = true;
        }
        if (this.d > 10.0f) {
            flag = true;
        }
    }
    if (flag) {
        this.c = 90.0f;
    }

    if (this.c == 0.0f) {
        this.ax();
        p3.e = targetX;
        p3.f = targetY;

        com.corrodinggames.rts.game.units.bx445 target = null;
        if (v6 < 3000 && v5.t > 2 && (v5.t - v5.ay) <= 2) {
            target = v5.R(2);
        }
        if (v6 < 1500 && target == null && v5.t > 0 && v5.ay >= v5.t) {
            com.corrodinggames.rts.game.units.bx445 point = v5.R(0);
            float angle = com.corrodinggames.rts.gameFramework.f1006.d(v5.eq, v5.er, point.a, point.b);
            float radius = 80.0f;
            if (v6 > 300) {
                radius = 80.0f - ((float) (v6 - 300) * 0.06666667f);
            }
            com.corrodinggames.rts.game.units.bx445 staticTarget = com.corrodinggames.rts.game.units.bp437.aY;
            staticTarget.a = v5.eq + com.corrodinggames.rts.gameFramework.f1006.k(angle) * radius;
            staticTarget.b = v5.er + com.corrodinggames.rts.gameFramework.f1006.j(angle) * radius;
            target = staticTarget;
        }

        if (target != null) {
            p3.c = true;
            p3.e = target.a + this.am;
            p3.f = target.b + this.an;
        } else {
            if (v5.t >= 2 && v5.ay > 0) {
                com.corrodinggames.rts.game.units.bx445 start;
                com.corrodinggames.rts.game.units.bx445 end;
                if (v5.ay >= 2) {
                    start = v5.R(0);
                    end = v5.R(1);
                } else {
                    start = v5.R(0);
                    end = v5.R(0);
                }
                if (start != null && end != null) {
                    int angleInt = com.corrodinggames.rts.gameFramework.f1006.c(v5.eq, v5.er, start.a, start.b);
                    float fraction = (float) angleInt;
                    fraction = 1.0f - ((fraction - 15.0f) * 0.05f);
                    if (fraction > 2.0f) {
                        fraction = 2.0f;
                    }
                    if (fraction < 0.0f) {
                        fraction = 0.0f;
                    }

                    float dispX;
                    float dispY;
                    if (fraction > 1.0f) {
                        if (v5.ay >= 3) {
                            com.corrodinggames.rts.game.units.bx445 extra = v5.R(2);
                            float t = fraction - 1.0f;
                            dispX = t * (extra.a - end.a) + (end.a - start.a);
                            dispY = t * (extra.b - end.b) + (end.b - start.b);
                        } else {
                            dispX = end.a - start.a;
                            dispY = end.b - start.b;
                        }
                    } else {
                        dispX = (end.a - start.a) * fraction;
                        dispY = (end.b - start.b) * fraction;
                    }
                    p3.e = start.a + this.am + dispX;
                    p3.f = start.b + this.an + dispY;
                }
            }
        }

        float threshold;
        if (this.b > 1.0f) {
            threshold = 45.0f;
            if (v6 < 500) {
                if (!(this.b > 1.0f)) {
                    threshold = 110.0f;
                }
            }
        } else {
            threshold = 60.0f;
        }
        float thresholdSq = threshold * threshold;
        if (v7 < thresholdSq) {
            this.d = 0.0f;
        }

        boolean near = false;
        com.corrodinggames.rts.game.units.en734 currentTarget = v5.ap();
        if (currentTarget == null) {
            this.e += p1;
            boolean special = false;
            if (p4 != null) {
                if (p4.a == com.corrodinggames.rts.game.units.eo735.a || p4.a == com.corrodinggames.rts.game.units.eo735.h || p4.a == com.corrodinggames.rts.game.units.eo735.j) {
                    special = true;
                }
            }
            float radius;
            if (special && this.e > 600.0f) {
                radius = 260.0f;
            } else if (special && this.e > 360.0f) {
                radius = 140.0f;
            } else if (special && this.e > 180.0f) {
                radius = 70.0f;
            } else if (special && this.e > 120.0f) {
                radius = 50.0f;
            } else {
                radius = 16.0f;
            }
            float radiusSq = radius * radius;
            if (v7 < radiusSq) {
                near = true;
            }
        }

        if (!near) {
            p3.b = true;
            return;
        }

        boolean v1b = (currentTarget == null);
        if (v1b) {
            float f = this.a(p1, this.ao);
            f = com.corrodinggames.rts.gameFramework.f1006.d(f);
            if (f < 3.0f) {
                if (p4 != null) {
                    if (p4.a == com.corrodinggames.rts.game.units.eo735.a || p4.a == com.corrodinggames.rts.game.units.eo735.h) {
                        this.as();
                        if (v5 != null) {
                            boolean contains = false;
                            com.corrodinggames.rts.game.units.en734 a = this.ap();
                            com.corrodinggames.rts.game.units.en734 b = v5.ap();
                            if (a != null && b != null && a.b(b)) {
                                contains = true;
                            }
                            if (!contains) {
                                this.a((com.corrodinggames.rts.game.units.bp437) null);
                            }
                        }
                    }
                }
            }
        }
        return;
    } else {
        com.corrodinggames.rts.game.units.bx445 target = null;
        if (v5.t > 2 && 8 < v5.ay) {
            target = v5.R(8);
        }
        if (target == null) {
            target = com.corrodinggames.rts.game.units.bp437.aY;
            target.a = v5.eq;
            target.b = v5.er;
        }
        float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, target.a, target.b);
        float radius = this.cl + v5.cl + 15.0f;
        float radiusSq = radius * radius;
        if (dist < radiusSq) {
            this.d = 0.0f;
            this.c = 0.0f;
        }

        if (this.aW == null && p2 != null) {
            if (com.corrodinggames.rts.gameFramework.f1006.d(this.m - target.a) > 300.0f || com.corrodinggames.rts.gameFramework.f1006.d(this.n - target.b) > 300.0f) {
                if (this.q > 30.0f) {
                    this.q = 30.0f;
                }
            }
        }

        if (this.q == 0.0f && this.aW == null) {
            this.q = 700.0f;
            this.a(target.a, target.b, 0, false, false);
        }

        if (p2 != null) {
            p3.e = p2.a;
            p3.f = p2.b;
            p3.b = true;
        }
        return;
    }
}
