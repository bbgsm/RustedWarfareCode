private strictfp void a(float p1, com.corrodinggames.rts.game.units.bv443 p2, com.corrodinggames.rts.game.units.en734 p3, boolean p4) {
    float v2c = 0.0f;
    float v3f = 0.0f;
    com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (this.i && p2.b && p4) {
        float v7 = p2.e;
        float v8 = p2.f;
        float v9f = this.y();
        float v10 = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v7, v8);
        float v4f = com.corrodinggames.rts.gameFramework.f1006.d(this.eq, this.er, v7, (v8 - this.er) * this.aL() + this.er);
        boolean v2b = false;
        float v5f = this.aM();
        if (v5f > 0.95f) {
            v2b = true;
        } else if (v5f > 0.87) {
            if (this.aj <= 1 && this.ay > 0 && this.ay <= 9 && this.ag && v10 < 250000.0f) {
                v2b = true;
            }
        } else if (v5f > 0.7) {
            if (this.aj <= 1 && this.ay > 0 && this.ay <= 4 && this.ag && v10 < 40000.0f) {
                v2b = true;
            }
        } else if (v5f > 0.4) {
            if (this.aj <= 1 && this.ay > 0 && this.ay <= 2 && this.ag && v10 < 10000.0f) {
                v2b = true;
            }
        }
        if (this.T != null && this.D() && this.aT() && !this.aI()) {
            this.cj = v4f;
            v5f = 179.0f;
        } else if (this.aB < 0.0f) {
            v5f = this.a(p1, v4f, true, v2b);
        } else {
            v5f = 179.0f;
        }
        float v2f = 20.0f;
        if (v10 > 361.0f) {
            v2f = 46.0f;
        }
        if (v10 > 3600.0f) {
            v2f = 89.0f;
        }
        v4f = this.z();
        if (v4f >= 1.4) {
            if (v10 > 6400.0f) {
                v2f *= 0.5f;
            } else {
                v2f = 17.0f;
            }
        }
        if (v9f > 5.0f && this.ch >= 0.01f) {
            v2f = 1.0f;
        }
        if (v4f >= 1.1) {
            v2f *= 0.7f;
        }
        if (this.ch > 0.4f && v10 > 16900.0f) {
            v2f = 180.0f;
        }
        if (this.aT()) {
            v2f = 181.0f;
        }
        boolean v4b = this.ay == 1;
        v3f = 0.0f;
        if (!v4b || v10 < 16.0f) {
            float v5d = com.corrodinggames.rts.gameFramework.f1006.d(v5f);
            if (v5d < v2f) {
                v2f = 1.0f;
                if (p2.c) {
                    if (v10 >= 2500.0f) {
                        v2f = 0.85f;
                    }
                    if (v10 >= 900.0f) {
                        v2f -= 0.15f;
                    }
                    if (v10 >= 225.0f) {
                        v2f -= 0.3f;
                    }
                    v3f = v2f;
                } else {
                    if (this.af != null) {
                        if (v10 > 400.0f) {
                            v2f = 1.2f;
                        }
                        if (v10 >= 49.0f) {
                            v2f -= 0.15f;
                        }
                        if (v10 >= 9.0f) {
                            v2f -= 0.15f;
                        }
                        v3f = v2f;
                    } else {
                        v3f = v2f;
                    }
                }
                if (v10 >= 9.0f) {
                    v3f = 0.0f;
                }
            }
        }
        if (v4b && v3f != 0.0f) {
            if (v10 >= 324.0f) {
                if (this.C() >= 0.13f && this.y() > 1.0f) {
                    v3f *= 0.5f;
                }
            }
            if (v10 >= 169.0f) {
                if (this.C() >= 0.15f && this.y() > 0.9f) {
                    v3f *= 0.5f;
                }
            }
            if (v9f > 5.0f) {
                if (v10 >= 324.0f && v3f > 0.5f) {
                    v3f = 0.5f;
                }
                if (v10 >= 81.0f && v3f > 0.25f) {
                    v3f = 0.25f;
                }
            }
        }
        boolean v2b2 = false;
        if (!v4b && v10 >= 256.0f) {
            v2b2 = true;
        }
        if (v4b && v10 >= 16.0f) {
            v2b2 = true;
        }
        int ac = this.ac;
        int bu = v6.bu;
        if (ac == bu || ac == bu - 1) {
            if (this.ab != null && this.ab.a(v7, v8, 2.0f)) {
                v2b2 = true;
            }
        }
        if (v3f > 0.0f) {
            this.Y += p1;
            if (this.Y > 200.0f && v10 >= 3600.0f && this.ay >= 2) {
                float y = this.Y;
                this.dh();
                this.Y = y;
            }
            if (this.Y > 600.0f && this.ay >= 2 && this.aw == null) {
                this.ax();
            }
            if (this.Y > 80.0f && this.b > 30.0f) {
                this.ax();
            }
            if (this.Y > 40.0f && this.ay >= 2 && this.aw == null) {
                com.corrodinggames.rts.game.units.bx445 v5bx = this.ax[1];
                float dist = com.corrodinggames.rts.gameFramework.f1006.a(this.eq, this.er, v5bx.a, v5bx.b);
                if (dist >= v10) {
                    float y = this.Y;
                    this.dh();
                    this.Y = y;
                }
            }
        }
        if (v2b2) {
            this.dh();
            if (v4b) {
                this.d = 0.0f;
                this.c = 0.0f;
                if (!this.s && this.af == null && p3 != null && p3.a == com.corrodinggames.rts.game.units.eo735.a) {
                    this.cV();
                }
            }
        }
        v2c = v3f;
    } else {
        v2c = 0.0f;
    }
    if (this.ck && !this.aT()) {
        v2c = -v2c * this.aM();
    }
    if (this.aB > 0.0f) {
        v2c = 0.0f;
    }
    if (!this.aS()) {
        if (this.ch >= v2c) {
            this.ch = com.corrodinggames.rts.gameFramework.f1006.a(this.ch, v2c, this.B() * p1);
        }
        if (this.ch > v2c) {
            this.ch = com.corrodinggames.rts.gameFramework.f1006.a(this.ch, v2c, this.C() * p1);
        }
    } else {
        this.ch = v2c;
    }
    this.cM = p2.b && p4;
}
