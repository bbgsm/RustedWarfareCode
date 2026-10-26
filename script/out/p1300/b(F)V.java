public final void b(float p1) {
    k1104 v14 = k1104.t();
    int v15 = v14.bv;
    this.M = f1006.a(this.M, p1);

    if (v14.ap && v14.bE) {
        a325 v3 = null;
        if (v14.bI.R != null) {
            for (a325 v2 : v14.bI.R.c) {
                if ("camera_pan".equalsIgnoreCase(v2.d) && this.L == Integer.parseInt(v2.a("index", "-1"))) {
                    v3 = v2;
                }
            }
        } else {
            v3 = null;
        }
        if (v3 == null) {
            this.L = 0;
        } else {
            float v2_float = v3.e;
            float v3_float = v3.f;
            if (v2_float < v14.cF + 2.0f) v2_float = v14.cF + 2.0f;
            if (v3_float < v14.cG + 2.0f) v3_float = v14.cG + 2.0f;
            if (v2_float > v14.bI.f() - v14.cF - 2.0f) v2_float = v14.bI.f() - v14.cF - 2.0f;
            if (v3_float > v14.bI.g() - v14.cG - 2.0f) v3_float = v14.bI.g() - v14.cG - 2.0f;
            float v4 = f1006.d(v14.cv + v14.cF, v14.cw + v14.cG, v2_float, v3_float);
            float v2_angle = f1006.a(v14.cv + v14.cF, v14.cw + v14.cG, v2_float, v3_float);
            if (this.M == 0.0f) {
                if (v2_angle < 225.0f || v14.cq) {
                    this.L++;
                    this.M = 50.0f;
                }
            }
            float v2_mult = 0.45f * p1;
            v14.cv += f1006.k(v4) * v2_mult;
            v14.cw += f1006.j(v4) * v2_mult;
            v14.a(v14.cv, v14.cw);
            v14.H();
        }
    }

    if (this.k) {
        if (!this.N) {
            if (!this.m) {
                this.z = f1006.a(this.z, p1);
            }
            if (this.z == 0.0f && !this.m) {
                this.r++;
                this.A = 180.0f;
                int v2_idx = f1006.a(0, this.D.size() - 1, this.r);
                PointF v2_point = this.D.get(v2_idx);
                s1303 v3_s;
                if (!this.l) {
                    this.s = this.b(false).toString();
                    v3_s = this.b(true);
                } else {
                    this.s = this.c(false).toString();
                    v3_s = this.c(true);
                }
                this.z = 1800.0f;
                if (!this.l) {
                    if (this.y > 0) {
                        this.z -= this.y * 3 * 60;
                    } else {
                        this.z -= this.y * 9 * 60;
                    }
                }
                v3_s.a(v2_point.x, v2_point.y);
                this.t = null;
            }
        } else {
            if (!this.m) {
                q1301 v3_q = this.c();
                if (v3_q != null) {
                    if (v3_q.e * 1000 < v14.bv) {
                        k1104.d("Activating wave");
                        if (!v3_q.i.R) {
                            v3_q.i.d();
                        }
                        PointF v4_point = v3_q.i.P;
                        for (s1303 v2_s : v3_q.a) {
                            v2_s.a(v4_point.x, v4_point.y);
                        }
                        if (!v3_q.i.Q) {
                            v3_q.i.d();
                        }
                        if (v3_q.b) {
                            v3_q.i.Q = true;
                        }
                        if (v3_q.c) {
                            v3_q.i.Q = false;
                        }
                        this.r++;
                    }
                } else {
                    if (!v14.dn && !v14.bY.g()) {
                        v14.bP.j();
                    }
                }
            }
        }
    }

    if (this.j) {
        this.j = false;
        if (this.h != null) {
            v14.a("Briefing", this.h);
        }
    }

    if (v15 > this.b + 250) {
        this.b = v15;
        Iterator<a1285> v16 = this.J.iterator();
        while (v16.hasNext()) {
            a1285 v12 = v16.next();
            if (v12.j) {
                if (v12.q != -1 && v15 >= v12.k + v12.q) {
                    v12.j = false;
                    v12.u = false;
                }
            }
            if (!v12.j && !v12.u) {
                try {
                    k1104 v17 = k1104.t();
                    int v5_bv = v17.bv;
                    boolean v2_active = true;
                    boolean v3_conditions = false;
                    if (!v12.m && v12.r != -1 && v12.r <= v5_bv) {
                        v3_conditions = true;
                        v12.m = true;
                    }
                    boolean v4_hasUnits = v12.d.a.a > 0;
                    if (v4_hasUnits && v12.d.a()) {
                        v3_conditions = true;
                    } else {
                        v2_active = false;
                    }
                    boolean v4_allConditions = v2_active;
                    if (v12.f.a > 0) {
                        for (a1282 v2_a : v12.f) {
                            if (v2_a.a(v12)) {
                                v3_conditions = true;
                            }
                        }
                        v4_allConditions = v2_active;
                    }
                    if (v12.h) {
                        if (v3_conditions && v4_allConditions) {
                            v3_conditions = true;
                        } else {
                            v3_conditions = false;
                        }
                    } else {
                        if (v4_allConditions) {
                            v3_conditions = true;
                        }
                    }
                    if (v3_conditions) {
                        if (v12.n == -1) {
                            v12.n = v5_bv;
                        }
                        if (v12.s <= 0 || v5_bv >= v12.n + v12.s) {
                            v12.u = true;
                        } else {
                            v12.u = false;
                        }
                    } else {
                        v12.n = -1;
                        v12.u = false;
                    }
                    if (v12.u) {
                        v12.u = false;
                        try {
                            boolean v13 = !v12.j;
                            if (p1300.a && k1104.t().bi) {
                                k1104.d("Map Script: " + "Activiated trigger:" + v12.a + " (id:" + v12.b + ")");
                            }
                            v12.i = true;
                            v12.j = true;
                            v12.k = v17.bv;
                            boolean v2_effect = false;
                            if (v12.A != null) {
                                String v2_text = v12.A.b();
                                p995 v2_p = v17.bP.h.a(null, v2_text);
                                String v3_delay = v12.b("globalMessage_delayPerChar");
                                if ("slow".equals(v3_delay)) {
                                    v2_p.e = 18;
                                } else {
                                    int v3_delayInt = v12.b("globalMessage_delayPerChar", -1);
                                    if (v3_delayInt != -1) {
                                        v2_p.e = v3_delayInt;
                                    }
                                }
                                int v3_color = v12.g("globalMessage_textColor");
                                if (v3_color != -1) {
                                    v2_p.f = v3_color;
                                }
                                v2_effect = true;
                            }
                            String v3_debug = v12.b("debugMessage");
                            if (v3_debug != null) {
                                v12.j("Debug: " + v3_debug);
                                if (v17.bs && v17.bi) {
                                    ae1028.a(null, "Debug: " + v3_debug);
                                }
                                v2_effect = true;
                            }
                            if (v12.f("showOnMap")) {
                                q996 v2_q = v17.bT;
                                int v3_x = v12.a();
                                int v4_y = v12.b();
                                s998 v6_s = new s998(v2_q);
                                v6_s.a = v3_x;
                                v6_s.b = v4_y;
                                v6_s.e = u1000.d;
                                v6_s.c = 0.9f;
                                v6_s.d = 0.9f;
                                v2_q.aa.add(v6_s);
                                v2_effect = true;
                            }
                            if (v12.f.a > 0) {
                                for (a1282 v2_a2 : v12.f) {
                                }
                            }
                            if (v12.g == d1288.a) {
                                if (v13) {
                                    v12.j("objective met");
                                }
                                v2_effect = true;
                            }
                            if (v12.g == d1288.k) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.i) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.j) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.g) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.h) {
                                v2_effect = true;
                                v17.b(v12.a(), v12.b());
                            }
                            if (v12.g == d1288.e) {
                                float v3_spawnX = v12.a();
                                float v4_spawnY = v12.b();
                                p352 v7_team = v12.y;
                                if (v7_team == null) {
                                    v12.i("No team set, cannot spawn");
                                } else {
                                    if (v12.v != null) {
                                        v12.v.a(v3_spawnX, v4_spawnY, 0.0f, 0.0f, v7_team, false, null, null, false);
                                    } else {
                                        v12.i("No valid unit list to spawn");
                                    }
                                }
                                v2_effect = true;
                            }
                            if (v12.g == d1288.c) {
                                p352 v2_team = v12.y;
                                if (v2_team == null) {
                                    v12.i("Team not set for changeCredits");
                                    continue;
                                }
                                Integer v3_set = v12.e("set");
                                if (v3_set != null) {
                                    v2_team.p = v3_set.intValue();
                                }
                                Integer v3_add = v12.e("add");
                                if (v3_add != null) {
                                    v2_team.c(v3_add.intValue());
                                }
                            }
                            if (v12.g == d1288.d) {
                                p352 v2_team = v12.y;
                                if (v2_team == null) {
                                    v12.i("Team not set for event_teamTags");
                                    continue;
                                }
                                String v3_addTags = v12.c("addTeamTags");
                                if (v3_addTags != null) {
                                    v2_team.a(g604.a(v3_addTags));
                                }
                                String v3_removeTags = v12.c("removeTeamTags");
                                if (v3_removeTags != null) {
                                    v2_team.b(g604.a(v3_removeTags));
                                }
                            }
                            if (v12.g == d1288.b) {
                                String v4_target = v12.b("target");
                                if (v4_target == null) {
                                    p1300.e("Move trigger has no target id:" + v12.a);
                                    continue;
                                }
                                PointF v5_point = this.c(v4_target);
                                if (v5_point == null) {
                                    p1300.e("Move trigger: Cannot find target for:" + v12.a + " target:" + v4_target);
                                    continue;
                                }
                                p352 v6_team = v12.y;
                                if (v6_team == null) {
                                    p1300.e("Team not set map trigger:" + v12.a);
                                    continue;
                                }
                                int v3_count = 0;
                                e934 v7_order = v17.cc.a(v6_team);
                                for (ce454 v2_unit : ce454.bG) {
                                    if (v2_unit.bZ == v6_team && v2_unit instanceof bp437) {
                                        if (v12.a(v2_unit) && v12.b(v2_unit)) {
                                            bp437 v2_bp = (bp437) v2_unit;
                                            v7_order.a(v2_bp);
                                            v3_count++;
                                        }
                                    }
                                }
                                v7_order.a(v5_point.x, v5_point.y);
                                if (v13) {
                                    k1104.a("MissionEngine:triggerLog", "firstActivation: move at:" + v17.bv + " for teamId:" + v6_team.l + " to targetId:" + v4_target + " (#units:" + v3_count + ")");
                                }
                                if (v12.b("unload") != null) {
                                    for (ce454 v2_unit : ce454.bG) {
                                        if (v2_unit.bZ == v6_team && v2_unit instanceof bp437) {
                                            if (v12.a(v2_unit) && v12.b(v2_unit) && v2_unit.bT()) {
                                                bp437 v2_bp = (bp437) v2_unit;
                                                e934 v4_order = v17.cc.a(v6_team);
                                                v4_order.e = true;
                                                v4_order.a(v2_bp);
                                                v4_order.k = v2_bp.bS();
                                            }
                                        }
                                    }
                                }
                            }
                            if (v12.g == d1288.f) {
                                p1351 v3_list = new p1351();
                                for (ce454 v2_unit : ce454.bG) {
                                    if (v2_unit instanceof bp437 && v12.a(v2_unit) && v12.b(v2_unit)) {
                                        v3_list.add(v2_unit);
                                    }
                                }
                                if (v3_list.size() > 0) {
                                    for (ce454 v2_unit : v3_list) {
                                        v2_unit.bN();
                                        if (v2_unit instanceof bp437 && v2_unit.bq()) {
                                            v17.bR.a((bp437) v2_unit);
                                        }
                                    }
                                }
                                v2_effect = true;
                            }
                            if (!v2_effect) {
                                v12.j("Trigger activated with no effect");
                            }
                        } catch (h332 e) {
                            e.printStackTrace();
                            v12.i("Error activating trigger: " + e.getMessage());
                        }
                    }
                } catch (h332 e) {
                    e.printStackTrace();
                    v12.i("Error activating trigger: " + e.getMessage());
                    continue;
                }
            }
        }
    }

    if (v15 > this.c + 1000) {
        this.c = v15;
        if (p1300.e()) {
            p1300.e();
            p1300.e();
        }
        boolean v2_player = false;
        if (v14.bp != null && v14.bp.a()) {
            v2_player = true;
        }
        boolean v3_win = true;
        boolean v2_lose = true;
        if (!v14.dn && !v14.dq && !v14.bY.g() && !v2_player) {
            if (this.e == v1306.a) {
                v3_win = false;
                v2_lose = false;
            } else if (this.e == v1306.g) {
                v3_win = true;
                for (w1307 v2_w : this.g) {
                    if (!v2_w.a.j) {
                        v3_win = false;
                        break;
                    }
                }
            } else {
                v3_win = true;
                for (ce454 v2_unit : ce454.bG) {
                    if (v14.bp != null && v14.bp.b(v2_unit.bZ) && p1300.a(this.e, v2_unit)) {
                        v3_win = false;
                        break;
                    }
                }
            }
            if (this.f == v1306.a) {
                v2_lose = false;
            } else if (this.f == v1306.g) {
                v2_lose = true;
            } else {
                v2_lose = true;
                for (ce454 v2_unit : ce454.bG) {
                    if (v14.bp != null && v14.bp.c(v2_unit.bZ) && p1300.a(this.f, v2_unit)) {
                        v2_lose = false;
                        break;
                    }
                }
            }
            if (v3_win && !v2_lose) {
                v14.bP.k();
            }
            if (v3_win) {
                v14.bP.j();
                if (v14.bv > 1500) {
                    v14.bN.numberOfWins++;
                    v14.bN.save();
                }
            }
        }
        if (this.k && !this.m) {
            boolean v3_alive = true;
            for (ce454 v2_unit : ce454.bG) {
                if ((v2_unit instanceof d g656) || v2_unit.bR) {
                    if (!v2_unit.bX && !v2_unit.s() && v2_unit.bZ == v14.bp) {
                        v3_alive = false;
                        break;
                    }
                }
            }
            if (v3_alive) {
                this.m = true;
                v14.bP.k();
            }
        }
    }
}
