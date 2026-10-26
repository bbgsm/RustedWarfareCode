private static void a(el732 p0) {
    k1104 v8 = k1104.t();
    try {
        p0.h();
        if (p0 instanceof l609) {
            l609 v1 = (l609) p0;
            if (v1.fI != null) {
                el732 v2 = l609.p(v1.fI);
                if (v2 == null) {
                    throw new ch575("Could not find [ai]upgradedFrom target:" + v1.fI);
                }
                v1.b(v2);
            }
            Iterator v3 = v1.p.iterator();
            while (v3.hasNext()) {
                v619 v2 = (v619) v3.next();
                v2.a();
            }
            if (v1.eH) {
                l609.g.add(v1);
            }
        }

        for (l609 v1 : l609.d) {
            if (p0 instanceof l609) {
                l609 v2 = (l609) p0;
                if (v1.fI != null && v1.fI.equalsIgnoreCase(v2.M)) {
                    v2.b(v1);
                }
            }
            Iterator v10 = v1.gg.iterator();
            while (v10.hasNext()) {
                p613 v2 = (p613) v10.next();
                if (v2.a.equalsIgnoreCase(p0.i())) {
                    v2.e = true;
                    boolean v3 = false;
                    int v7 = v1.cl;
                    while (v7 <= 3) {
                        ArrayList v11 = p0.a(v7);
                        s376 v6;
                        if (!v1.aH && !v2.c) {
                            v6 = new l369(v1);
                        } else {
                            v6 = new v379(v1);
                        }
                        if (v2.b != -999.0f) {
                            v6.g = v2.b;
                        }
                        if (v2.f != null) {
                            boolean v4 = false;
                            if (!(p0 instanceof l609)) {
                                ce454 v5 = ce454.b(p0);
                                if (!(v5 instanceof bp437)) {
                                    v4 = true;
                                }
                            }
                            if (!v4) {
                                v6.h = c488.a(v2);
                            } else {
                                if (!v3) {
                                    v3 = true;
                                    v1.o("builtFrom isLocked currently cannot be used when targeting old-style unit:" + p0.i());
                                }
                            }
                        }
                        boolean v5 = false;
                        for (Object item : v11) {
                            if (v6.equals(item)) {
                                v5 = true;
                            }
                        }
                        if (!v5) {
                            v11.add(v6);
                        }
                        Collections.sort(v11);
                        v7++;
                    }
                }
            }
        }

        if (p0 instanceof l609) {
            l609 v1 = (l609) p0;
            Iterator v9 = v1.gh.iterator();
            while (v9.hasNext()) {
                d489 v2 = (d489) v9.next();
                if (v2.k != null && v2.k.equalsIgnoreCase("setRally")) {
                    for (int v3 = 1; v3 <= 3; v3++) {
                        ArrayList v4 = p0.a(v3);
                        o372 v5 = new o372();
                        if (v2.p != -999.0f) {
                            v5.g = v2.p;
                        }
                        v4.add(v5);
                        v1.dc = true;
                        Collections.sort(v4);
                    }
                    continue;
                }
                if (v2.k != null && v2.k.equalsIgnoreCase("reclaim")) {
                    for (int v3 = 1; v3 <= 3; v3++) {
                        ArrayList v4 = p0.a(v3);
                        m370 v5 = new m370(true);
                        if (v2.p != -999.0f) {
                            v5.g = v2.p;
                        }
                        v4.add(v5);
                        Collections.sort(v4);
                    }
                    continue;
                }
                if (v2.k != null && v2.k.equalsIgnoreCase("repair")) {
                    for (int v3 = 1; v3 <= 3; v3++) {
                        ArrayList v4 = p0.a(v3);
                        n371 v5 = new n371();
                        if (v2.p != -999.0f) {
                            v5.g = v2.p;
                        }
                        v4.add(v5);
                        Collections.sort(v4);
                    }
                    continue;
                }

                el732 v4_unit = null;
                if (v2.k != null) {
                    v4_unit = cj459.a(v2.k);
                    if (v4_unit == null) {
                        throw new ch575("Could not find canBuild target:" + v2.k);
                    }
                } else if (v2.aM != f491.b) {
                    String desc = (v2.d != null) ? v2.d.a() : v2.c;
                    throw new ch575("'Target' required for action:" + desc);
                }

                for (int v7 = 1; v7 <= 3; v7++) {
                    ArrayList v10 = p0.a(v7);
                    s376 v6;
                    if (v2.aM == f491.a) {
                        if (!v4_unit.j() || v2.aK) {
                            v6 = new v379(v4_unit, v2.aJ, null);
                        } else {
                            v6 = new l369(v4_unit);
                        }
                        v6.h = c488.a(v2);
                    } else if (v2.aM == f491.b) {
                        v6 = new g492(v2, l609.a(v4_unit));
                    } else {
                        throw new ch575("Could not find actionType:" + v2.aM);
                    }
                    if (v2.p != -999.0f) {
                        v6.g = v2.p;
                    }
                    boolean v5 = false;
                    for (Object item : v10) {
                        if (v6.equals(item)) {
                            v5 = true;
                        }
                    }
                    if (!v5) {
                        v10.add(v6);
                    }
                    Collections.sort(v10);
                }
            }
        }

        if (p0 instanceof l609) {
            l609 v1 = (l609) p0;
            v1.fu = false;
            for (int v3 = 1; v3 <= 3; v3++) {
                ArrayList v2 = p0.a(v3);
                for (Object item : v2) {
                    s376 action = (s376) item;
                    if (!(action instanceof g492)) {
                        el732 target = action.h();
                        if (target != null) {
                            v1.fu = true;
                        }
                    }
                }
            }
            Iterator v2_iter = v1.p.iterator();
            while (v2_iter.hasNext()) {
                v619 v1_iter = (v619) v2_iter.next();
                v1_iter.b();
            }
        }

        boolean v3_flag = false;
        if (v8.F() && v8.bU.aA.k) {
            v3_flag = true;
        }
        for (int v4 = 1; v4 <= 3; v4++) {
            ArrayList v1 = p0.a(v4);
            Iterator v5_iter = v1.iterator();
            while (v5_iter.hasNext()) {
                s376 v2 = (s376) v5_iter.next();
                if (v2.h instanceof b487) {
                    k1104.a("=== ChainedActionConfig already on: " + p0.i() + " action:" + v2.b());
                    v2.h = ((b487) v2.h).b;
                }
                if (v3_flag) {
                    b579 v1_action = v2.B();
                    b579 v6_action = v2.P();
                    if (!v1_action.c() && v6_action == null) {
                        b487 newConfig = new b487(v2.h);
                        v2.h = newConfig;
                        newConfig.c = b579.a;
                        newConfig.d = v1_action;
                    }
                }
            }
        }
    } catch (ch575 e) {
        ag500.a(p0.i(), e, p0);
        return;
    } catch (RuntimeException e) {
        ag500.a(p0.i(), e, p0);
        return;
    }
}
