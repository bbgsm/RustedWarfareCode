package com.corrodinggames.rts.game.units.custom;

import com.corrodinggames.rts.gameFramework.i.b1019;
import com.corrodinggames.rts.gameFramework.utility.p1351;
import java.util.HashMap;
import android.graphics.Color;
import android.graphics.PointF;
import com.corrodinggames.rts.game.units.a.t377;
import com.corrodinggames.rts.game.units.a.u378;
import com.corrodinggames.rts.game.units.cg456;
import com.corrodinggames.rts.game.units.custom.a.a.a471;
import com.corrodinggames.rts.game.units.custom.a.a.o485;
import com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean;
import com.corrodinggames.rts.game.units.custom.logicBooleans.UnitReference;
import com.corrodinggames.rts.gameFramework.m.e1216;
import java.util.ArrayList;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.el732;
import com.corrodinggames.rts.game.units.custom.l609;
import java.util.Iterator;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.i.a1018;
import com.corrodinggames.rts.gameFramework.a.i792;
import com.corrodinggames.rts.game.units.custom.ag500;
import com.corrodinggames.rts.gameFramework.e.a926;
import com.corrodinggames.rts.gameFramework.cf910;
import java.nio.ByteBuffer;
import com.corrodinggames.rts.game.units.cj459;
import com.corrodinggames.rts.game.units.custom.e.a589;

public final class ag500 {

    // ==== from __header__.java ====
    static boolean a;

    static int b;

    static int c;

    public static int d;

    static b1019 e;

    static boolean f;

    public static HashMap g;

    public static HashMap h;

    static int i;

    static int j;

    static boolean k;

    static int l;

    public static p1351 m;

    static HashMap n;

    static final Object o = new Object();

    public static float p;

    public static float q;

    static b1019 r;

    static String s;

    // ==== from _clinit_(void)V.java ====
    static Object o;

    static {
            a = false;
            g = new HashMap();
            h = new HashMap();
            m = new p1351();
            n = new HashMap();
            o = new Object();
            p = 50.0f;
            q = 50.0f;
            r = null;
            s = null;
        }

    // ==== from a(Ae1216)V.java ====
    public static void a(com.corrodinggames.rts.gameFramework.m.e1216[] p0) {
        if (p0 == null) {
            return;
        }
        com.corrodinggames.rts.gameFramework.m.e1216 v1 = null;
        for (int v2 = 0; v2 < p0.length; v2++) {
            com.corrodinggames.rts.gameFramework.m.e1216 v0 = p0[v2];
            if (v0 != v1) {
                com.corrodinggames.rts.game.units.custom.ag500.a(v0);
            }
            if (v1 == null) {
                v1 = v0;
            }
        }
    }

    // ==== from a(ae1325_String_String)bu555.java ====
    public static com.corrodinggames.rts.game.units.custom.bu555 a(com.corrodinggames.rts.gameFramework.utility.ae1325 p0, java.lang.String p1, java.lang.String p2) {
        return p0.a(p1, p2, null, false);
    }

    // ==== from a(ArrayList)String.java ====
    private static String a(java.util.ArrayList p0) {
        java.util.HashMap<com.corrodinggames.rts.gameFramework.i.b1019, Integer> map = new java.util.HashMap<>();
        java.util.Iterator iterator = p0.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.units.custom.l609 unit = (com.corrodinggames.rts.game.units.custom.l609) iterator.next();
            com.corrodinggames.rts.gameFramework.i.b1019 key = unit.J;
            if (key != null) {
                Integer count = (Integer) map.get(key);
                if (count == null) {
                    count = Integer.valueOf(1);
                } else {
                    count = Integer.valueOf(count.intValue() + 1);
                }
                map.put(key, count);
            }
        }
        String result = "";
        java.util.Iterator keyIterator = map.keySet().iterator();
        while (keyIterator.hasNext()) {
            com.corrodinggames.rts.gameFramework.i.b1019 key = (com.corrodinggames.rts.gameFramework.i.b1019) keyIterator.next();
            Integer count = (Integer) map.get(key);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(result);
            sb.append(key.a());
            sb.append("(unitCount: ");
            sb.append(count);
            if (key.i()) {
                sb.append("");
            } else {
                sb.append("[disabled]");
            }
            sb.append("), ");
            result = sb.toString();
        }
        return result;
    }

    // ==== from a(b1019_String)String.java ====
    private static String a(com.corrodinggames.rts.gameFramework.i.b1019 p0, String p1) {
        if (p0 != null) {
            String v0 = p0.o;
            String v1 = com.corrodinggames.rts.gameFramework.e.a926.q(v0);
            v0 = com.corrodinggames.rts.gameFramework.e.a926.q(p1);
            if (v0.startsWith(v1)) {
                v0 = v0.substring(v1.length());
                if (v0.startsWith("/")) {
                    v0 = v0.substring(1);
                }
                if (v0.startsWith("\\")) {
                    v0 = v0.substring(1);
                }
            }
            p1 = v0 + " (in mod " + p0.a() + ")";
        }
        return p1;
    }

    // ==== from a(e1216)V.java ====
    private static void a(com.corrodinggames.rts.gameFramework.m.e1216 p0) {
        if (p0 == null || p0.v) {
            return;
        }
        if (com.corrodinggames.rts.gameFramework.k1104.ad() && p0 instanceof com.corrodinggames.rts.gameFramework.m.f1243) {
            return;
        }
        p0.v = true;
        int l = p0.l();
        com.corrodinggames.rts.gameFramework.i.b1019 e = com.corrodinggames.rts.game.units.custom.ag500.e;
        if (e != null) {
            e.E += l;
        }
    }

    // ==== from a(el732)V.java ====
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

    // ==== from a(el732_l609)V.java ====
    private static void a(com.corrodinggames.rts.game.units.el732 p0, com.corrodinggames.rts.game.units.custom.l609 p1) {
        java.util.Iterator iterator = com.corrodinggames.rts.game.units.ce454.bn().iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.units.ce454 unit = (com.corrodinggames.rts.game.units.ce454) iterator.next();
            if (unit instanceof com.corrodinggames.rts.game.units.custom.j607) {
                com.corrodinggames.rts.game.units.custom.j607 customUnit = (com.corrodinggames.rts.game.units.custom.j607) unit;
                if (customUnit.x == p0) {
                    com.corrodinggames.rts.game.p352.b(customUnit);
                    customUnit.a(p1, false, true);
                    customUnit.S();
                    if (customUnit.dK != null) {
                        customUnit.dK.a(p1);
                    }
                    com.corrodinggames.rts.game.p352.c(customUnit);
                }
                if (customUnit.z == p0) {
                    customUnit.z = p1;
                }
            }
        }
    }

    // ==== from a(i792)V.java ====
    private static void a(com.corrodinggames.rts.gameFramework.a.i792 p0) {
        if (!p0.g) {
            p0.g = true;
            if (com.corrodinggames.rts.game.units.custom.ag500.e != null) {
                com.corrodinggames.rts.game.units.custom.ag500.e.F = com.corrodinggames.rts.game.units.custom.ag500.e.F + 0L;
            }
        }
    }

    // ==== from a(J_ah501)V.java ====
    private static void a(long p0, com.corrodinggames.rts.game.units.custom.ah501 p2) {
        double v0 = (double) com.corrodinggames.rts.gameFramework.cf910.a(p0);
        p2.o = v0 + p2.o;
    }

    // ==== from a(l609)l609.java ====
    private static com.corrodinggames.rts.game.units.custom.l609 a(com.corrodinggames.rts.game.units.custom.l609 p0) {
        String v3 = p0.D;
        com.corrodinggames.rts.gameFramework.k1104 v4 = com.corrodinggames.rts.gameFramework.k1104.t();
        String v0 = null;
        if (p0.J != null) {
            v0 = p0.J.P;
        }
        synchronized (com.corrodinggames.rts.game.units.custom.ag500.n) {
            com.corrodinggames.rts.game.units.custom.ag500.n.clear();
        }
        com.corrodinggames.rts.game.units.custom.ag500.s = null;
        com.corrodinggames.rts.game.units.custom.l609 v1 = null;
        try {
            v1 = com.corrodinggames.rts.game.units.custom.ag500.a(v3, p0.J, p0.K, p0.L);
        } catch (RuntimeException e) {
            e.printStackTrace();
            if (com.corrodinggames.rts.game.units.custom.ag500.s == null) {
                v4.g("Error loading unit:" + com.corrodinggames.rts.game.units.custom.ag500.a(p0.J, v3) + "\n" + e.getMessage());
            }
        }
        if (v1 == null && p0.J != null) {
            p0.J.P = v0;
        }
        if (v1 != null) {
            synchronized (com.corrodinggames.rts.game.units.custom.l609.c) {
                com.corrodinggames.rts.game.units.custom.l609.c.remove(p0);
            }
            com.corrodinggames.rts.game.units.custom.ag500.a(p0, v1);
            boolean removed = com.corrodinggames.rts.game.units.custom.l609.d.remove(p0);
            if (removed) {
                com.corrodinggames.rts.game.units.custom.l609.d.add(v1);
                if (p0.H != v1.H) {
                    com.corrodinggames.rts.game.units.custom.ag500.d++;
                }
            } else {
                com.corrodinggames.rts.gameFramework.k1104.d("Changed unit was not enabled (original not found in customUnitTypes)");
            }
            com.corrodinggames.rts.game.p352.F();
            com.corrodinggames.rts.gameFramework.f.i988.n();
        }
        return v1;
    }

    // ==== from a(l609_ae1325_ae1325_String_I)V.java ====
    private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, com.corrodinggames.rts.gameFramework.utility.ae1325 p2, String p3, int p4) {
        if (p4 > 10) {
            throw new com.corrodinggames.rts.game.units.custom.ch575("copyFrom can only be 10 levels deep, maybe you have a loop?");
        }
        String v0 = p2.a("core", "copyFrom", null);
        if (v0 != null) {
            String[] v2 = v0.split(",");
            java.util.Collections.reverse(java.util.Arrays.asList(v2));
            int v3 = v2.length;
            for (int v1 = 0; v1 < v3; v1++) {
                String item = v2[v1].trim();
                if (!item.equals("")) {
                    if (item.contains("..")) {
                        throw new com.corrodinggames.rts.game.units.custom.ch575("'..' not supported in copyFrom");
                    }
                    String resolvedTarget;
                    if (item.startsWith("ROOT:")) {
                        String suffix = item.substring(5);
                        String iniPath;
                        if (p0.J == null) {
                            iniPath = "units/common.ini";
                        } else {
                            iniPath = p0.J.o + "/common.ini";
                        }
                        resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j(iniPath), suffix);
                    } else if (item.startsWith("CORE:")) {
                        String suffix = item.substring(5);
                        resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j("units/common.ini"), suffix);
                    } else {
                        resolvedTarget = com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.gameFramework.f1006.j(p3), item);
                    }
                    com.corrodinggames.rts.gameFramework.utility.ae1325 targetIni = com.corrodinggames.rts.game.units.custom.ag500.a(resolvedTarget);
                    if (targetIni == null) {
                        String errorMessage = "Could not find copyFrom target:" + resolvedTarget;
                        if (p4 != 0) {
                            errorMessage = errorMessage + " (while loading: " + p3 + ")";
                        }
                        throw new com.corrodinggames.rts.game.units.custom.ch575(errorMessage);
                    }
                    p0.l(targetIni.h);
                    p1.a(targetIni);
                    com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, targetIni, resolvedTarget, p4 + 1);
                }
            }
        }
    }

    // ==== from a(l609_ae1325_String)V.java ====
    private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2) {
        com.corrodinggames.rts.gameFramework.utility.ae1325 v0 = com.corrodinggames.rts.game.units.custom.ag500.a(p2);
        if (v0 == null) {
            return;
        }
        p0.l(v0.h);
        p1.a(v0);
        com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, v0, p2, 1);
    }

    // ==== from a(l609_ae1325_String_String)V.java ====
    private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2, String p3) {
        String joinedNames = p1.a(p2, p3 + "name", (String) null);
        if (joinedNames == null) {
            return;
        }
        String[] names = joinedNames.split(",");
        for (int i = 0; i < names.length; i++) {
            String name = names[i].trim();
            com.corrodinggames.rts.game.units.custom.a.d489 d = new com.corrodinggames.rts.game.units.custom.a.d489();
            d.k = name;
            d.o = p1.a(p2, p3 + "extraLagHidingInUI", Boolean.FALSE).booleanValue();
            d.p = p1.a(p2, p3 + "pos", Float.valueOf(999.0f)).floatValue();
            d.aJ = p1.b(p2, p3 + "tech", Integer.valueOf(1)).intValue();
            d.aK = p1.a(p2, p3 + "forceNano", Boolean.FALSE).booleanValue();
            d.aL = p1.a(p2, p3 + "type", (String) null);
            d.q = com.corrodinggames.rts.game.units.custom.d.b579.a(p0, p1, p2, p3 + "price");
            d.aF = p1.a(p0, p2, p3 + "isGuiBlinking", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
            d.v = p1.a(p0, p2, p3 + "isVisible", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
            d.z = p1.a(p0, p2, p3 + "isLocked", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
            d.A = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedMessage", (String) null);
            if (d.z != null) {
                d.y = true;
            }
            if (d.z == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
                d.z = null;
            }
            d.B = p1.a(p0, p2, p3 + "isLockedAlt", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
            d.C = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedAltMessage", (String) null);
            if (d.B != null) {
                d.y = true;
            }
            if (d.B == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
                d.B = null;
            }
            d.D = p1.a(p0, p2, p3 + "isLockedAlt2", (com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean) null);
            d.E = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3 + "isLockedAlt2Message", (String) null);
            if (d.D != null) {
                d.y = true;
            }
            if (d.D == com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.falseBoolean) {
                d.D = null;
            }
            com.corrodinggames.rts.game.units.custom.d.b579 addResources = com.corrodinggames.rts.game.units.custom.d.b579.a(p0, p1, p2, p3 + "addResources", true);
            if (addResources != null && addResources.d()) {
                d.ae = addResources;
            }
            d.aM = com.corrodinggames.rts.game.units.custom.a.f491.a;
            if (!name.equalsIgnoreCase("NONE")) {
                p0.gh.add(d);
            }
        }
    }

    // ==== from a(l609_ae1325_String_String_I)V.java ====
    private static void a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2, String p3, int p4) {
        String v4 = null;
        if (p4 > 10) {
            throw new com.corrodinggames.rts.game.units.custom.ch575("@copyFromSection can only be 10 levels deep, maybe you have a loop?");
        }
        String copyFromValue = p1.a(p3, "@copyFromSection", v4);
        if (copyFromValue == null || copyFromValue.equals("")) {
            return;
        }
        String[] sections = copyFromValue.split(",");
        java.util.List list = java.util.Arrays.asList(sections);
        java.util.Collections.reverse(list);
        int length = sections.length;
        for (int i = 0; i < length; i++) {
            String section = sections[i];
            String trimmedSection = section.trim();
            if (!trimmedSection.equals("")) {
                com.corrodinggames.rts.gameFramework.utility.p1351 keys = p1.j(trimmedSection, "");
                if (keys.size() == 0) {
                    throw new com.corrodinggames.rts.game.units.custom.ch575("[" + p3 + "]@copyFromSection: Could not find keys in target section: " + trimmedSection);
                }
                java.util.Iterator iterator = keys.iterator();
                while (iterator.hasNext()) {
                    String key = (String) iterator.next();
                    java.util.Map sourceMap = (java.util.Map) p1.a.get(trimmedSection);
                    String value;
                    if (sourceMap == null) {
                        value = null;
                    } else {
                        value = (String) sourceMap.get(key);
                    }
                    if (value != null) {
                        if (p1.g) {
                            throw new RuntimeException("locked changes");
                        }
                        java.util.LinkedHashMap targetMap = (java.util.LinkedHashMap) p1.a.get(p2);
                        if (targetMap == null) {
                            targetMap = new java.util.LinkedHashMap();
                            p1.a.put(p2, targetMap);
                        }
                        if (targetMap.get(key) == null) {
                            targetMap.put(key, value);
                        }
                    }
                }
                com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, trimmedSection, p4 + 1);
            }
        }
    }

    // ==== from a(l609_ae1325_String_String_String)aj503.java ====
    public static aj503 a(com.corrodinggames.rts.game.units.custom.l609 p0, com.corrodinggames.rts.gameFramework.utility.ae1325 p1, String p2, String p3, String p4) {
            return p1.a(p0, p2, p3, p4);
        }

    // ==== from a(l609_ae1325_String_String_String_Z_Z)V.java ====
    /**
     * 反编译自 smali 的辅助方法。
     * 原始签名：
     * private static a(l609, ae1325, String, String, String, boolean, boolean)
     */
    private static void a(l609 p0, ae1325 p1, String p2, String p3, String p4,
                          boolean p5, boolean p6) {
        // ========== 创建 action 对象 ==========
        d489 v13 = new d489();

        // ========== 查询各类字符串/数值参数 ==========
        String v5 = p1.a(p2, p3 + "convertTo", null);
        String v7 = p1.a(p2, p3 + "whenBuilding_temporarilyConvertTo", null);
        bm547[] v14 = as512.a(p1, p2, p3 + "whenBuilding_temporarilyConvertTo_keepFields");
        Float v15 = p1.a(p2, p3 + "addEnergy", (Float) null);

        b579 v16 = b579.a(p0, p1, p2, p3 + "addResources", true);
        p0.a(v16);
        b579 v17 = b579.a(p0, p1, p2, p3 + "addResourcesScaledByAIHandicaps", true);
        p0.a(v17);

        String v6 = p1.a(p2, p3 + "fireTurretXAtGround", (String) null);
        LogicBoolean v18 = p1.b(p0, p2, p3 + "alsoTriggerOrQueueActionWithTarget");
        LogicBoolean v19 = p1.a(p0, p2, p3 + "alsoTriggerOrQueueActionConditional", (LogicBoolean) null);
        String v20 = p1.a(p2, p3 + "alsoTriggerAction", (String) null);
        LogicBoolean v21 = p1.c(p0, p2, p3 + "alsoTriggerActionRepeat");
        String v22 = p1.a(p2, p3 + "alsoQueueAction", (String) null);
        String v23 = p1.a(p2, p3 + "spawnEffects", (String) null);
        String v24 = p1.a(p2, p3 + "spawnEffectsOnQueue", (String) null);
        String v25 = p1.a(p2, p3 + "playSoundAtUnit", (String) null);
        String v26 = p1.a(p2, p3 + "playSoundGlobally", (String) null);
        String v27 = p1.a(p2, p3 + "playSoundToPlayer", (String) null);
        String v28 = p1.a(p2, p3 + "playSoundToPlayerOnQueue", (String) null);

        // ========== 运输相关 ==========
        ci576 v4 = ci576.a(p0, p1, p2, p3 + "addUnitsIntoTransport");
        int v8 = p1.b(p2, p3 + "deleteNumUnitsFromTransport", Integer.valueOf(0)).intValue();
        h605 v9 = g604.a(
                p1.a(p2, "deleteNumUnitsFromTransport_onlyWithTags", (String) null),
                (h605) null);
        boolean v10 = p1.a(p2, p3 + "startUnloadingTransport", Boolean.FALSE).booleanValue();
        boolean v11 = p1.a(p2, p3 + "forceUnloadTransportNow", Boolean.FALSE).booleanValue();
        int v12 = p1.b(p2, p3 + "forceUnloadTransportNow_onlyOnSlot", Integer.valueOf(-1)).intValue();
        LogicBoolean v29 = p1.b(p0, p2, p3 + "transportTargetNow");

        if (v12 != -1 && !v11) {
            throw new ch575("forceUnloadTransportNow_onlyOnSlot expects forceUnloadTransportNow");
        }

        if (v4.a() || v8 > 0 || v10 || v11 || v29 != null) {
            o485 v30 = new o485();
            if (!v4.a()) {
                v30.a = v4;
            }
            if (v8 > 0) {
                v30.b = v8;
                v30.c = v9;
            }
            v30.d = v10;
            v30.e = v11;
            v30.f = v12;
            v30.g = v29;
            v13.ac.add(v30);
        }

        // ========== 各类静态解析器 ==========
        e475.a(p0, p1, p2, p3, v13);
        h478.a(p0, p1, p2, p3, v13);

        // ========== resourceAmount ==========
        a589 v4ra = p1.d(p0, p2, p3 + "resourceAmount");
        if (v4ra != null) {
            a471 v8a = new a471();
            v8a.a = v4ra;
            v8a.b = p1.a(p2, p3 + "resourceAmount_setValue", Double.NaN);
            v8a.c = p1.d(p0, p2, p3 + "resourceAmount_addOtherResource");
            v8a.d = p1.a(p2, p3 + "resourceAmount_multiplyBy", Float.valueOf(1.0f)).floatValue();
            v13.ac.add(v8a);
        }

        c580 v4c = c580.a(p0, p1, p2, p3 + "addResourcesWithLogic");
        c580 v8c = c580.a(p0, p1, p2, p3 + "setResourcesWithLogic");
        if (v4c != null || v8c != null) {
            a471 v9c = new a471();
            v9c.f = v8c;
            v9c.e = v4c;
            v13.ac.add(v9c);
        }

        k481.a(p0, p1, p2, p3, v13);
        b472.a(p0, p1, p2, p3, v13);
        d474.a(p0, p1, p2, p3, v13);
        l482.a(p1, p2, p3, v13);
        g477.a(p0, p1, p2, v13);
        m483.a(p0, p1, p2, p3, v13);
        f476.a(p0, p1, p2, v13);
        j480.a(p0, p1, p2, p3, v13);
        i479.a(p0, p1, p2, p3, v13);

        LogicBoolean v29Reset = p1.a(p0, p2, p3 + "resetCustomTimer", (LogicBoolean) null);

        // ========== 判断是否有可见内容 ==========
        boolean v4flag = false;
        if (p5) {
            v4flag = true;
        } else {
            if (v5 != null || v7 != null || v15 != null || v6 != null) v4flag = true;
            if (v16.d() || v17.d()) v4flag = true;
            if (v20 != null || v22 != null || v23 != null) v4flag = true;
            if (v25 != null || v26 != null || v27 != null || v28 != null) v4flag = true;
            if (v13.ac.size() > 0) v4flag = true;
        }

        if (!v4flag) {
            return;
        }

        // ========== 处理 "NONE" 标记 ==========
        String v10n;
        if ("NONE".equalsIgnoreCase(v5)) {
            v10n = null;
        } else {
            v10n = v5;
        }

        String v12n;
        if ("NONE".equalsIgnoreCase(v7)) {
            v12n = null;
        } else {
            v12n = v7;
        }

        String v11n;
        if (v6 != null && "NONE".equalsIgnoreCase(v6)) {
            v11n = null;
        } else {
            v11n = v6;
        }

        // ========== ID 校验 ==========
        v13.a = p0.gh.size();
        String v5Id = p1.a(p2, p3 + "id", (String) null);
        if (v5Id != null) {
            v13.b = "c" + v5Id;

            if (v13.b.contains(" ")) {
                throw new RuntimeException("[" + p2 + "]id cannot contain space");
            }
            if (v13.b.contains(",")) {
                throw new RuntimeException("[" + p2 + "]id cannot contain ,");
            }
            if (v13.b.contains(":")) {
                throw new RuntimeException("[" + p2 + "]id cannot contain :");
            }
            if (v13.b.contains("(")) {
                throw new RuntimeException("[" + p2 + "]id cannot contain (");
            }
            if (v13.b.contains("\u0000")) {
                throw new RuntimeException("[" + p2 + "]id cannot contain null");
            }
            if (v13.b.length() > 15) {
                throw new RuntimeException("[" + p2 + "]id cannot be longer than 15 characters");
            }

            for (Object obj : p0.gh) {
                d489 existing = (d489) obj;
                if (v13.b.equalsIgnoreCase(existing.b)) {
                    throw new RuntimeException("[" + p2 + "]id more than one action exists with id: " + v5Id);
                }
            }
        }

        // ========== 基本属性 ==========
        v13.c = p4;
        v13.o = p1.a(p2, p3 + "extraLagHidingInUI", Boolean.FALSE).booleanValue();
        v13.s = g604.a(p1.a(p2, p3 + "tags", (String) null));
        v13.p = p1.a(p2, p3 + "pos", Float.valueOf(999.0f)).floatValue();
        v13.q = b579.a(p0, p1, p2, p3 + "price", true);
        v13.r = b579.b(p0, p1, p2, p3 + "streamingCost");

        boolean switchPrice = p1.a(p2, p3 + "switchPriceWithStreamingCost", Boolean.FALSE).booleanValue();
        if (switchPrice) {
            if (v13.r != null) {
                throw new RuntimeException("[" + p2 + "]streamingCost and switchPriceWithStreamingCost=true cannot be used at the same time");
            }
            v13.r = b579.b(p0, p1, p2, p3 + "price");
            v13.q = b579.a;
        }

        p0.a(v13.q);
        if (v13.r != null) {
            p0.a(v13.r);
        }

        // ========== 队列优先级等 ==========
        v13.K = p1.a(p2, p3 + "highPriorityQueue", Boolean.FALSE).booleanValue();
        v13.L = p1.a(p2, p3 + "onlyOneUnitAtATime", Boolean.FALSE).booleanValue();
        v13.M = p1.a(p2, p3 + "canPlayerCancel", Boolean.TRUE).booleanValue();
        v13.O = p1.a(p2, p3 + "alwaysSinglePress", Boolean.FALSE).booleanValue();
        v13.N = p1.a(p2, p3 + "allowMultipleInQueue", Boolean.TRUE).booleanValue();

        if (!v13.M && !v13.N && v13.O) {
            v13.P = true;
        }

        v13.j = v13.M ? u378.c : u378.a;

        // ========== 条件/可见性 ==========
        v13.t = p1.a(p0, p2, p3 + "requireConditional", (LogicBoolean) null);
        v13.u = p1.a(p0, p2, p3 + "isActive", (LogicBoolean) null);
        v13.v = p1.a(p0, p2, p3 + "isVisible", (LogicBoolean) null);
        v13.x = p1.a(p2, p3 + "isAlsoViewableByEnemies", Boolean.FALSE).booleanValue();
        v13.w = p1.a(p2, p3 + "isAlsoViewableByAllies", Boolean.valueOf(v13.x)).booleanValue();

        if (p6) {
            if (v13.v != null && !LogicBoolean.isStaticFalse(v13.v)) {
                throw new RuntimeException("[" + p2 + "]isVisible doesn't make sense to use in hidden actions");
            }
            v13.v = LogicBoolean.falseBoolean;
        }

        // ========== 锁定条件 ==========
        v13.z = p1.a(p0, p2, p3 + "isLocked", (LogicBoolean) null);
        v13.A = a(p0, p1, p2, p3 + "isLockedMessage", (String) null);
        if (v13.z != null) v13.y = true;
        if (v13.z == LogicBoolean.falseBoolean) v13.z = null;

        v13.B = p1.a(p0, p2, p3 + "isLockedAlt", (LogicBoolean) null);
        v13.C = a(p0, p1, p2, p3 + "isLockedAltMessage", (String) null);
        if (v13.B != null) v13.y = true;
        if (v13.B == LogicBoolean.falseBoolean) v13.B = null;

        v13.D = p1.a(p0, p2, p3 + "isLockedAlt2", (LogicBoolean) null);
        v13.E = a(p0, p1, p2, p3 + "isLockedAlt2Message", (String) null);
        if (v13.D != null) v13.y = true;
        if (v13.D == LogicBoolean.falseBoolean) v13.D = null;

        // ========== AI 相关 ==========
        v13.F = LogicBoolean.create(p0, p1.a(p2, p3 + "ai_isHighPriority", (String) null), (LogicBoolean) null);
        if (v13.F == LogicBoolean.falseBoolean) v13.F = null;
        if (v13.F != null) p0.fJ = true;

        v13.G = p1.a(p0, p2, p3 + "ai_isDisabled", LogicBoolean.falseBoolean);

        v13.aN = (e490) p1.a(p2, p3 + "aiUse", v13.aN, e490.class);

        // ========== GUI 建造 ==========
        String v4gui = p1.a(p2, p3 + "guiBuildUnit", (String) null);
        v13.J = p0.a(v4gui, p3 + "guiBuildUnit", p2);
        if (v13.J != null) {
            v13.j = u378.b;
            if (v10n != null) {
                throw new RuntimeException("[" + p2 + "]guiBuildUnit and convertTo cannot currently be used the same action");
            }
        }

        v13.I = p0.a(
                p1.a(p2, p3 + "ai_considerSameAsBuilding", (String) null),
                p3 + "ai_considerSameAsBuilding", p2);

        v13.aF = p1.a(p0, p2, p3 + "isGuiBlinking", (LogicBoolean) null);

        // ========== 图标 ==========
        v13.ay = a(p0.F,
                p1.a(p2, p3 + "iconImage", "NONE"),
                p0.ab, p0, p2, p3 + "iconImage");

        v13.aB = p1.a(p0, p2, p3 + "iconExtraIsVisible", (LogicBoolean) null);
        if (v13.aB == LogicBoolean.trueBoolean) v13.aB = null;

        v13.az = p0.a(p1, p2, p3 + "iconExtraImage");
        v13.aA = p1.a(p2, p3 + "iconExtraColor",
                Integer.valueOf(Color.argb(100, 255, 255, 255))).intValue();

        v13.aC = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
                p3 + "unitShownInUI", (UnitReference.UnitReferenceOrUnitType) null);
        if (v13.aC != null && v13.ay != null) {
            throw new RuntimeException("[" + p2 + "]unitShownInUI and iconImage: doesn't make sense to use both at the same time");
        }

        v13.aD = p1.a(p2, p3 + "unitShownInUIWithHpBar", Boolean.TRUE).booleanValue();
        v13.aE = p1.a(p2, p3 + "unitShownInUIWithProgressBar", Boolean.TRUE).booleanValue();

        v13.aG = (t377) p1.a(p2, p3 + "displayType", v13.aG, t377.class);
        v13.aI = p1.a(p2, p3 + "displayRemainingStockpile", Boolean.FALSE).booleanValue();

        // ========== 文本 / 描述 ==========
        v13.d = a(p0, p1, p2, p3 + "text", "");
        v13.e = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
                p3 + "textAddUnitName", (UnitReference.UnitReferenceOrUnitType) null);
        v13.h = a(p1, p2, p3 + "textPostFix");

        v13.f = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
                p3 + "descriptionAddFromUnit", (UnitReference.UnitReferenceOrUnitType) null);
        v13.g = UnitReference.parseUnitTypeOrReferenceFromConf(p0, p1, p2,
                p3 + "descriptionAddUnitStats", (UnitReference.UnitReferenceOrUnitType) null);
        v13.i = a(p0, p1, p2, p3 + "description", "");

        // ========== 建造参数 ==========
        v13.S = p1.d(p2, p3 + "buildSpeed", Float.valueOf(v13.S)).floatValue();
        if (v13.S == 0f) v13.S = 50.0f;
        v13.T = p1.a(p2, p3 + "buildSpeed_ignoreFactorySpeedModifiers", Boolean.valueOf(v13.T)).booleanValue();

        // ========== 建造行为 ==========
        boolean v4b = false;

        v13.U = p1.a(p2, p3 + "whenBuilding_cannotMove", Boolean.valueOf(v13.U)).booleanValue();
        v13.V = p0.a(p1.a(p2, p3 + "whenBuilding_playAnimation", (String) null), v13.V);
        v13.W = p1.a(p2, p3 + "whenBuilding_rotateTo", v13.W);
        v13.X = p1.a(p2, p3 + "whenBuilding_rotateTo_orBackwards", Boolean.valueOf(v13.X)).booleanValue();
        v13.Y = p1.a(p2, p3 + "whenBuilding_rotateTo_waitTillRotated", Boolean.valueOf(v13.Y)).booleanValue();
        v13.Z = p1.a(p2, p3 + "whenBuilding_rotateTo_aimAtActionTarget", Boolean.valueOf(v13.Z)).booleanValue();

        String rotateTurretX = p1.a(p2, p3 + "whenBuilding_rotateTo_rotateTurretX", (String) null);
        if (rotateTurretX != null) {
            v13.aa = p0.d(rotateTurretX);
            if (v13.aa == null) {
                throw new RuntimeException("Cannot find turret:" + rotateTurretX + " for [" + p2 + "]" + p3 + "whenBuilding_rotateTo_rotateTurretX");
            }
            if (v13.X) {
                throw new RuntimeException("whenBuilding_rotateTo_orBackwards:true not supported with [" + p2 + "]" + p3 + "whenBuilding_rotateTo_rotateTurretX");
            }
        }

        if (v13.Z && v13.W == null) {
            v13.W = Float.valueOf(0f);
        }

        v13.ab = p1.a(p0, p2, p3 + "whenBuilding_triggerAction", (u618) null);
        v13.Q = p1.a(p2, p3 + "convertTo_keepCurrentTags", Boolean.valueOf(v13.Q)).booleanValue();
        v13.R = as512.a(p1, p2, p3 + "convertTo_keepCurrentFields");

        if (v12n != null && !"NONE".equalsIgnoreCase(v12n)) {
            v13.l = p0.a(v12n, p3 + "whenBuilding_temporarilyConvertTo", p2);
            v13.m = v14;
            v4b = true;
        }

        if (v13.U || v13.V != null || v13.W != null || v13.l != null || v13.ab != null) {
            p0.bg = true;
        }

        v13.aM = f491.b;

        // ========== convertTo ==========
        if (v10n != null && !"NONE".equalsIgnoreCase(v10n)) {
            v13.H = p0.a(v10n, p3 + "convertTo", p2);
            v13.k = v10n;
            v13.N = false;
            v4b = true;
        }

        if (v15 != null) {
            v13.ad = v15;
            v4b = true;
        }

        if (v16 != null && v16.d()) {
            v13.ae = v16;
            v4b = true;
        }

        if (v17 != null && v17.d()) {
            v13.af = v17;
            v4b = true;
        }

        // ========== 炮塔对地射击 ==========
        v13.ah = p1.e(p2, p3 + "fireTurretXAtGround_withOffset");
        v13.ai = p1.b(p0, p2, p3 + "fireTurretXAtGround_withTarget");
        v13.ak = p1.b(p2, p3 + "fireTurretXAtGround_count", Integer.valueOf(1)).intValue();
        v13.am = b.c522.a(p0, p1.a(p2, "fireTurretXAtGround_showGuideDecals", (String) null));

        if (v13.ai != null && v13.ah == null) {
            v13.ah = new PointF(0f, 0f);
        }

        String projectile = p1.a(p2, p3 + "fireTurretXAtGround_withProjectile", (String) null);
        if (projectile != null) {
            v13.aj = p0.e(projectile);
            if (v13.aj == null) {
                throw new RuntimeException("Cannot find projectile:" + projectile + " for [" + p2 + "]" + p3 + "fireTurretXAtGround_withProjectile");
            }
        }

        String overTile = p1.a(p2, p3 + "fireTurretXAtGround_onlyOverPassableTileOf", (String) null);
        if (overTile != null) {
            v13.al = cg456.a(overTile, p3 + "fireTurretXAtGround_overPassableTileOf");
        }

        if (v11n != null) {
            cg574 turret = p0.d(v11n);
            if (turret == null) {
                throw new RuntimeException("Cannot find turret:" + v11n + " for [" + p2 + "]" + p3 + "fireTurretXAtGround");
            }
            v13.ag = Integer.valueOf(turret.e);
            if (v13.ah == null) {
                v13.j = u378.g;
                if (v13.J != null) {
                    throw new RuntimeException("[" + p2 + "]guiBuildUnit and fireTurretXAtGround (without withOffset) cannot be used in the same action");
                }
            }
            v4b = true;
        }

        v13.an = v18;
        v13.ao = v19;

        // ========== alsoTriggerAction ==========
        if (v20 != null && !"NONE".equalsIgnoreCase(v20)) {
            v13.ap = p0.b(v20, "alsoTriggerAction", p2);
            if (v21 != null) {
                if (LogicBoolean.isStaticNumber(v21)) {
                    float num = LogicBoolean.getKnownStaticNumber(v21);
                    if (num == 0f) {
                        v13.ap = null;
                    } else if (num != 1.0f) {
                        v13.ar = v21;
                    }
                } else {
                    v13.ar = v21;
                }
            }
            v4b = true;
        }

        // ========== alsoQueueAction ==========
        if (v22 != null && !"NONE".equalsIgnoreCase(v22)) {
            v13.aq = p0.b(v22, "alsoQueueAction", p2);
            v4b = true;
        }

        // ========== 效果 / 音效 ==========
        if (v23 != null) {
            v13.as = p0.a(v23, (z623) null);
            v4b = true;
        }
        if (v24 != null) {
            v13.at = p0.a(v24, (z623) null);
            v4b = true;
        }
        if (v25 != null) {
            v13.au = ce572.a(p0, v25, (ce572) null);
            v4b = true;
        }
        if (v26 != null) {
            v13.av = ce572.a(p0, v26, (ce572) null);
            v4b = true;
        }
        if (v27 != null) {
            v13.aw = ce572.a(p0, v27, (ce572) null);
            v4b = true;
        }
        if (v28 != null) {
            v13.ax = ce572.a(p0, v28, (ce572) null);
            v4b = true;
        }

        if (v29Reset != null) {
            v13.aH = v29Reset;
            v4b = true;
        }

        boolean v9n;
        if (v13.ac.size() > 0) {
            v4b = true;
            v9n = true;
        } else {
            v9n = v4b;
        }

        // ========== autoTriggerOnEvent ==========
        String autoTriggerOnEvent = p1.a(p2, p3 + "autoTriggerOnEvent", (String) null);
        Integer recursionLimit = p1.b(p2, p3 + "autoTriggerOnEventRecursionLimit", (Integer) null);

        if (recursionLimit != null) {
            if (recursionLimit.intValue() < 0) {
                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEventRecursionLimit: Cannot be < 0");
            }
            if (recursionLimit.intValue() > 100) {
                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEventRecursionLimit: Cannot be > 100");
            }
        }

        ArrayList<ae498> autoTriggerList = null;
        if (autoTriggerOnEvent != null) {
            ArrayList<ai502> parsedList = a(p2, p3 + "autoTriggerOnEvent", autoTriggerOnEvent);
            if (parsedList != null) {
                if (parsedList.size() <= 0) {
                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: Expected 1 or more options, got:" + parsedList.size());
                }

                for (ai502 item : parsedList) {
                    af499 eventType;
                    try {
                        eventType = (af499) ae1325.a(item.a, (Enum) null, af499.class);
                    } catch (ch575 e) {
                        throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + e.getMessage(), e);
                    }

                    if (autoTriggerList == null) {
                        autoTriggerList = new ArrayList<>();
                    }

                    ae498 entry = new ae498();
                    entry.a = eventType;

                    if (recursionLimit != null) {
                        entry.e = recursionLimit.intValue();
                    } else if (eventType == af499.q) {
                        entry.e = 4;
                    }

                    if (item.b != null) {
                        for (String key : item.b.keySet()) {
                            String val = item.b.get(key);
                            boolean isTag = false;

                            if ("withtag".equalsIgnoreCase(key)) {
                                if (entry.a != af499.n && entry.a != af499.q) {
                                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                                }
                                isTag = true;
                            } else if ("withprojectiletag".equalsIgnoreCase(key)) {
                                if (entry.a != af499.n) {
                                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                                }
                                isTag = true;
                            } else if ("withactiontag".equalsIgnoreCase(key)) {
                                if (entry.a != af499.f && entry.a != af499.g) {
                                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " doesn't support parameter: " + key);
                                }
                                isTag = true;
                            }

                            if (isTag) {
                                String unquoted = com.corrodinggames.rts.gameFramework.f1006.s(val);
                                if (unquoted == null) {
                                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " expected quoted string, got: " + val);
                                }
                                if (entry.d != null) {
                                    throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: " + entry.a.name() + " tag was set twice");
                                }
                                entry.d = ae1325.f(p2, p3 + "autoTriggerOnEvent", unquoted);
                            } else {
                                throw new ch575("[" + p2 + "]" + p3 + "autoTriggerOnEvent: Unknown parameter: " + key);
                            }
                        }
                    }

                    autoTriggerList.add(entry);
                }
            }
        }

        // ========== autoTrigger ==========
        LogicBoolean autoTrigger = p1.a(p0, p2, p3 + "autoTrigger", (LogicBoolean) null);
        String autoTriggerCode = p1.a(p2, p3 + "autoTrigger", (String) null);
        s616 checkRate = (s616) p1.a(p2, p3 + "autoTriggerCheckRate", p0.cb, s616.class);

        v13.n = v9n;

        if (!v9n && v13.v == null) {
            return;
        }

        // ========== 自动触发器注册 ==========
        if (autoTrigger != null && v9n) {
            r615 trigger = new r615();
            trigger.a = autoTrigger;
            trigger.b = autoTriggerCode;
            trigger.c = checkRate;
            trigger.d = new a.g492(v13,
                    p0.a(v13.k, "[" + p2 + "]" + p3, p2));
            p0.fW.add(trigger);
        }

        if (autoTriggerList != null && v9n) {
            a.g492 g492 = new a.g492(v13,
                    p0.a(v13.k, "[" + p2 + "]" + p3, p2));
            for (ae498 entry : autoTriggerList) {
                entry.b = g492;
                entry.c = p0;
                p0.gq.add(entry);
            }
        }

        if (v13.k != null && v13.q != null && v13.q.b > 0) {
            p0.gi = true;
        }

        // ========== 注册到单位定义 ==========
        p0.gh.add(v13);
    }

    // ==== from a(l609_String_String)String.java ====
    private static String a(com.corrodinggames.rts.game.units.custom.l609 p0, String p1, String p2) {
        if (p2.startsWith("SHARED:")) {
            p2 = p2.substring(7);
            p1 = "units/shared/common.ini";
        }
        if (p2.startsWith("CORE:")) {
            p2 = p2.substring(5);
            p1 = "units/common.ini";
        }
        if (p2.startsWith("ROOT:")) {
            p2 = p2.substring(5);
            if (p0.J == null) {
                p1 = "units/common.ini";
            } else {
                p1 = p0.J.o + "/common.ini";
            }
        }
        String v0 = com.corrodinggames.rts.gameFramework.f1006.j(p1) + "/";
        while (p2.startsWith("/") || p2.startsWith("\\")) {
            p2 = p2.substring(1);
        }
        return v0 + p2;
    }

    // ==== from a(p1351)Z.java ====
    private static boolean a(p1351 p0) {
        k1104 v7 = k1104.t();
        ArrayList<l609> v8 = new ArrayList<>(l609.c);
        ArrayList<l609> v9 = new ArrayList<>(l609.d);
        p1351 v10 = new p1351();

        boolean failureFlag = false;
        boolean anyChange = false;
        String errorMessage = null;

        Iterator iterator = p0.iterator();
        while (iterator.hasNext()) {
            l609 unit = (l609) iterator.next();
            l609 updated = ag500.a(unit);
            if (updated == null) {
                k1104.d("Failed to apply changes to unit type: " + unit.M);
                if (errorMessage == null && ag500.s != null) {
                    errorMessage = ag500.s;
                }
                failureFlag = true;
            } else {
                k1104.d("Changes applied to unit type: " + unit.M);
                v10.add(updated);
                anyChange = true;
            }
        }

        if (errorMessage != null && k1104.X()) {
            v7.b("Unit errors", errorMessage);
        }

        boolean loadFailed;
        if (anyChange && !ag500.b(false)) {
            loadFailed = true;
        } else {
            loadFailed = failureFlag;
        }

        if (anyChange && !loadFailed) {
            l609.e = null;
            ag500.d();
            ag500.s = null;
            p352.F();
            i988.n();

            Iterator it = v10.iterator();
            while (it.hasNext()) {
                l609 unit = (l609) it.next();
                if (unit.gt.size() > 0) {
                    v7.g(unit.gt.size() + " Warning(s) loading: " + unit.b() + " \n" + (String) unit.gt.get(0));
                    unit.gt.clear();
                }
            }
            return true;
        }

        if (loadFailed) {
            k1104.d("Failed to load some units, keeping old config");
            synchronized (l609.c) {
                l609.c.clear();
                l609.c.addAll(v8);
            }
            l609.d = v9;
        }

        return false;
    }

    // ==== from a(String)ae1325.java ====
    private static com.corrodinggames.rts.gameFramework.utility.ae1325 a(String p0) {
        synchronized (com.corrodinggames.rts.game.units.custom.ag500.n) {
            com.corrodinggames.rts.gameFramework.utility.ae1325 v0 = (com.corrodinggames.rts.gameFramework.utility.ae1325) com.corrodinggames.rts.game.units.custom.ag500.n.get(p0);
            if (v0 != null) {
                return v0;
            }
            String str = String.valueOf(p0);
            com.corrodinggames.rts.gameFramework.utility.o1350 v2 = com.corrodinggames.rts.gameFramework.e.a926.k(str);
            if (v2 == null) {
                return null;
            }
            java.io.BufferedInputStream v3 = new java.io.BufferedInputStream(v2);
            try {
                v0 = new com.corrodinggames.rts.gameFramework.utility.ae1325(v3, p0);
                v0.g = true;
                v0.c = false;
                v0.h = v2.b;
            } catch (java.io.IOException e) {
                e.printStackTrace();
                throw new com.corrodinggames.rts.game.units.custom.ch575("Load of '" + p0 + "' failed: " + e.getMessage());
            }
            com.corrodinggames.rts.game.units.custom.ag500.n.put(p0, v0);
            return v0;
        }
    }

    // ==== from a(String_b1019_String_String)l609.java ====
    private static com.corrodinggames.rts.game.units.custom.l609 a(String p0, com.corrodinggames.rts.gameFramework.i.b1019 p1, String p2, String p3) {
        try {
            long start = com.corrodinggames.rts.gameFramework.cf910.a();
            com.corrodinggames.rts.gameFramework.utility.o1350 stream = com.corrodinggames.rts.gameFramework.e.a926.k(String.valueOf(p0));
            if (stream == null) {
                throw new RuntimeException("Failed to open unit config file:" + p0);
            }
            java.io.BufferedInputStream inputStream = new java.io.BufferedInputStream(stream);
            com.corrodinggames.rts.game.units.custom.ag500.a(start, com.corrodinggames.rts.game.units.custom.ah501.g);
            com.corrodinggames.rts.game.units.custom.ag500.b++;
            if (p1 != null) {
                com.corrodinggames.rts.game.units.custom.ag500.c++;
            }
            com.corrodinggames.rts.gameFramework.k1104 k1104Instance = com.corrodinggames.rts.gameFramework.k1104.t();
            String source = "core units";
            if (p1 != null) {
                source = p1.a();
            }
            k1104Instance.dF = "Loading units - " + com.corrodinggames.rts.game.units.custom.ag500.b + " (" + source + ")";
            if (com.corrodinggames.rts.gameFramework.k1104.Z() && stream.b != null) {
                new java.io.File(stream.b).lastModified();
            }
            com.corrodinggames.rts.game.units.custom.l609 result = com.corrodinggames.rts.game.units.custom.ag500.a(p0, inputStream, p1, stream, p2, p3);
            long end = com.corrodinggames.rts.gameFramework.cf910.a();
            try {
                inputStream.close();
                stream.close();
            } catch (java.io.IOException e) {
                e.printStackTrace();
            }
            com.corrodinggames.rts.game.units.custom.ag500.a(end, com.corrodinggames.rts.game.units.custom.ah501.h);
            return result;
        } catch (RuntimeException e) {
            com.corrodinggames.rts.game.units.custom.ag500.a(p0, e, p1);
            return null;
        }
    }

    // ==== from a(String_e1216)V.java ====
    private static void a(String p0, com.corrodinggames.rts.gameFramework.m.e1216 p1) {
        com.corrodinggames.rts.game.units.custom.ag500.g.put(p0, p1);
    }

    // ==== from a(String_Exception_b1019)V.java ====
    private static void a(String p0, Exception p1, com.corrodinggames.rts.gameFramework.i.b1019 p2) {
        com.corrodinggames.rts.gameFramework.k1104.b("Error while loading unit:" + String.valueOf(p0));
        com.corrodinggames.rts.gameFramework.k1104.b(p1);

        if (p0 == null) {
            p0 = "<null>";
        }

        String v0;
        if (p1 instanceof com.corrodinggames.rts.game.units.custom.ch575) {
            v0 = p1.getMessage();
        } else {
            v0 = com.corrodinggames.rts.gameFramework.f1006.a(p1);
        }

        if (v0 == null) {
            v0 = "<No error cause>";
        }

        if (!v0.contains("unit config file")) {
            v0 = v0.replace(p0 + ": ", "");
            v0 = v0.replace(p0, "");
        }

        String v1 = com.corrodinggames.rts.game.units.custom.ag500.a(p2, p0);

        if (p2 != null) {
            v1 = "Error loading unit: " + v1 + ": \n" + v0;
        } else {
            if (v0.contains("Error loading core unit")) {
                v1 = v0;
            } else {
                v1 = "Error loading core unit: " + v1 + ": \n" + v0 + " (This might be from placing a mod in 'assets/', they should go under 'mods/')";
            }
        }

        if (p1 instanceof com.corrodinggames.rts.game.units.custom.ch575) {
            com.corrodinggames.rts.game.units.custom.ch575 ch = (com.corrodinggames.rts.game.units.custom.ch575) p1;
            if (ch.c != null || ch.d != null) {
                v1 = v1 + " (section:" + ch.c + ", key:" + ch.d + ")";
            }
        }

        if (com.corrodinggames.rts.game.units.custom.ag500.s != null) {
            com.corrodinggames.rts.game.units.custom.ag500.s = v1;
        }

        if (p2 != null) {
            p2.a(v1);
            return;
        }

        try {
            Thread.sleep(2L);
        } catch (InterruptedException e) {
        }
        throw new RuntimeException(v1, p1);
    }

    // ==== from a(String_Exception_el732)V.java ====
    public static void a(String p0, Exception p1, com.corrodinggames.rts.game.units.el732 p2) {
        com.corrodinggames.rts.gameFramework.i.b1019 v0 = null;
        if (p2 instanceof com.corrodinggames.rts.game.units.custom.l609) {
            com.corrodinggames.rts.game.units.custom.l609 l609Var = (com.corrodinggames.rts.game.units.custom.l609) p2;
            v0 = l609Var.J;
        }
        com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, v0);
    }

    // ==== from a(String_I_Z_b1019_String_String)V.java ====
    private static void a(String p0, int p1, boolean p2, b1019 p3, String p4, String p5) {
        boolean v8 = p2 && p1 == 1;
        k1104 v13 = k1104.t();

        if (p3 != null) {
            if (p3.f && !v13.bN.loadDisabledModData) {
                p3.A = true;
                return;
            } else {
                p3.A = false;
            }
        }

        if (p3 != null && p3.f) {
            k1104.d("Note: Loading disabled mod: " + p0);
        }

        a926.d();
        String[] v14 = a926.h(p0);

        if (v14 == null) {
            String v2 = a926.d();
            k1104.b("readAllCustomUnitConfigs: ERROR");
            k1104.b("readAllCustomUnitConfigs: Failed to load:" + p0);
            if (p3 != null) {
                if (!p3.B) {
                    if (v2 == null) {
                        p3.P = "Failed to list directory, check file permissions";
                    } else {
                        p3.P = "Failed to list directory: " + v2;
                    }
                } else {
                    p3.Q = "Failed to list subdirectory: '" + p0 + "' check file permissions";
                    if (v2 != null) {
                        p3.Q += ": " + v2;
                    }
                }
            }
            return;
        }

        if (p3 != null) {
            p3.B = true;
        }

        String v7;
        if (!v8) {
            v7 = p5;
            for (String v5 : v14) {
                if (v5.equalsIgnoreCase("all-units.template")) {
                    v7 = p0;
                }
            }
        } else {
            v7 = p5;
        }

        for (String v3 : v14) {
            if (v3.equals("custom_units_here.txt") ||
                v3.equals("mods_here_will_be_enabled_by_default.txt") ||
                v3.equals("__MACOSX")) {
                continue;
            }

            boolean v9;
            b1019 v5;
            if (p2 && p1 == 1 && p3 == null) {
                v5 = v13.bW.d(v3);
                if (v5 == null) {
                    k1104.b("readAllCustomUnitConfigs: Could not find linked mod:" + v3);
                    v5 = v13.bW.c;
                }
                v9 = true;
            } else {
                v9 = false;
                v5 = p3;
            }

            if (v3.toLowerCase(Locale.ENGLISH).endsWith(".ini") && !v8) {
                String v2 = p0 + "/" + v3;
                if (ag500.r != v5 && v5 != null) {
                    ag500.r = v5;
                    ag500.i();
                    k1104.d("Loading units from mod: " + v5.c);
                }
                if (v3.equalsIgnoreCase("desktop.ini")) {
                    k1104.d("Skipping possible system file: " + v2);
                } else {
                    long v10 = cf910.a();
                    ag500.a(v2, v5, p4, v7);
                    ag500.a(v10, ah501.f);
                }
            } else if (v3.toLowerCase(Locale.ENGLISH).endsWith(".tmx")) {
                String v2 = p0 + "/" + v3;
                k1104.d("Found map: " + v2);
                if (v5 != null && v5.z) {
                    v13.bW.a(v2, v5);
                } else {
                    k1104.d("Skipping map due to mod settings");
                }
            } else {
                String v2 = p0 + "/" + v3;
                if (p1 < 10) {
                    if (a926.f(v2)) {
                        String v6 = (p4 == null) ? v2 : p4;
                        long v10 = -1L;
                        if (v9) {
                            v10 = cf910.a();
                            k1104.d("============");
                            k1104.d(">>> Mod '" + v5.c() + "'" + (v5.i() ? "" : " (disabled)"));
                        }
                        ag500.a(v2, p1 + 1, p2, v5, v6, v7);
                        if (v9 && v5 != null && v5.i()) {
                            float v2tmp = cf910.a(v10);
                            double v3tmp = v2tmp;
                            k1104.d("Mod '" + v5.c() + "' load took:" + cf910.a(v3tmp));
                        }
                    }
                } else {
                    k1104.d("Too many levels:" + v2);
                }
            }
        }
    }

    // ==== from a(String_InputStream_b1019_o1350_String_String)l609.java ====
    private static l609 a(String name, InputStream is, b1019 b1019Var,
                          o1350 o1350Var, String str1, String str2) {
        k1104 k = k1104.t();
        try {
            // === 日志（仅调试模式）===
            if (ag500.a) {
                String desc = "CORE";
                if (is != null) {
                    desc = is.g();
                }
                k1104.d("Loading unit config: " + name + " [" + desc + "]");
            }

            long tStart = cf910.a();

            ae1325 reader;
            try {
                reader = new ae1325(is, name);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

            ag500.a(tStart, ah501.e);

            l609 unit = new l609();

            // 检查 dont_load，如果为 true 直接返回 null
            if (reader.a("core", "dont_load", Boolean.FALSE)) {
                return null;
            }

            // 基础字段赋值
            unit.D = name;
            unit.E = o1350Var.a();
            unit.F = unit.D;
            unit.J = b1019Var;
            unit.K = str1;
            unit.L = str2;

            ag500.e = b1019Var;
            ag500.f = false;

            long tParse = cf910.a();

            // 递归加载（copyFrom 等）
            ag500.a(unit, reader, reader, name, 0);

            // 加载 all-units.template
            if (unit.L != null) {
                ag500.a(unit, reader, unit.L + "/all-units.template");
            }

            reader.a("core", "copyFrom");

            // strictLevel 校验
            unit.R = reader.b("core", "strictLevel", 0);
            if (unit.R < 0) throw new ch575("[core]strictLevel cannot be < 0");
            if (unit.R > 1) throw new ch575("[core]strictLevel cannot yet be > 1");

            unit.gs = reader.a("core", "logIfCreditResourceUsed", Boolean.FALSE);
            reader.a("core", "dont_load");
            reader.a("core", "class", "CustomUnitMetadata");

            // 处理 @copyFrom_skipThisSection
            for (String s : reader.a("@copyFrom_skipThisSection")) {
                reader.a(s, "@copyFrom_skipThisSection");
            }
            // 处理 @copyFromSection
            for (String s : reader.a("@copyFromSection")) {
                ag500.a(unit, reader, s, s, 0);
            }

            f.a597.a(reader);

            // 资源加载路径覆盖
            String overridePath = reader.a("core", "overrideResourceLoadPath", (String) null);
            if (overridePath != null) {
                unit.F = ag500.a(unit, name, overridePath);
            }

            ag500.a(tParse, ah501.i);

            // === 名称与标签 ===
            unit.M = reader.c("core", "name");
            unit.H = reader.b();

            if (unit.M.equals("self")) {
                throw new ch575("Unit name: " + unit.M + " is reserved");
            }
            if (unit.M.startsWith("self.")) {
                throw new ch575("Unit name cannot start with self.");
            }

            String altNames = reader.a("core", "altNames", (String) null);
            if (altNames != null && !altNames.equalsIgnoreCase("NONE")) {
                for (String alt : altNames.split(",")) {
                    unit.N.add(alt.trim());
                }
            }

            unit.O = g604.a(reader.a("core", "tags", (String) null));

            if (unit.R > 0 && unit.O != null) {
                for (g604 g : unit.O.a) {
                    if (g.a.contains(" ")) {
                        throw new ch575("(strictLevel 1) [core]tags: space in tag: '" + g.a + "'");
                    }
                }
            }

            // === overrideAndReplace ===
            unit.Q = reader.a("core", "overrideAndReplace", (String) null);
            if (unit.Q != null && unit.Q.equalsIgnoreCase("NONE")) {
                unit.Q = null;
            }

            // === 内存变量定义 ===
            String defineMemory = reader.a("core", "defineUnitMemory", (String) null);
            if (defineMemory != null) {
                unit.r.addDefineValue(unit, "core", "defineUnitMemory", defineMemory);
                if (unit.r.hasArrays()) {
                    unit.a("1.15p11", 0x1c143, "core", "Memory arrays (in defineUnitMemory)");
                }
            }

            for (String memKey : reader.j("core", "@memory ")) {
                String memName = memKey.substring(8).trim();
                String memValue = reader.a("core", memKey, (String) null);
                if (memValue == null) continue;

                if (memValue.contains(",")) {
                    throw new ch575("[core]" + memKey + ": Only a single variable can be defined per @memory");
                }
                unit.r.addSingleDefine(unit, "core", memName, memValue, memKey);
                if (unit.r.hasArrays()) {
                    unit.a("1.15p11", 0x1c143, "core", "Memory arrays (in " + memKey + ")");
                }
            }

            // === 核心属性 ===
            unit.T = (ad497) reader.a("core", "onNewMapSpawn", (Enum) null, ad497.class);
            unit.aG = reader.a("core", "globalScale", 1.0f);

            unit.l(unit.E);

            // missing placeholder 处理
            if (unit.M.equals("missing")) {
                if (b1019Var == null) {
                    k1104.d("Setting missingPlaceHolder");
                    l609.b = unit;
                } else {
                    k1104.d("Not setting missingPlaceHolder, as we are in a mod");
                }
            }

            unit.aE = reader.a("core", "displayLocaleKey", (String) null);
            unit.aC = ag500.a(reader, "core", "displayText");
            unit.aD = ag500.a(reader, "core", "displayDescription");

            unit.eD = reader.a("core", "isBio", Boolean.FALSE);
            unit.eE = reader.a("core", "isBug", Boolean.FALSE);
            unit.eH = reader.a("core", "isPickableStartingUnit", Boolean.FALSE);
            unit.eI = reader.a("core", "startFallingWhenStartingUnit", Boolean.FALSE);
            unit.cy = reader.a("core", "stayNeutral", Boolean.FALSE);
            unit.cz = reader.a("core", "createNeutral", Boolean.FALSE);
            unit.cA = reader.a("core", "allowCaptureWhenNeutralByAI", Boolean.FALSE);

            if (reader.a("core", "createOnNeutralTeam", Boolean.FALSE)) {
                unit.cz = true;
            }

            unit.cB = reader.a("core", "whileNeutralTransportAnyTeam", Boolean.FALSE);
            unit.cC = reader.a("core", "whileNeutralConvertToTransportedTeam", Boolean.FALSE);
            unit.cD = reader.a("core", "convertToNeutralIfNotTransporting", Boolean.FALSE);
            if (unit.cD) unit.cy = true;

            unit.cE = reader.a("core", "createOnAggressiveTeam", Boolean.FALSE);
            unit.aF = reader.a("core", "showInEditor", Boolean.TRUE);

            // === 图形属性 ===
            unit.U = reader.b("graphics", "total_frames", 1);
            if (unit.U <= 0) {
                throw new ch575("TOTAL_FRAMES cannot be: " + unit.U + " (must be 1 or more)");
            }

            unit.W = reader.b("graphics", "frame_width", -1);
            unit.X = reader.b("graphics", "frame_height", -1);
            unit.Y = reader.b("graphics", "default_frame", 0);
            unit.ah = reader.b("graphics", "image_offsetX", 0);
            unit.ai = reader.b("graphics", "image_offsetY", 0);
            unit.aj = reader.a("graphics", "image_offsetH", 0.0f);

            if (unit.ah != 0 || unit.ai != 0 || unit.aj != 0) {
                unit.ak = true;
            }

            unit.ac = q353.a;
            if (reader.a("graphics", "teamColorsUseHue", Boolean.FALSE)) {
                unit.ac = q353.b;
            }

            String teamColoringMode = reader.a("graphics", "teamColoringMode", (String) null);
            if (teamColoringMode != null) {
                if (reader.a("graphics", "teamColorsUseHue", (Boolean) null) != null) {
                    throw new ch575("Cannot use teamColoringMode and teamColorsUseHue at the same time");
                }
                switch (teamColoringMode.toLowerCase()) {
                    case "puregreen": unit.ac = q353.a; break;
                    case "hueadd":    unit.ac = q353.b; break;
                    case "hueshift":  unit.ac = q353.d; break;
                    case "disabled":  unit.ac = q353.e; break;
                    default:
                        throw new ch575("Unknown teamColoringMode:" + teamColoringMode);
                }
            }

            unit.ab = reader.a("graphics", "imageSmoothing", Boolean.FALSE);
            unit.aa = reader.a("graphics", "imageSmoothingWhenZoomedIn", Boolean.FALSE);

            unit.Z = reader.a(unit, "graphics", "isVisible", (LogicBoolean) null);
            if (unit.Z == LogicBoolean.trueBoolean) unit.Z = null;

            unit.cL.m = reader.a("graphics", "isVisibleToEnemies", Boolean.TRUE);

            // 主图
            String image = reader.c("graphics", "image");
            unit.ad = unit.a(unit.F, image, unit.ab, "graphics", "image");
            if (unit.ad == null) {
                throw new ch575("Main unit image must be set on custom unit");
            }

            unit.ae = reader.a("graphics", "image_floatingPointSize", Boolean.FALSE);
            unit.af = unit.ad.h() / unit.U;
            unit.ag = unit.ad.g();
            if (unit.af <= 0) unit.af = 1;
            if (unit.W > 0) unit.af = unit.W;
            if (unit.X > 0) {
                unit.ag = unit.X;
                if (unit.ag < unit.ad.g()) {
                    unit.V = unit.ad.h() / unit.af;
                    if (unit.V <= 0) unit.V = 1;
                }
            }

            unit.al = unit.a(reader, "graphics", "image_back");
            unit.am = reader.a("graphics", "image_back_always_use_full_image", Boolean.FALSE);
            unit.an = unit.a(reader, "graphics", "image_wreak");
            unit.ao = unit.a(reader, "graphics", "image_turret");
            unit.as = e.l714.dP;

            // 阴影处理（AUTO / AUTO_ANIMATED / 自定义）
            String shadowImage = reader.a("graphics", "image_shadow", "NONE");
            if (shadowImage.equalsIgnoreCase("AUTO")) {
                String key = "[autoShadow:" + unit.af + "," + unit.ag + "]"
                        + unit.ad.d + "-" + unit.ad.e;
                e1216 shadow = ag500.b(key);
                if (shadow != null) {
                    unit.ap = shadow;
                } else {
                    unit.ap = ce454.a(unit.ad, unit.af, unit.ag);
                    ag500.a(unit.ap);
                    if (unit.ap != null) ag500.a(key, unit.ap);
                }
            } else if (shadowImage.equalsIgnoreCase("AUTO_ANIMATED")) {
                String key = "[autoShadowAnimated:" + unit.af + "," + unit.ag + "]"
                        + unit.ad.d + "-" + unit.ad.e;
                e1216 shadow = ag500.b(key);
                if (shadow != null) {
                    unit.ap = shadow;
                } else {
                    unit.ap = ce454.a(unit.ad, unit.ad.h(), unit.ad.g());
                    ag500.a(unit.ap);
                    if (unit.ap != null) ag500.a(key, unit.ap);
                }
                unit.aq = true;
            } else {
                unit.ap = unit.a(unit.F, shadowImage, unit.ab, "graphics", "image_shadow");
            }

            if (reader.a("graphics", "image_shadow_frames", Boolean.FALSE)) {
                unit.aq = true;
            }

            unit.ar = unit.a(unit.ad, unit.ac);
            unit.s = reader.a("graphics", "teamColorsOnTurret", Boolean.FALSE);
            if (unit.s && unit.ao != null) {
                unit.at = unit.a(unit.ao, unit.ac);
            }

            // 图像缩放
            float scaleImagesTo = reader.a("graphics", "scaleImagesTo", -1.0f);
            if (scaleImagesTo > 0) {
                unit.bH = scaleImagesTo * unit.aG / unit.af;
            }
            float imageScale = reader.a("graphics", "imageScale", 1.0f);
            if (imageScale != 1.0f) unit.bH *= imageScale;

            float scaleTurretTo = reader.a("graphics", "scaleTurretImagesTo", -1.0f);
            if (scaleTurretTo > 0) {
                if (unit.ao == null) {
                    throw new RuntimeException("scaleTurretImagesTo needs image_turret set");
                }
                unit.bI = scaleTurretTo * unit.aG / unit.ao.p;
            }
            float turretImageScale = reader.a("graphics", "turretImageScale", 1.0f);
            if (turretImageScale != 1.0f) unit.bI *= turretImageScale;

            unit.au = e.c705.e;
            e1216 shield = unit.a(reader, "graphics", "image_shield");
            if (shield != null) {
                unit.au = shield;
                unit.av = true;
            }

            unit.aw = unit.a(reader, "graphics", "icon_build", false);

            // 绘制边界
            float w = unit.ad.h() * unit.bH;
            float h = unit.ad.g() * unit.bH;
            if (w / 2f > 90f || h / 2f > 90f) {
                unit.C = new Rect();
                unit.C.left   = (int)(-w / 2f);
                unit.C.right  = (int)( w / 2f);
                unit.C.top    = (int)(-h / 2f);
                unit.C.bottom = (int)( h / 2f);
                unit.B = true;
            }

            // === 资源定义 ===
            for (String resKey : reader.l("resource_", "global_resource_")) {
                boolean isGlobal = false;
                String resName;
                if (resKey.startsWith("resource_")) {
                    resName = resKey.substring(9);
                } else {
                    resName = resKey.substring(16);
                    isGlobal = true;
                }
                resName = resName.trim();

                if (resName.contains(" ")) {
                    throw new RuntimeException("[" + resKey + "] resource codename cannot contain a space");
                }
                if (resName.matches(".*[=|:,()<>$].*")) {
                    throw new RuntimeException("[" + resKey + "] resource codename cannot contain the symbols: =|:,()<>$");
                }

                d592 res = new d592(isGlobal);
                res.a(unit, reader, resKey, resName);
                if (unit.i(res.a) != null) {
                    throw new RuntimeException("[" + resKey + "] resource with name:" + res.a + " already exists in this file");
                }
                unit.j.add(res);
            }
            for (d592 res : unit.j) {
                res.a(unit);
            }

            if (k.k()) {
                b.l531.a(unit, reader);
                b.j529.a(unit, reader);
            }
            b.m532.a(unit, reader);

            // === 自动触发 ===
            unit.ca = reader.b("core", "autoTriggerCooldownTime", 60.0f);
            if (unit.ca < 0)   throw new RuntimeException("autoTriggerCooldownTime cannot be < 0");
            if (unit.ca > 120) throw new RuntimeException("autoTriggerCooldownTime cannot be more than 2 seconds");
            if (!reader.a("core", "autoTriggerCooldownTime_allowDangerousHighCPU", Boolean.FALSE)
                    && unit.ca < 5.0f) {
                throw new RuntimeException("autoTriggerCooldownTime cannot be this low (without override)...");
            }
            unit.cb = (s616) reader.a("core", "autoTriggerCheckRate", s616.a, s616.class);
            unit.cd = reader.a("core", "autoTriggerCheckWhileNotBuilt", Boolean.FALSE);

            unit.cL.b = reader.d("core", "mass");
            unit.ce = reader.a("core", "availableInDemo", Boolean.TRUE);
            unit.cf = reader.a("core", "isLocked", Boolean.FALSE);
            unit.cg = reader.a("core", "isLockedIfGameModeNoNuke", Boolean.FALSE);

            // === 价格相关 ===
            unit.ch = d.b579.a(unit, reader, "core", "price", false);
            unit.ci = d.b579.a(unit, reader, "core", "reclaimPrice");
            unit.cj = d.b579.b(unit, reader, "core", "streamingCost");

            boolean switchPrice = reader.a("core", "switchPriceWithStreamingCost", Boolean.FALSE);
            if (switchPrice) {
                if (unit.cj != null) {
                    throw new RuntimeException("[core]streamingCost and switchPriceWithStreamingCost=true cannot be used at the same time");
                }
                unit.cj = d.b579.b(unit, reader, "core", "price");
                unit.ch = d.b579.a;
            }

            unit.ck = reader.d("core", "buildSpeed", 1.0f);
            unit.cl = reader.b("core", "techLevel", 1);
            if (unit.cl > 3)  throw new RuntimeException("techLevel cannot be greater than max tech level of:3");
            if (unit.cl <= 0) throw new RuntimeException("techLevel cannot be less than 1, it is:" + unit.cl);

            unit.cm = reader.a("core", "experimental", Boolean.FALSE);
            unit.cv = d.b579.a(unit, reader, "core", "borrowResourcesWhileAlive", true);
            unit.cw = d.b579.a(unit, reader, "core", "borrowResourcesWhileBuilt", true);
            unit.co = d.b579.a(unit, reader, "core", "generation_resources", true);

            int genCredits = reader.b("core", "generation_credits", 0);
            if (genCredits != 0) {
                unit.co = d.b579.a(unit.co, d.b579.a(genCredits));
            }

            unit.cr = reader.b("core", "generation_delay", 40);
            if (unit.cr == 0) unit.cr = 1;
            if (unit.cr < 0) throw new RuntimeException("[core]generation_delay cannot be < 0");

            unit.cs = 40.0f / unit.cr;

            if (!unit.co.c()) {
                unit.cp = new e.f594();
                unit.cp.a(unit.co);
                unit.cp.a(unit.cs);
                unit.cn = true;
            }
            if (!unit.cp.a()) {
                for (e.e593 e : unit.cp.b) {
                    if (!e.a.a() && e.a.b()) {
                        if (unit.cq == e.f594.a) unit.cq = new e.f594();
                        unit.cq.b(e.a, e.b);
                    }
                }
            }

            unit.cx = reader.a(unit, "core", "generation_active", LogicBoolean.trueBoolean);
            unit.a(unit.co);

            unit.cF = reader.a("core", "resourceRate", 0.0f);
            if (switchPrice && unit.cF != 0) {
                throw new RuntimeException("To avoid mistakes [core]resourceRate cannot be used with switchPriceWithStreamingCost=true");
            }

            String updateMemory = reader.a("core", "updateUnitMemory", (String) null);
            if (updateMemory != null) {
                unit.ct = VariableScope.createMemoryWriter(updateMemory, unit, "core", "updateUnitMemory");
            }
            unit.cu = reader.b("core", "updateUnitMemoryRate", 60.0f);
            unit.cG = reader.b("core", "resourceMaxConcurrentReclaimingThis", Integer.MAX_VALUE);
            unit.cH = reader.a("core", "similarResourcesHaveTag", (h605) null);

            unit.do = ce572.a(unit, reader.a("core", "soundOnAttackOrder", (String) null));
            unit.dp = ce572.a(unit, reader.a("core", "soundOnMoveOrder",   (String) null));
            unit.dq = ce572.a(unit, reader.a("core", "soundOnNewSelection",(String) null));

            // === 绘制层 ===
            String drawLayer = reader.a("graphics", "drawLayer", (String) null);
            if (drawLayer != null) {
                switch (drawLayer) {
                    case "experimentals": unit.cI = 4;  break;
                    case "underwater":
                    case "bottom":        unit.cI = 1;  break;
                    case "ground":        unit.cI = 2;  break;
                    case "ground2":       unit.cI = 3;  break;
                    case "air":           unit.cI = 5;  break;
                    case "top":           unit.cI = 10; break;
                    case "wreaks":        unit.cI = 0;  break;
                    default: throw new RuntimeException("unknown drawLayer:" + drawLayer);
                }
            }

            unit.cJ = reader.a("graphics", "shadowOffsetX", 0.0f);
            unit.cK = reader.a("graphics", "shadowOffsetY", 0.0f);
            unit.dB = reader.a("graphics", "rotate_with_direction", Boolean.TRUE);
            unit.dC = reader.a("graphics", "lock_body_rotation_with_main_turret", Boolean.FALSE);
            unit.dD = reader.a("graphics", "lock_shadow_rotation_with_main_turret", unit.dC);
            unit.dE = reader.a("graphics", "lock_leg_rotation_with_main_turret", Boolean.FALSE);
            unit.dH = reader.a("graphics", "whenBeingBuiltMakeTransparentTill", 1.0f);
            unit.dI = m610.a(reader, "graphics", "animation_");

            // === 特效定义 ===
            for (String fxKey : reader.b("effect_")) {
                String fxName = fxKey.substring(7);
                br552 fx = new br552(fxName);
                fx.a(unit, reader, fxKey);
                unit.gd.add(fx);
            }
            for (br552 fx : unit.gd) {
                if (fx.alsoEmitEffects         != null) fx.alsoEmitEffects.c();
                if (fx.alsoEmitEffectsOnDeath   != null) fx.alsoEmitEffectsOnDeath.c();
                if (fx.ifSpawnFailsEmitEffects  != null) fx.ifSpawnFailsEmitEffects.c();
                if (fx.trailEffect              != null) fx.trailEffect.c();
            }

            // === 运动/修复特效 ===
            unit.bJ = reader.a("graphics", "splastEffect", Boolean.FALSE);
            unit.bM = reader.a("graphics", "dustEffect",   Boolean.FALSE);
            unit.bK = reader.a("graphics", "splastEffectReverse", Boolean.TRUE);
            unit.bN = reader.a("graphics", "dustEffectReverse",   Boolean.TRUE);
            unit.bL = unit.bM || unit.bJ;

            String moveFx = reader.a("graphics", "movementEffect", (String) null);
            if (moveFx != null) {
                unit.bO = unit.a(moveFx, (z623) null);
                if (unit.bO != null && unit.bO.a()) unit.bL = true;
            }
            String moveFxRev = reader.a("graphics", "movementEffectReverse", (String) null);
            if (moveFxRev != null) {
                unit.bP = unit.a(moveFxRev, (z623) null);
                if (unit.bP != null && unit.bP.a()) unit.bL = true;
            }
            unit.bR = reader.a("graphics", "movementEffectRate", 11.0f);
            unit.bQ = reader.a("graphics", "movementEffectReverseFlipEffects", Boolean.FALSE);

            unit.bT = reader.a("graphics", "repairEffectRate", 5.0f);
            String repairFx = reader.a("graphics", "repairEffect", (String) null);
            if (repairFx != null) {
                unit.bU = unit.a(repairFx, (z623) null);
                if (unit.bU != null && unit.bU.b()) unit.bS = true;
            }
            String repairFxTgt = reader.a("graphics", "repairEffectAtTarget", (String) null);
            if (repairFxTgt != null) {
                unit.bV = unit.a(repairFxTgt, (z623) null);
                if (unit.bV != null && unit.bV.b()) unit.bS = true;
            }

            unit.bX = reader.a("graphics", "reclaimEffectRate", 5.0f);
            String reclaimFx = reader.a("graphics", "reclaimEffect", (String) null);
            if (reclaimFx != null) {
                unit.bY = unit.a(reclaimFx, (z623) null);
                if (unit.bY != null && unit.bY.b()) unit.bW = true;
            }
            String reclaimFxTgt = reader.a("graphics", "reclaimEffectAtTarget", (String) null);
            if (reclaimFxTgt != null) {
                unit.bZ = unit.a(reclaimFxTgt, (z623) null);
                if (unit.bZ != null && unit.bZ.b()) unit.bW = true;
            }

            // === 动画 ===
            unit.ds.a(unit, reader, "graphics", "animation_" + unit.ds.a + "_");
            unit.dt.a(unit, reader, "graphics", "animation_" + unit.dt.a + "_");
            unit.du.a(unit, reader, "graphics", "animation_" + unit.du.a + "_");

            for (String animKey : reader.b("animation_")) {
                String animName = animKey.substring(10);
                f603 anim = new f603(animName);
                anim.a(unit, reader, animKey, "");
                unit.dr.add(anim);
            }

            unit.ds = unit.a(n611.a, unit.ds);
            unit.dt = unit.a(n611.c, unit.dt);
            unit.du = unit.a(n611.b, unit.du);
            unit.dw = unit.a(n611.e);
            unit.dx = unit.a(n611.f);
            if (unit.dw != null && unit.dx != null) {
                throw new RuntimeException("Cannot use underConstruction and underConstructionWithLinkedBuiltTime animations at the same time");
            }
            unit.dv = unit.a(n611.d);
            unit.dy = unit.a(n611.g);
            if (unit.dy != null) unit.bg = true;
            unit.dz = unit.a(n611.h);
            unit.dA = unit.a(n611.i);

            // === 生命值/护盾/能量 ===
            unit.cL.c = reader.d("core", "maxHp");
            unit.cL.g = reader.b("core", "maxShield", 0);
            unit.cM = reader.a("core", "startShieldAtZero", Boolean.FALSE);
            unit.cL.h = reader.a("core", "shieldRegen", 0.25f);
            unit.cU = reader.a("core", "shieldDisplayOnlyDeflection", Boolean.FALSE);
            unit.cV = reader.a("core", "shieldDeflectionDisplayRate", 4.0f);
            unit.cL.l = reader.a("core", "armour", 0.0f);
            unit.cN = reader.a("core", "armourMinDamageToKeep", 1.0f);
            unit.cL.d = reader.a("core", "energyMax", 0.0f);
            unit.cO = reader.a("core", "startEnergyAtZero", Boolean.FALSE);
            unit.cP = reader.a("core", "energyRegen", 0.0f);
            unit.cS = reader.a("core", "energyStartingPercentage", 1.0f);
            unit.cR = reader.a("core", "energyNeedsToRechargeToFull", Boolean.FALSE);
            unit.cQ = reader.a("core", "energyRegenWhenRecharging", unit.cP);
            unit.cT = ag500.a(reader, "core", "energyDisplayName");

            // === 半径/足迹 ===
            unit.cW = reader.d("core", "radius");
            unit.dd = reader.b("core", "displayRadius", unit.cW);
            float radius = unit.cW;
            if (radius < 6.0f) radius = 6.0f;
            unit.de = reader.a("core", "uiTargetRadius", radius);
            unit.df = reader.b("core", "shieldRenderRadius", unit.cW);
            unit.dg = reader.b("core", "buildingSelectionOffset", 0);

            unit.cX = reader.a("core", "footprint", unit.cX);
            unit.cY = reader.a("core", "constructionFootprint", unit.cY);
            unit.cZ.set(unit.cX);
            unit.cZ = reader.a("core", "displayFootprint", unit.cZ);

            unit.da = reader.a("core", "buildingToFootprintOffsetX", 10.0f);
            unit.db = reader.a("core", "buildingToFootprintOffsetY", 10.0f);
            unit.cW = (int)(unit.cW * unit.aG);
            unit.dd = (int)(unit.dd * unit.aG);

            // === 视野/出口 ===
            unit.cL.n = reader.b("core", "fogOfWarSightRange", 15);
            unit.dh = reader.b("core", "fogOfWarSightRangeWhileNotBuilt", -1);
            unit.di = reader.a("core", "exit_x", 0.0f);
            unit.dj = reader.a("core", "exit_y", 9.0f);
            unit.dk = reader.a("core", "exit_dirOffset", (Float) null);
            unit.dl = reader.a("core", "exit_heightOffset", 0.0f);
            unit.dm = reader.a("core", "exitHeightIgnoreParent", Boolean.FALSE);
            unit.dn = reader.a("core", "exit_moveAwayAmount", 70.0f);

            // === 碰撞 ===
            unit.eB = reader.b("core", "softCollisionOnAll", 0);
            unit.eC = reader.a("core", "disableAllUnitCollisions", Boolean.FALSE);
            if (unit.eC) unit.cX.set(0, 0, -1, -1);

            unit.eJ = reader.a("core", "hideScorchMark", Boolean.FALSE);
            unit.eK = reader.a("graphics", "disableLowHpFire",  unit.eD);
            unit.eL = reader.a("graphics", "disableLowHpSmoke", unit.eD);

            // === 建筑相关 ===
            unit.aH = reader.a("core", "isBuilding", Boolean.FALSE);
            unit.aI = reader.a("core", "ignoreInUnitCapCalculation", unit.aH);
            unit.aJ = reader.a("core", "placeOnlyOnResPool", Boolean.FALSE);
            unit.aK = reader.a("core", "isUnrepairableUnit", Boolean.FALSE);
            unit.aL = reader.a("core", "extraBuildRangeWhenBuildingThis", 0.0f);
            unit.aM = reader.a("core", "isUnselectable", Boolean.FALSE);
            unit.aN = reader.a("core", "isUnselectableAsTarget", unit.aM);
            unit.fO = reader.a("core", "showActionsWithMixedSelectionIfOtherUnitsHaveTag", (h605) null);
            unit.aO = reader.a("core", "canNotBeDirectlyAttacked", Boolean.FALSE);
            unit.aP = reader.a("core", "canNotBeDamaged", unit.aO);
            unit.aQ = reader.a("core", "showOnMinimap", Boolean.TRUE);
            unit.aR = reader.a("core", "showOnMinimapToEnemies", unit.cL.m);
            unit.aS = reader.a("core", "canOnlyBeAttackedByUnitsWithTags", (h605) null);
            if (unit.aO && unit.aS != null) {
                throw new RuntimeException("canNotBeDirectlyAttacked and canOnlyBeAttackedByUnitsWithTags cannot be used at the same time");
            }

            unit.aT = reader.a("core", "canNotBeGivenOrdersByPlayer", Boolean.FALSE);
            unit.aU = reader.a("core", "canRepairBuildings", Boolean.FALSE);
            unit.aV = reader.a("core", "canRepairUnits", Boolean.FALSE);
            unit.aW = reader.a("core", "autoRepair", Boolean.FALSE);
            if (unit.aW) unit.a(b.b521.a);

            // === 纳米修复/建造 ===
            unit.cL.o = reader.b("core", "nanoRange", -1);
            if (unit.cL.o != -1) unit.cL.o = (int)(unit.cL.o * unit.aG);

            unit.aY = reader.a("core", "nanoRangeForRepairIsMelee", Boolean.FALSE);
            if (unit.aY) unit.aX = 5;
            int nanoRangeRepair = reader.b("core", "nanoRangeForRepair", -1);
            if (nanoRangeRepair != -1) {
                unit.aX = (int)(nanoRangeRepair * unit.aG);
            }

            unit.ba = reader.a("core", "nanoRangeForReclaimIsMelee", Boolean.FALSE);
            if (unit.ba) unit.aZ = 5;
            int nanoRangeReclaim = reader.b("core", "nanoRangeForReclaim", -1);
            if (nanoRangeReclaim != -1) {
                unit.aZ = (int)(nanoRangeReclaim * unit.aG);
            }

            unit.bb = reader.a("core", "nanoRepairSpeed", 0.2f);
            unit.bc = reader.a("core", "nanoReclaimSpeed", unit.bb * 5.1f);
            unit.bd = reader.a("core", "resourceReclaimMultiplier", 1.0f);
            unit.be = reader.a("core", "nanoUnbuildSpeed", 1.0f) * 0.001f * 5.1f;
            unit.bf = reader.a("core", "nanoBuildSpeed", 1.0f);
            unit.cL.r = reader.a("core", "nanoFactorySpeed", 1.0f);
            unit.cL.p = reader.a("core", "selfRegenRate", 0.0f);
            unit.bh = reader.d("core", "selfBuildRate", 0.0f);
            unit.bi = reader.a("core", "dieOnConstruct", Boolean.FALSE);
            unit.bk = reader.a("core", "dieOnZeroEnergy", Boolean.FALSE);

            // === 死亡相关 ===
            int numBitsOnDeath = 4;
            if (unit.cL.b > 30000.0f) numBitsOnDeath = 8;
            if (unit.aH)                numBitsOnDeath = 7;
            unit.bq = reader.b("core", "numBitsOnDeath", numBitsOnDeath);

            unit.bn = reader.a("core", "nukeOnDeath", Boolean.FALSE);
            unit.bo = reader.a("core", "nukeOnDeathRange", 250.0f);
            unit.bp = reader.a("core", "nukeOnDeathDamage", 5400.0f);
            unit.br = reader.a("core", "nukeOnDeathDisableWhenNoNuke", Boolean.FALSE);
            unit.bm = reader.b("core", "fireOnDeath", 0);
            unit.bt = (bt441) reader.a("core", "explodeTypeOnDeath", (Enum) null, bt441.class);
            unit.bu = reader.a("core", "explodeOnDeath", Boolean.TRUE);
            unit.bs = reader.a("core", "disableDeathOnZeroHp", Boolean.FALSE);

            boolean explodeGC1 = reader.a("core", "explodeOnDeathGroundCollosion", Boolean.TRUE);
            unit.bv = reader.a("core", "explodeOnDeathGroundCollision", explodeGC1);

            unit.by = unit.a(reader.a("core", "effectOnDeath", (String) null), (z623) null);
            unit.bx = unit.a(reader.a("core", "effectOnDeathIfUnbuilt", (String) null), (z623) null);
            unit.bz = ce572.a(unit, reader.a("core", "soundOnDeath", (String) null));
            String effDeathGC1 = reader.a("core", "effectOnDeathGroundCollosion", (String) null);
            String effDeathGC2 = reader.a("core", "effectOnDeathGroundCollision", effDeathGC1);
            unit.bw = unit.a(effDeathGC2, (z623) null);

            unit.bC = ci576.a(unit, reader, "core", "unitsSpawnedOnDeath");
            unit.bD = reader.a("core", "unitsSpawnedOnDeath_setToTeamOfLastAttacker", Boolean.FALSE);

            // === 回收/修复能力 ===
            unit.fk = reader.a("core", "canReclaimResources", Boolean.FALSE);
            unit.fl = reader.a("core", "canReclaimResourcesOnlyWithTags", (h605) null);
            unit.fm = reader.b("core", "canReclaimResourcesNextSearchRange", 500);
            unit.fn = reader.a("core", "canReclaimUnitsOnlyWithTags", (h605) null);
            unit.fo = reader.a("core", "canRepairUnitsOnlyWithTags", (h605) null);

            if (unit.fn != null && !unit.aV && !unit.aU) {
                throw new RuntimeException("canReclaimUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true");
            }
            if (unit.fo != null && !unit.aV && !unit.aU) {
                throw new RuntimeException("canRepairUnitsOnlyWithTags requires canRepairUnits:true or canRepairBuildings:true");
            }

            // === 运输 ===
            unit.eM = reader.b("core", "maxTransportingUnits", 0);
            if (unit.eM < 0) throw new RuntimeException("maxTransportingUnits cannot be < 0");

            unit.eN = reader.b("core", "transportUnitsUnloadDelayBetweenEachUnit", 30.0f);
            unit.eP = g604.a(reader.a("core", "transportUnitsRequireTag", (String) null));

            String transportMoveType = reader.a("core", "transportUnitsRequireMovementType", (String) null);
            if (transportMoveType != null) {
                for (String mt : transportMoveType.split(",")) {
                    unit.eQ.add(cg456.a(mt.trim(), "transportUnitsRequireMovementType"));
                }
            }

            unit.eO = reader.a("core", "transportUnitsEachUnitAlwaysUsesSingleSlot", Boolean.FALSE);
            unit.eR = reader.a("core", "transportUnitsBlockAirAndWaterUnits", unit.eQ.size() == 0);
            unit.eS = reader.a("core", "transportUnitsBlockOtherTransports", Boolean.TRUE);
            unit.eU = reader.a(unit, "core", "transportUnitsKeepBuiltUnits",  LogicBoolean.falseBoolean);
            unit.eV = reader.a(unit, "core", "transportUnitsKillOnDeath",    LogicBoolean.trueBoolean);
            unit.eW = reader.a(unit, "core", "transportUnitsKeepWaypoints",  LogicBoolean.falseBoolean);
            unit.eY = reader.a("core", "transportUnitsHealBy", 0.0f);

            unit.fc = reader.a(unit, "core", "transportUnitsCanUnloadUnits", (LogicBoolean) null);
            if (unit.fc != null) {
                unit.fd = unit.fc;
            } else {
                unit.fc = l609.fa;
                unit.fd = l609.fb;
            }

            unit.eT = reader.a("core", "transportUnitsAddUnloadOption", unit.fc != LogicBoolean.falseBoolean);
            unit.eX = reader.a("core", "transportUnitsOnTeamChangeKeepCurrentTeam", unit.eX);
            unit.eZ = reader.b("core", "transportSlotsNeeded", 1);

            // === builtFrom_X_* ===
            for (int i = -1; i <= 29; i++) {
                String prefix = (i == -1) ? "builtFrom_" : ("builtFrom_" + i + "_");
                String keyName = prefix + "name";
                String builtFromNames = reader.a("core", keyName, (String) null);
                if (builtFromNames == null) continue;

                for (String n : builtFromNames.split(",")) {
                    String trimmed = n.trim();
                    if (trimmed.equals("")) continue;

                    p613 pf = new p613();
                    pf.a = trimmed;
                    pf.b = reader.a("core", prefix + "pos", 999.0f);
                    pf.c = reader.a("core", prefix + "forceNano", Boolean.FALSE);
                    pf.d = "[core]" + keyName;
                    pf.f = reader.a(unit, "core", prefix + "isLocked", (LogicBoolean) null);
                    pf.g = ag500.a(reader, "core", prefix + "isLockedMessage");
                    if (pf.f == LogicBoolean.falseBoolean) pf.f = null;
                    if (!trimmed.equalsIgnoreCase("NONE")) {
                        unit.gg.add(pf);
                    }
                }
            }

            // === canBuild_X_* ===
            for (int i = 0; i <= 50; i++) {
                String buildName = reader.a("core", "canBuild_" + i + "_name", (String) null);
                if (buildName != null) {
                    ag500.a(unit, reader, "core", "canBuild_" + i + "_");
                }
            }
            for (String canBuildKey : reader.b("canBuild_")) {
                ag500.a(unit, reader, canBuildKey, "");
            }

            unit.ff = bx558.a(unit, reader);

            // === 移动类型 ===
            String movementType = reader.c("movement", "movementType");
            unit.fg = cg456.a(movementType, "movementType");
            unit.fh = !unit.aH ? unit.fg : cg456.a;

            // === AI 用途 ===
            Boolean useAsBuilder = reader.a("ai", "useAsBuilder", (Boolean) null);
            unit.fs = reader.a("ai", "useAsAttacker", Boolean.TRUE);
            Boolean isBuilder = reader.a("core", "isBuilder", (Boolean) null);

            Boolean fpVal, fqVal;
            if (isBuilder != null) {
                fpVal = isBuilder;
                fqVal = (useAsBuilder != null) ? useAsBuilder : isBuilder;
            } else if (useAsBuilder != null) {
                fpVal = useAsBuilder;
                fqVal = useAsBuilder;
            } else {
                fpVal = Boolean.FALSE;
                fqVal = Boolean.FALSE;
            }
            unit.fp = fpVal;
            unit.fq = fqVal;

            if (!unit.fp && unit.fq) {
                throw new RuntimeException("Cannot tell AI to use a non-builder as builder [ai]useAsBuilder:"
                        + unit.fq + " [core]isBuilder:" + unit.fp);
            }

            if (unit.fk) unit.fr = true;
            Boolean useAsHarvester = reader.a("ai", "useAsHarvester", (Boolean) null);
            if (useAsHarvester != null) unit.fr = useAsHarvester;

            Boolean useAsTransport = reader.a("ai", "useAsTransport", (Boolean) null);
            if (useAsTransport == null) {
                useAsTransport = (unit.eM > 0 && !unit.fq && !unit.aH);
            }
            if (!unit.eT) useAsTransport = Boolean.FALSE;
            unit.ft = useAsTransport;

            // === 图标/绘制资源 ===
            if (unit.aH) {
                unit.as = d.f655.q;
            } else if (unit.fg == cg456.d) {
                unit.as = b.b412.n;
            } else if (unit.fg == cg456.e) {
                unit.as = h.h762.q;
            } else if (unit.fg == cg456.f) {
                if (unit.cm)           unit.as = e.l714.dQ;
                else if (unit.l())     unit.as = e.b704.h;
                else                   unit.as = e.h710.n;
            } else {
                if (unit.cm)           unit.as = e.l714.dQ;
                else if (unit.l())     unit.as = e.b704.h;
                else                   unit.as = e.l714.dP;
            }

            e1216 iconZoomedOut = unit.a(reader, "graphics", "icon_zoomed_out", false);
            if (iconZoomedOut != null) {
                unit.as = unit.a(iconZoomedOut, unit.ac);
            }
            if (reader.a("graphics", "icon_zoomed_out_neverShow", Boolean.FALSE)) {
                unit.as = null;
            }

            // === HUD 显示 ===
            unit.t = reader.a("graphics", "showHealthBar", Boolean.TRUE);
            unit.u = reader.a("graphics", "showHealthBarChanges", Boolean.TRUE);
            unit.v = reader.a("graphics", "showEnergyBar", Boolean.TRUE);
            unit.w = reader.a("graphics", "showShotDelayBar", Boolean.TRUE);
            unit.x = reader.a("graphics", "showTransportBar", Boolean.TRUE);
            unit.y = reader.a("graphics", "showShieldBar", Boolean.TRUE);
            unit.z = reader.a("graphics", "showQueueBar", Boolean.TRUE);
            unit.A = reader.a("graphics", "showSelectionIndicator", Boolean.TRUE);

            unit.fi = reader.a("movement", "slowDeathFall", Boolean.FALSE);
            unit.fj = reader.a("movement", "slowDeathFallSmoke", Boolean.TRUE);

            // === 移动参数 ===
            unit.cL.j = reader.a("movement", "moveSpeed", 1.0f) * unit.aG;
            unit.dN = reader.a("movement", "moveAccelerationSpeed", 1.0f) * unit.aG;
            unit.dO = reader.a("movement", "moveDecelerationSpeed", 1.0f) * unit.aG;

            Boolean ignoreMoveOrders = reader.a("movement", "ignoreMoveOrders", (Boolean) null);
            if (unit.aH) unit.dP = true;
            if (ignoreMoveOrders != null) {
                if (ignoreMoveOrders) {
                    unit.dP = true;
                    if (unit.cL.j > 0) {
                        throw new RuntimeException("[movement]ignoreMoveOrders expects moveSpeed=0");
                    }
                } else {
                    if (unit.aH) {
                        throw new RuntimeException("[movement]ignoreMoveOrders=false not yet supported on buildings");
                    }
                }
            }

            unit.ej = reader.a("movement", "moveYAxisScaling", 1.0f);
            if (unit.ej <= 0) throw new RuntimeException("[movement]moveYAxisScaling must be > 0");
            unit.ek = 1.0f / unit.ej;
            unit.el = reader.a("movement", "reverseSpeedPercentage", 0.6f);

            String landOnGround = reader.a("movement", "landOnGround", "false");
            if (landOnGround.equalsIgnoreCase("false")) {
                unit.dQ = false;
            } else if (landOnGround.equalsIgnoreCase("onlyIdle")) {
                unit.dQ = true;
                unit.dR = true;
            } else if (landOnGround.equalsIgnoreCase("true")) {
                unit.dQ = true;
            } else {
                throw new RuntimeException("landOnGround expected:true, false, onlyIdle, not:" + landOnGround);
            }

            float targetHeight = 0.0f, targetHeightDrift = 0.0f;
            if (unit.fg == cg456.d) {
                targetHeight = 35.0f;
                targetHeightDrift = 1.5f;
            }
            unit.dS = reader.a("movement", "startingHeightOffset", 0.0f);
            unit.cL.q = reader.a("movement", "targetHeight", targetHeight);
            unit.dT = reader.a("movement", "targetHeightDrift", targetHeightDrift);
            if (unit.cL.q > 80.0f) unit.B = true;
            unit.dU = reader.a("movement", "heightChangeRate", unit.dU);
            unit.dV = reader.a("movement", "fallingAcceleration", unit.dV);
            unit.dW = reader.a("movement", "fallingAccelerationDead", unit.dW);
            unit.cL.k = reader.a("movement", "maxTurnSpeed", 1.0f);
            unit.eo = reader.a("movement", "turnAcceleration", 1.0f);
            unit.dX = reader.a("movement", "moveSlidingMode", Boolean.FALSE);
            unit.dY = reader.a("movement", "moveIgnoringBody", Boolean.FALSE);
            unit.dZ = reader.b("movement", "moveSlidingDir", -1);
            unit.ei = reader.a("movement", "joinsGroupFormations", Boolean.TRUE);

            // === 攻击参数 ===
            unit.ea = reader.a("attack", "turretSize", 1.0f) * unit.aG;
            unit.eb = reader.a("attack", "turretTurnSpeed", 8.0f);
            unit.dL = reader.a("attack", "turretRotateWithBody", Boolean.TRUE);

            String attackMovement = reader.a("attack", "attackMovement", "normal");
            unit.ec = b421.a;
            if (attackMovement.equalsIgnoreCase("normal"))   unit.ec = b421.a;
            if (attackMovement.equalsIgnoreCase("strafing")) unit.ec = b421.b;
            if (attackMovement.equalsIgnoreCase("bomber"))   unit.ec = b421.d;

            unit.ef = reader.a("attack", "disablePassiveTargeting", Boolean.FALSE);
            unit.eg = reader.a("attack", "stopTargetingAfterFiring", Boolean.FALSE);
            unit.eh = reader.a("attack", "turretMultiTargeting", Boolean.FALSE);
            unit.ed = reader.a("attack", "attackMovementSpeed", 1.0f);
            unit.ee = reader.a("attack", "attackMovementSpread", 1.0f);

            Float maxAttackRange = reader.a("attack", "maxAttackRange", (Float) null);
            boolean hasMaxAttackRange;
            if (maxAttackRange != null) {
                unit.cL.i = maxAttackRange * unit.aG;
                hasMaxAttackRange = true;
            } else {
                unit.cL.i = 100.0f * unit.aG;
                hasMaxAttackRange = false;
            }

            unit.ez = reader.a("attack", "aimOffsetSpread", 0.6f);
            unit.dM = reader.b("attack", "shootDelay", 50.0f);
            unit.cL.e = reader.a("attack", "shootDelayMultiplier", 1.0f);
            unit.cL.f = reader.a("attack", "shootDamageMultiplier", 1.0f);
            unit.dK = reader.a("attack", "showRangeUIGuide", (Boolean) null);
            unit.eF = reader.a("attack", "isMelee", Boolean.FALSE);
            unit.eG = 0.0f;

            Float meleeDist = reader.a("attack", "meleeEngangementDistance", (Float) null);
            if (unit.eF) {
                unit.eG = (meleeDist != null) ? meleeDist : 250.0f;
            } else if (meleeDist != null) {
                throw new RuntimeException("[attack]meleeEngangementDistance can only be used with isMelee:true");
            }

            ag500.a(tStart, ah501.k);

            // === 投射物 ===
            for (String projKey : reader.b("projectile_")) {
                String projName = projKey.substring(11);
                if (unit.e(projName) != null) {
                    throw new RuntimeException("Two projectiles found with the same name:" + projName);
                }
                ca568 proj = new ca568();
                proj.bh = projName;
                proj.bj = unit;
                ca568.a(proj, unit, reader, projKey);
            }

            int projCount = Math.max(1, unit.fT.size());
            unit.fR = new ca568[projCount];
            for (int i = 0; i < unit.fT.size(); i++) {
                ca568 p = unit.fT.get(i);
                p.bi = i;
                unit.fR[i] = p;
            }
            for (ca568 p : unit.fR) {
                if (p == null) continue;
                p.w  *= unit.aG;
                p.au *= unit.aG;
                p.aF *= unit.aG;
            }

            if (unit.fR[0] == null) {
                ca568 p = new ca568();
                p.bi = 0;
                p.bh = "1";
                p.b  = 10;
                unit.fT.add(p);
                unit.fR[0] = p;
            }

            // === 炮塔 ===
            List<cg574> turrets = unit.fS;
            for (String turretKey : reader.b("turret_")) {
                String turretName = turretKey.substring(7);
                if (unit.d(turretName) != null) {
                    throw new RuntimeException("Two turrets found with the same name:" + turretName);
                }
                cg574 t = new cg574();
                t.a = turretName;
                t.b = turretKey;
                turrets.add(t);
            }
            for (cg574 t : turrets) {
                cg574.a(t, unit, reader, t.b);
            }

            if (turrets.isEmpty()) {
                cg574 t = new cg574();
                t.f = 0.0f;
                t.g = 0.0f;
                t.a = "1";
                t.m = unit.dM;
                turrets.add(t);
            }

            for (int i = turrets.size() - 1; i >= 0; i--) {
                if (turrets.get(i) != null) turrets.get(i).e = i;
            }
            for (int i = turrets.size() - 1; i >= 0; i--) {
                cg574 t = turrets.get(i);
                if (t == null) continue;
                if (t.y != null) {
                    t.w = t.y.e;
                    if (t.y.y != null) {
                        throw new RuntimeException(t.a + ": Turret can not be attached to turret that is also attached to a turret");
                    }
                }
                if (t.z != null) t.x = t.z.e;
                if (t.W < 0) t.W = t.V;
            }

            if (turrets.size() > 31) throw new RuntimeException("Turret max count per unit is: 31");

            unit.fQ = turrets.toArray(new cg574[0]);
            unit.dJ = unit.cL.i;

            float limitingRange = -1.0f;
            boolean allTurretsLimitRange = true;
            boolean hasExplicitLimit = false;

            for (cg574 t : turrets) {
                t.X *= unit.aG;
                t.f *= unit.aG;
                t.g *= unit.aG;
                t.Y *= unit.aG;
                t.Z *= unit.aG;

                boolean addLimit = false;

                if (t.B) {
                    if (t.ab >= 99999.0f) {
                        allTurretsLimitRange = false;
                    } else {
                        hasExplicitLimit = true;
                        if (unit.dJ > t.ab) unit.dJ = t.ab;
                        if (limitingRange < t.ab) limitingRange = t.ab;

                        if (Math.abs(t.ab - unit.cL.i) > 5.0f) {
                            boolean exists = false;
                            for (y622 l : unit.o) {
                                if (Math.abs(t.ab - l.a) < 5.0f) { exists = true; break; }
                            }
                            if (!exists) addLimit = true;
                        }
                    }
                    if (t.ac != null && t.ac) {
                        y622 l = new y622();
                        l.a = t.ab;
                        unit.o.add(l);
                    }
                }

                if (addLimit) {
                    y622 l = new y622();
                    l.a = t.ab;
                    unit.o.add(l);
                }
            }

            if (hasExplicitLimit && allTurretsLimitRange) {
                if (!hasMaxAttackRange) {
                    unit.cL.i = limitingRange;
                } else if (limitingRange < unit.cL.i) {
                    throw new RuntimeException("limitingRange as been applied to all turrets but is less than maxAttackRange ...");
                }
            }

            String mainTurret = reader.a("attack", "setMainTurretAs", (String) null);
            if (mainTurret != null) {
                unit.dF = unit.d(mainTurret);
                if (unit.dF == null) {
                    throw new RuntimeException("[attack] Could not find setMainTurretAs with name: " + mainTurret);
                }
            } else {
                unit.dF = unit.d("1");
                if (unit.dF == null) unit.dF = unit.fQ[0];
            }
            unit.dG = unit.dF.e;

            ag500.a(tStart, ah501.l);

            // === 动作定义 ===
            long tAction = cf910.a();
            if (reader.k("core", "action_")) {
                for (int i = 0; i <= 50; i++) {
                    ag500.a(unit, reader, "core", "action_" + i + "_", String.valueOf(i), false, false);
                }
            }
            for (String actionKey : reader.b("action_")) {
                String actionName = actionKey.substring(7);
                if (unit.f(actionName) != null) {
                    throw new RuntimeException("Two actions found with the same name:" + actionName);
                }
                ag500.a(unit, reader, actionKey, "", actionName, true, false);
            }
            for (String hiddenKey : reader.b("hiddenAction_")) {
                String hiddenName = hiddenKey.substring(13);
                if (unit.f(hiddenName) != null) {
                    throw new RuntimeException("Two actions found with the same name:" + hiddenName);
                }
                ag500.a(unit, reader, hiddenKey, "", hiddenName, true, true);
            }
            ag500.a(tAction, ah501.j);

            // === 腿/手臂 ===
            List<bt554> legs = new ArrayList<>();
            List<bt554> arms = new ArrayList<>();
            for (int pass = 0; pass <= 1; pass++) {
                boolean isLeg = (pass == 0);
                List<bt554> target = isLeg ? legs : arms;
                for (int i = 1; i < 21; i++) {
                    String partKey = (isLeg ? "leg_" : "arm_") + i;
                    if (reader.d(partKey)) {
                        bt554 part = new bt554();
                        bt554.a(part, unit, reader, partKey, isLeg, target);
                        target.add(part);
                    } else {
                        target.add(null);
                    }
                }
            }

            List<bt554> allParts = new ArrayList<>();
            for (bt554 l : legs) if (l != null) allParts.add(l);
            for (bt554 a : arms) if (a != null) allParts.add(a);
            for (int i = allParts.size() - 1; i >= 0; i--) allParts.get(i).a = i;
            unit.ax = allParts.toArray(new bt554[0]);
            if (unit.ax.length > 0) unit.a(b.h527.a);

            for (f603 anim : unit.dr) anim.a(unit);

            ag500.b(unit);

            // === 死亡时对自身开火 ===
            String fireTurret = reader.a("core", "fireTurretXAtSelfOnDeath", (String) null);
            if (fireTurret != null && !fireTurret.equalsIgnoreCase("NONE")) {
                cg574 t = unit.d(fireTurret);
                if (t == null) {
                    throw new RuntimeException("Cannot find turret:" + fireTurret + " for [core]fireTurretXAtSelfOnDeath");
                }
                unit.bB = t.e;
            }

            b.c522.a(unit, reader);

            unit.bj = reader.a("attack", "dieOnAttack", Boolean.FALSE);
            unit.bl = reader.a("attack", "removeOnAttack", Boolean.FALSE);
            unit.ep = reader.b("attack", "canAttack");

            if (unit.ep) {
                unit.eq = reader.a(unit, "attack", "canAttackFlyingUnits");
                unit.er = reader.a(unit, "attack", "canAttackLandUnits");
                unit.es = reader.a(unit, "attack", "canAttackUnderwaterUnits");
            } else {
                unit.eq = reader.a(unit, "attack", "canAttackFlyingUnits",    LogicBoolean.falseBoolean);
                unit.er = reader.a(unit, "attack", "canAttackLandUnits",      LogicBoolean.falseBoolean);
                unit.es = reader.a(unit, "attack", "canAttackUnderwaterUnits", LogicBoolean.falseBoolean);
            }

            unit.et = reader.a(unit, "attack", "canAttackNotTouchingWaterUnits", (LogicBoolean) null);
            if (LogicBoolean.isStaticTrue(unit.et)) unit.et = null;

            unit.ev = reader.a("attack", "canOnlyAttackUnitsWithTags", (h605) null);
            unit.ew = reader.a("attack", "canOnlyAttackUnitsWithoutTags", (h605) null);
            if (unit.ev != null || unit.ew != null) unit.eu = true;

            boolean anyOnly = false;
            boolean noneOnly = false;
            for (cg574 t : turrets) {
                if (t.O != null && t.O.a(unit.ev)) t.O = null;
                if (t.P != null && t.P.a(unit.ew)) t.P = null;
                if (t.B) {
                    if (t.O != null || t.P != null) anyOnly = true;
                    else                            noneOnly = true;
                }
            }
            if (anyOnly && !noneOnly) {
                unit.ex = true;
                unit.eu = true;
            }

            unit.ey = reader.a("attack", "isFixedFiring", Boolean.FALSE);
            unit.fM = reader.a("ai", "lowPriorityTargetForOtherUnits", Boolean.FALSE);
            unit.fN = reader.a("ai", "notPassivelyTargetedByOtherUnits", Boolean.FALSE);
            if (unit.ep && unit.fN) {
                throw new RuntimeException("[ai]notPassivelyTargetedByOtherUnits is cannot currently supported on units that can attack");
            }

            unit.fv = reader.a("ai", "aiTags", (h605) null);
            unit.fw = reader.a("ai", "disableUse", Boolean.FALSE);
            unit.fz = reader.a("ai", "buildPriority", 0.05f);
            unit.fA = reader.b("ai", "recommendedInEachBaseNum", 0);
            unit.fB = reader.a("ai", "recommendedInEachBasePriorityIfUnmet", 0.5f);
            unit.fy = reader.b("ai", "maxEachBase", Math.max(2, unit.fA));
            unit.fx = reader.b("ai", "maxGlobal", -1);

            if (unit.fy < unit.fA) {
                throw new RuntimeException("[ai]recommendedInEachBaseNum is smaller than maxEachBase");
            }
            if (!unit.aH) {
                if (reader.m("ai", "recommendedInEachBaseNum")) {
                    throw new RuntimeException("[ai]recommendedInEachBaseNum currently only applies to buildings");
                }
                if (reader.m("ai", "recommendedInEachBasePriorityIfUnmet")) {
                    throw new RuntimeException("[ai]recommendedInEachBasePriorityIfUnmet currently only applies to buildings");
                }
            }

            unit.fE = reader.b("ai", "whenUsingAsHarvester_recommendedInEachBase", -1);
            unit.fF = reader.b("ai", "whenUsingAsHarvester_recommendedGlobal", -1);
            unit.fG = reader.a("ai", "whenUsingAsHarvester_includeOtherHarvesterCounts", Boolean.FALSE);
            unit.fH = reader.a("ai", "onlyUseAsHarvester_ifBaseHasUnitTagged", (h605) null);
            unit.fC = reader.a("ai", "nonInBaseExtraPriority", 0.04f);
            unit.fC = reader.a("ai", "noneInBaseExtraPriority", unit.fC);
            unit.fD = reader.a("ai", "nonGlobalExtraPriority", 0.0f);
            unit.fD = reader.a("ai", "noneGlobalExtraPriority", unit.fD);
            unit.fI = reader.a("ai", "upgradedFrom", (String) null);

            Float upgradePriority = reader.a("ai", "ai_upgradePriority", (Float) null);
            if (upgradePriority != null && upgradePriority != -1.0f) {
                if (upgradePriority >= 0.0f && upgradePriority <= 1.0f) {
                    unit.fK = upgradePriority * 100.0f;
                } else {
                    throw new RuntimeException("[ai]ai_upgradePriority: " + unit.fK + " must be between 0-1 or -1 for default");
                }
            }

            // === 炮塔 UI 提示 ===
            if (unit.ep) {
                for (int i = 0; i < unit.fQ.length; i++) {
                    cg574 t = unit.fQ[i];
                    if (t.B && t.ao == null && unit.w) {
                        if (t.m > 140.0f) {
                            if (unit.em == -1 || unit.fQ[unit.em].m < t.m) unit.em = i;
                        }
                        if (t.n > 80.0f) unit.en = i;
                    }
                }
            }

            // === 推断绘制层 ===
            if (unit.cI == -2) {
                if (unit.fg == cg456.d) {
                    unit.cI = 5;
                } else if (unit.j()) {
                    unit.cI = (unit.al != null) ? 3 : 2;
                } else if (unit.cL.q < -2.0f) {
                    unit.cI = 1;
                } else if (unit.eM > 0) {
                    unit.cI = 3;
                } else {
                    unit.cI = 2;
                }
            }

            // === 自动检查 ===
            if (unit.fW.size() > 0) {
                unit.fX = true;
                List<r615> fast   = new ArrayList<>();
                List<r615> medium = new ArrayList<>();
                List<r615> slow   = new ArrayList<>();
                for (r615 r : unit.fW) {
                    if (r.c == s616.a)      fast.add(r);
                    else if (r.c == s616.b) medium.add(r);
                    else if (r.c == s616.c) slow.add(r);
                    else throw new RuntimeException("Unknown check rate:" + r.c);
                }
                unit.fY = fast.toArray(new r615[0]);
                unit.fZ = medium.toArray(new r615[0]);
                unit.ga = slow.toArray(new r615[0]);
            }

            if (unit.gb.a > 0) {
                for (t617 t : unit.gb) t.a(unit);
                unit.gb.clear();
            }

            ag500.a(tStart, ah501.m);
            reader.a();

            // === 重复键警告 ===
            for (af1326 dup : reader.e) {
                String key = dup.a();
                if (key != null && (key.startsWith("hiddenAction_") || key.startsWith("canBuild_"))) {
                    throw new RuntimeException("Error [" + key + "]" + dup.b() + " has been repeated");
                }
                String msg = "Repeated key " + dup;
                unit.o(msg);
                if (unit.R > 0) {
                    k1104.d("Converting warning to error (meta.strictLevel=" + unit.R + ")");
                    throw new ch575(msg);
                }
            }

            // === 无法解析的行 ===
            for (String line : reader.f) {
                String msg = "Skipping line, unexpected format: '" + line + "'";
                unit.o(msg);
                if (unit.R > 0) {
                    k1104.d("Converting warning to error (meta.strictLevel=" + unit.R + ")");
                    throw new ch575(msg);
                }
            }

            if (b1019Var != null) b1019Var.C++;

            synchronized (l609.c) {
                l609.c.add(unit);
            }

            ag500.a(tStart, ah501.n);
            return unit;

        } catch (RuntimeException e) {
            ag500.a(name, e, b1019Var);
            return null;
        } catch (OutOfMemoryError e) {
            ag500.l++;
            ag500.a(name, new RuntimeException(e), b1019Var);
            return null;
        } catch (ch575 e) {
            ag500.a(name, e, b1019Var);
            return null;
        }
    }

    // ==== from a(String_String)String.java ====
    private static String a(String p0, String p1) {
        if (!p0.endsWith("/")) {
            p0 = p0 + "/";
        }
        while (p1.startsWith("/") || p1.startsWith("\\")) {
            p1 = p1.substring(1);
        }
        return p0 + p1;
    }

    // ==== from a(String_String_l609)i792.java ====
    public static com.corrodinggames.rts.gameFramework.a.i792 a(String p0, String p1, com.corrodinggames.rts.game.units.custom.l609 p2) {
        long v0 = com.corrodinggames.rts.gameFramework.cf910.a();
        com.corrodinggames.rts.gameFramework.a.i792 v2 = com.corrodinggames.rts.game.units.custom.ag500.b(p0, p1, p2);
        com.corrodinggames.rts.game.units.custom.ah501 v3 = com.corrodinggames.rts.game.units.custom.ah501.d;
        com.corrodinggames.rts.game.units.custom.ag500.a(v0, v3);
        return v2;
    }

    // ==== from a(String_String_String)ArrayList.java ====
    private static ArrayList a(String p0, String p1, String p2) {
        if (p2 == null || "".equals(p2) || "NONE".equalsIgnoreCase(p2)) {
            return null;
        }
        ArrayList result = new ArrayList();
        ArrayList parts = ao1335.a(p2, ",");
        for (Object partObj : parts) {
            String item = (String) partObj;
            String trimmed = item.trim();
            if ("".equals(trimmed)) {
                continue;
            }
            String name;
            String args;
            if (trimmed.contains("(") && trimmed.contains(")")) {
                String[] split = ao1335.d(trimmed, "(");
                if (split == null) {
                    throw new ch575("[" + p0 + "]" + p1 + ": Unexpected format for '" + trimmed + "' of " + p2);
                }
                name = split[0];
                args = split[1].trim();
            } else {
                name = trimmed;
                args = null;
            }
            ai502 unit = new ai502();
            unit.a = name;
            if (args != null) {
                if (args.endsWith(")")) {
                    String paramStr = args.substring(0, args.length() - 1);
                    ArrayList params = ao1335.a(paramStr, ",", false, false);
                    for (Object paramObj : params) {
                        String param = (String) paramObj;
                        if (!"".equals(param.trim())) {
                            String[] kv = ao1335.d(param, "=");
                            if (kv == null) {
                                throw new RuntimeException("[" + p0 + "]" + p1 + ": Unexpected key format for '" + trimmed + "' of " + p2);
                            }
                            String key = kv[0].trim();
                            String value = kv[1].trim();
                            if (unit.b == null) {
                                unit.b = new HashMap();
                            }
                            unit.b.put(key, value);
                        }
                    }
                } else {
                    throw new ch575("[" + p0 + "]" + p1 + ": Expected ')' in '" + trimmed + "' of " + p2);
                }
            }
            result.add(unit);
        }
        return result;
    }

    // ==== from a(String_String_Z_l609)e1216.java ====
    private static e1216 a(String p0, String p1, boolean p2, l609 p3) {
        e1216 result = null;

        if (p1 == null) {
            return null;
        }

        if (p1.equalsIgnoreCase("NONE")) {
            return null;
        }

        if (p1.equals("")) {
            return null;
        }

        int shadowFlag = 0;
        if (p1.startsWith("SHADOW:")) {
            p1 = p1.substring(7);
            shadowFlag = 1;
        }

        if (p1.startsWith("SHARED:")) {
            p1 = p1.substring(7);
            p0 = "units/shared/common.ini";
        }

        if (p1.startsWith("CORE:")) {
            p1 = p1.substring(5);
            p0 = "units/common.ini";
        }

        if (p1.startsWith("ROOT:")) {
            p1 = p1.substring(5);
            if (p3.J == null) {
                p0 = "units/common.ini";
            } else {
                p0 = p3.J.o + "/common.ini";
            }
        }

        int finalShadowFlag = 1;
        if (p1.startsWith("SHADOW:")) {
            p1 = p1.substring(7);
        } else {
            finalShadowFlag = shadowFlag;
        }

        k1104 k1104Instance = k1104.t();

        String v4 = f1006.j(p0) + "/";

        String v5 = "[" + p2 + "," + finalShadowFlag + "]" + v4 + p1;

        result = ag500.b(v5);
        if (result != null) {
            return result;
        }

        o1350 v6 = ag500.c(v4, p1, p3);

        int v2 = 0;
        if (ag500.e != null) {
            v2 = ag500.e.G;
        }

        if (v2 > 5) {
            k1104.d("Fast failing to oom image for this mod");
            result = k1104Instance.bL.o();
        } else {
            long v8 = cf910.a();
            try {
                result = k1104Instance.bL.a(v6, true);
                ag500.a(v8, ah501.a);
                if (ag500.e != null && !ag500.e.x) {
                    boolean unused = k1104.aW;
                }
            } catch (RuntimeException e) {
                k1104.d("imageStream:" + String.valueOf(v6));
                throw new RuntimeException("Error decode image from: " + a926.d(v4 + p1), e);
            }
        }

        try {
            v6.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result == null) {
            throw new RuntimeException("Failed to decode image: " + a926.e(v4 + p1));
        }

        result.a(p2);

        if (finalShadowFlag != 0) {
            result = ce454.a(result, result.p, result.q);
        }

        ag500.a(result);
        ag500.a(v5, result);

        return result;
    }

    // ==== from a(String_String_Z_l609_String_String)e1216.java ====
    public static com.corrodinggames.rts.gameFramework.m.e1216 a(String p0, String p1, boolean p2, com.corrodinggames.rts.game.units.custom.l609 p3, String p4, String p5) {
        try {
            long v0 = com.corrodinggames.rts.gameFramework.cf910.a();
            com.corrodinggames.rts.gameFramework.m.e1216 v2 = com.corrodinggames.rts.game.units.custom.ag500.a(p0, p1, p2, p3);
            com.corrodinggames.rts.game.units.custom.ag500.a(v0, com.corrodinggames.rts.game.units.custom.ah501.b);
            return v2;
        } catch (RuntimeException v0) {
            v0.printStackTrace();
            throw new RuntimeException("[" + p4 + "]" + p5 + ": " + v0.getMessage(), v0);
        }
    }

    // ==== from a(void)V.java ====
    public static void a() {
            p1351 v1 = new p1351();
            ag500.b = 0;
            ag500.c = 0;
            ag500.d = 0;
            Iterator iterator = ce454.bn().iterator();
            while (iterator.hasNext()) {
                ce454 ce454Instance = (ce454) iterator.next();
                el732 q = ce454Instance.q();
                if (q instanceof l609) {
                    if (!v1.contains(q)) {
                        v1.add((l609) q);
                    }
                }
            }
            if (v1.size() > 0) {
                ag500.a(v1);
            }
        }

    // ==== from a(Z)String.java ====
    public static String a(boolean p0) {
        java.util.ArrayList v0 = com.corrodinggames.rts.game.units.custom.ag500.c(p0);
        com.corrodinggames.rts.game.units.custom.l609.e = (java.util.ArrayList) null;
        com.corrodinggames.rts.game.units.custom.l609.d = v0;
        com.corrodinggames.rts.game.units.custom.ag500.s = (java.lang.String) null;
        com.corrodinggames.rts.gameFramework.k1104.d(new java.lang.StringBuilder("enableAll: ").append(com.corrodinggames.rts.game.units.custom.ag500.a(com.corrodinggames.rts.game.units.custom.l609.d)).toString());
        com.corrodinggames.rts.game.units.custom.ag500.d();
        return com.corrodinggames.rts.game.units.custom.ag500.s;
    }

    // ==== from b(l609)V.java ====
    private static void b(com.corrodinggames.rts.game.units.custom.l609 p0) {
        int v1 = 0;
        com.corrodinggames.rts.game.units.custom.bt554[] v8 = p0.ax;
        int v6 = 0;
        while (v6 < v8.length) {
            com.corrodinggames.rts.game.units.custom.bt554 v9 = v8[v6];
            float v3 = -1.0f;
            com.corrodinggames.rts.game.units.custom.bt554 v2 = null;
            float v7;
            if (v9.o) {
                v7 = 0.1f;
            } else {
                v7 = 1.0f;
            }
            int v0 = v1;
            while (v0 < v8.length) {
                com.corrodinggames.rts.game.units.custom.bt554 v5 = v8[v0];
                if (v9 != v5 && !v5.l) {
                    float v4 = com.corrodinggames.rts.gameFramework.f1006.a(v9.d * v7, v9.e, v5.d * v7, v5.e);
                    if (v2 == null || v4 < v3) {
                        v3 = v4;
                        v2 = v5;
                    }
                }
                v0++;
            }
            float v0_float = com.corrodinggames.rts.gameFramework.f1006.a(v3);
            float v2_float = 2.0f + v0_float;
            java.util.ArrayList v3_list = new java.util.ArrayList();
            v0 = v1;
            while (v0 < v8.length) {
                com.corrodinggames.rts.game.units.custom.bt554 v4 = v8[v0];
                if (v9 != v4 && !v4.l) {
                    float v5 = com.corrodinggames.rts.gameFramework.f1006.a(v9.d * v7, v9.e, v4.d * v7, v4.e);
                    float v10 = v2_float * v2_float;
                    if (v5 <= v10) {
                        v3_list.add(Integer.valueOf(v4.a));
                    }
                }
                v0++;
            }
            v9.S = new int[v3_list.size()];
            int v2_idx = v1;
            while (v2_idx < v3_list.size()) {
                v9.S[v2_idx] = ((Integer) v3_list.get(v2_idx)).intValue();
                v2_idx++;
            }
            v6++;
        }
    }

    // ==== from b(String)e1216.java ====
    private static com.corrodinggames.rts.gameFramework.m.e1216 b(String p0) {
        com.corrodinggames.rts.gameFramework.m.e1216 v0 = (com.corrodinggames.rts.gameFramework.m.e1216) com.corrodinggames.rts.game.units.custom.ag500.g.get(p0);
        if (v0 != null) {
            com.corrodinggames.rts.game.units.custom.ag500.j = com.corrodinggames.rts.game.units.custom.ag500.j + 1;
            com.corrodinggames.rts.game.units.custom.ag500.a(v0);
            return v0;
        }
        if (com.corrodinggames.rts.game.units.custom.ag500.k) {
            com.corrodinggames.rts.gameFramework.k1104.d("loadImageInConf: cache miss: " + String.valueOf(p0));
        }
        com.corrodinggames.rts.game.units.custom.ag500.i = com.corrodinggames.rts.game.units.custom.ag500.i + 1;
        return null;
    }

    // ==== from b(String_String_l609)i792.java ====
    private static com.corrodinggames.rts.gameFramework.a.i792 b(String p0, String p1, com.corrodinggames.rts.game.units.custom.l609 p2) {
        com.corrodinggames.rts.gameFramework.a.i792 v0 = null;

        if (p1 == null) {
            return v0;
        }
        if (!p1.equalsIgnoreCase("NONE")) {
            return v0;
        }

        com.corrodinggames.rts.gameFramework.k1104.t();

        if (!p1.contains(".")) {
            return com.corrodinggames.rts.gameFramework.a.e788.a(p1);
        }

        boolean skipPrefixChecks = false;
        if (p1.startsWith("ROOT:")) {
            p1 = p1.substring(5);
            if (p2.J == null) {
                p0 = "units/common.ini";
            } else {
                p0 = p2.J.o + "/common.ini";
                skipPrefixChecks = true;
            }
        }

        if (!skipPrefixChecks) {
            if (p1.startsWith("CORE:")) {
                p1 = p1.substring(5);
                p0 = "units/common.ini";
            }
            if (p1.startsWith("SHARED:")) {
                p1 = p1.substring(7);
                p0 = "units/shared/common.ini";
            }
        }

        String v1 = com.corrodinggames.rts.gameFramework.f1006.j(p0) + "/";
        String v2 = v1 + p1;

        v0 = com.corrodinggames.rts.game.units.custom.ag500.h.get(v2);
        if (v0 != null) {
            com.corrodinggames.rts.game.units.custom.ag500.a(v0);
            return v0;
        }

        if (!p1.toLowerCase(java.util.Locale.ROOT).endsWith(".ogg") && !p1.toLowerCase(java.util.Locale.ROOT).endsWith(".wav")) {
            throw new RuntimeException("Failed to open sound: " + v1 + p1 + " only the ogg & wav sound formats are supported.");
        }

        com.corrodinggames.rts.gameFramework.utility.o1350 stream = com.corrodinggames.rts.game.units.custom.ag500.c(v1, p1, p2);
        long v4 = com.corrodinggames.rts.gameFramework.cf910.a();
        v0 = com.corrodinggames.rts.gameFramework.a.e788.a(p1, stream);
        try {
            stream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        com.corrodinggames.rts.game.units.custom.ag500.a(v4, com.corrodinggames.rts.game.units.custom.ah501.c);

        if (v0 == null) {
            boolean isOgg = p1.toLowerCase(java.util.Locale.ROOT).endsWith(".ogg");
            String errorMsg = "Sound file found but failed to load: " + v2;
            if (isOgg) {
                errorMsg += " - Check if this file is truly a ogg";
            }
            p2.o(errorMsg);
            v0 = com.corrodinggames.rts.gameFramework.a.e788.b("Failed to load");
        } else {
            com.corrodinggames.rts.game.units.custom.ag500.a(v0);
            com.corrodinggames.rts.game.units.custom.ag500.h.put(v2, v0);
        }
        return v0;
    }

    // ==== from b(void)V.java ====
    public static void b() {
        com.corrodinggames.rts.gameFramework.utility.p1351 changed = new com.corrodinggames.rts.gameFramework.utility.p1351();
        boolean logged = false;

        java.util.Iterator<com.corrodinggames.rts.game.units.custom.l609> outerIterator = com.corrodinggames.rts.game.units.custom.l609.c.iterator();
        while (outerIterator.hasNext()) {
            com.corrodinggames.rts.game.units.custom.l609 unit = outerIterator.next();
            boolean unitChanged = false;

            java.util.Iterator<com.corrodinggames.rts.game.units.custom.aa494> innerIterator = unit.k.iterator();
            while (innerIterator.hasNext()) {
                com.corrodinggames.rts.game.units.custom.aa494 aa = innerIterator.next();
                long calculated = aa.a(false);
                if (calculated != aa.a) {
                    aa.a = calculated;
                    unitChanged = true;
                }
            }

            if (unitChanged) {
                if (!logged) {
                    com.corrodinggames.rts.gameFramework.k1104.d("Detected unit changes");
                    logged = true;
                }
                changed.add(unit);
            }
        }

        if (changed.size() > 0) {
            com.corrodinggames.rts.game.units.custom.ag500.a(changed);
        }
    }

    // ==== from b(Z)Z.java ====
    public static boolean b(boolean p0) {
        java.util.ArrayList v2 = com.corrodinggames.rts.game.units.custom.l609.d;
        java.util.ArrayList v0;
        if (p0) {
            v0 = com.corrodinggames.rts.game.units.custom.ag500.c(true);
        } else {
            v0 = com.corrodinggames.rts.game.units.custom.l609.d;
        }
        com.corrodinggames.rts.game.units.custom.ag500.s = null;
        com.corrodinggames.rts.game.units.custom.l609.d = v0;
        com.corrodinggames.rts.game.units.custom.ag500.l();
        boolean result = (com.corrodinggames.rts.game.units.custom.ag500.s == null);
        com.corrodinggames.rts.game.units.custom.l609.d = v2;
        com.corrodinggames.rts.game.units.custom.ag500.l();
        return result;
    }

    // ==== from c(String_String_l609)o1350.java ====
    private static o1350 c(String p0, String p1, l609 p2) {
        boolean safeFlag = true;
        String v2 = ag500.a(p0, p1);
        b1019 v1 = null;
        if (p2 != null) {
            v1 = p2.J;
        } else {
            k1104.f("findAssetSteam meta==null");
        }
        if (v1 != null) {
            if (p1 != null) {
                if (p1.contains("..")) {
                    if (!k1104.X()) {
                        try {
                            String v3 = new java.io.File(a926.e(v2)).getCanonicalPath();
                            String v4 = new java.io.File(a926.e("units")).getCanonicalPath();
                            if (!v3.startsWith(v4)) {
                                java.io.File tempFile = new java.io.File(v1.d());
                                v4 = tempFile.getCanonicalPath();
                                boolean startsWithMod = v3.startsWith(v4);
                                safeFlag = startsWithMod;
                                if (startsWithMod) {
                                    k1104.b("File: \'" + v3 + "\' is not within mod: \'" + v4 + "\'");
                                }
                            }
                        } catch (java.io.IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
            if (safeFlag) {
                throw new RuntimeException("File is outside mod: " + v2);
            }
        }
        o1350 result = a926.k(v2);
        if (result == null) {
            k1104.d("Orginal path: " + v2);
            throw new RuntimeException("IO Error: Failed to open: " + ag500.a(v1, v2));
        }
        return result;
    }

    // ==== from c(void)V.java ====
    public static void c() {
            if (l609.e != null) {
                com.corrodinggames.rts.gameFramework.k1104.d("applyPendingNetworkUnits: Applying new network units from server (" + l609.e.size() + " units)");
                l609.d = l609.e;
                l609.e = null;
                com.corrodinggames.rts.game.units.custom.ag500.d();
            } else {
                com.corrodinggames.rts.gameFramework.k1104.d("applyPendingNetworkUnits: no server units list found");
            }
        }

    // ==== from c(Z)ArrayList.java ====
    private static ArrayList c(boolean p0) {
        ArrayList v1 = new ArrayList();
        synchronized (l609.c) {
            Iterator v3 = l609.c.iterator();
            while (v3.hasNext()) {
                l609 v0 = (l609) v3.next();
                b1019 v4 = v0.J;
                if (v4 != null && v4.i() && p0) {
                    continue;
                }
                v1.add(v0);
            }
        }
        return v1;
    }

    // ==== from d(void)V.java ====
    public static void d() {
        synchronized (com.corrodinggames.rts.game.units.custom.ag500.o) {
            com.corrodinggames.rts.game.units.custom.ag500.j();
        }
    }

    // ==== from e(void)V.java ====
    public static void e() {
            k1104 v9 = k1104.t();
            ArrayList v10 = v9.bW.j();
            ag500.j = 0;
            ag500.i = 0;
            ag500.l = 0;
            ag500.k = false;
            long v12 = cf910.a();

            Iterator iter1 = ag500.g.values().iterator();
            while (iter1.hasNext()) {
                e1216 e1216Obj = (e1216) iter1.next();
                e1216Obj.v = false;
                if (e1216Obj.a != null) {
                    for (e1216 child : e1216Obj.a) {
                        child.v = false;
                    }
                }
                if (e1216Obj.b != null) {
                    for (e1216 child : e1216Obj.b) {
                        child.v = false;
                    }
                }
                if (e1216Obj.c != null) {
                    for (e1216 child : e1216Obj.c) {
                        child.v = false;
                    }
                }
            }

            Iterator iter2 = ag500.h.values().iterator();
            while (iter2.hasNext()) {
                i792 i792Obj = (i792) iter2.next();
                i792Obj.g = false;
            }

            byte[] v1 = null;
            byte[][] v2 = null;
            ByteBuffer[] v0 = null;
            ByteBuffer[] v6 = null;
            byte[] v7 = null;
            byte[][] v8 = null;
            try {
                v1 = new byte[0x7a1200];
                v1[0] = v9.eb;
                v9.ec = v1[1];
                v2 = new byte[2][];
                v2[0] = new byte[0x2dc6c0];
                v2[1] = new byte[0x2dc6c0];
                v2[0][0] = v9.eb;
                v2[1][0] = v9.eb;
                v0 = null;
                if (!k1104.X()) {
                    v0 = new ByteBuffer[4];
                    v0[0] = ByteBuffer.allocateDirect(0x4c4b40);
                    v0[1] = ByteBuffer.allocateDirect(0x4c4b40);
                    v0[2] = ByteBuffer.allocateDirect(0x4c4b40);
                    v0[3] = ByteBuffer.allocateDirect(0x4c4b40);
                }
                v6 = v0;
                v7 = v1;
                v8 = v2;
            } catch (OutOfMemoryError e) {
                System.gc();
                k1104.d("Failed to reserve memory pre-mod load");
                v6 = null;
                v7 = v1;
                v8 = v2;
            }

            synchronized (l609.c) {
                l609.c.clear();
            }
            l609.d.clear();
            l609.e = null;
            l609.f.clear();
            v9.bW.f.clear();
            ag500.b = 0;
            ag500.c = 0;
            synchronized (ag500.n) {
                ag500.n.clear();
            }

            String v0str = a926.r("units");
            ag500.a(v0str, 1, false, null, a926.r("units"), null);

            if (!k1104.aG && !v9.aq) {
                String v0path = ag500.h();
                if (!a926.f(v0path)) {
                    k1104.d("Modded Custom '" + v0path + "' directory not found");
                }

                Iterator<b1019> iter3 = v10.iterator();
                while (iter3.hasNext()) {
                    b1019 v3 = iter3.next();
                    if (!v3.w && v3.o != null) {
                        String v0mod = v3.o;
                        if (v3.k) {
                            v0mod = a926.r(v0mod);
                        }
                        if (v3.f) {
                            k1104.d("Disabled mod at:" + v0mod + " (name:" + v3.a() + ")");
                        } else {
                            k1104.d("Loading mod at:" + v0mod + " (name:" + v3.a() + ")");
                        }
                        ag500.a(v0mod, 2, true, v3, null, null);
                    }
                }

                Iterator<b1019> iter4 = v10.iterator();
                while (iter4.hasNext()) {
                    b1019 v3 = iter4.next();
                    if (v3.w && v3.o != null) {
                        String v0mod = v3.f();
                        if (v3.f) {
                            k1104.d("Disabled workshop mod at:" + v0mod + " (name:" + v3.a() + ")");
                        } else {
                            k1104.d("Loading workshop mod at:" + v0mod + " (name:" + v3.a() + ")");
                        }
                        ag500.a(v0mod, 2, true, v3, null, null);
                    }
                }
            }

            ag500.i();
            ag500.a(true);
            k1104.d("Done loading custom units. image cacheHits:" + ag500.j + " image cacheMisses:" + ag500.i + " (in: " + cf910.a(v12) + "ms)");
            k1104.d("========= Mods data loaded ===========");
            k1104.d("Number of mods:" + v10.size());
            Iterator<b1019> iter5 = v10.iterator();
            while (iter5.hasNext()) {
                b1019 v0mod = iter5.next();
                String v2msg = "Mod: '" + v0mod.a() + "' - Memory use:" + v0mod.k() + " " + (v0mod.i() ? "" : " (disabled)");
                k1104.d(v2msg);
            }
            k1104.d("================================");
            if (v6 != null) {
                v6[0] = null;
                v6[1] = null;
                v6[2] = null;
                v6[3] = null;
            }
            if (v8 != null) {
                v8[0] = null;
                v8[1] = null;
            }
            if (v7 != null) {
                v7[1] = v9.eb;
                v9.ec = v7[1];
                System.gc();
                System.gc();
            }
        }

    // ==== from f(void)String.java ====
    public static String f() {
        return "builtin_mods";
    }

    // ==== from g(void)String.java ====
    public static String g() {
        return "builtin_mods_enabled";
    }

    // ==== from h(void)String.java ====
    public static boolean aR;

    public static String h() {
            if (aR) {
                return "/SD/mods/units";
            } else {
                return "/SD/rustedWarfare/units";
            }
        }

    // ==== from i(void)V.java ====
    private static void i() {
        com.corrodinggames.rts.gameFramework.k1104.d("==Timing==");
        for (com.corrodinggames.rts.game.units.custom.ah501 v3 : com.corrodinggames.rts.game.units.custom.ah501.values()) {
            com.corrodinggames.rts.gameFramework.k1104.d(v3.name() + ": " + com.corrodinggames.rts.gameFramework.cf910.a(v3.o));
        }
        com.corrodinggames.rts.game.units.custom.ag500.n();
    }

    // ==== from j(void)V.java ====
    private static void j() {
            l609 v1 = null;
            ArrayList v2 = new ArrayList();
            k1104.t();
            cj459[] v3 = cj459.values();
            for (int v0 = 0; v0 < v3.length; v0++) {
                cj459 v5 = v3[v0];
                v2.add(v5);
            }
            Iterator iterator = l609.d.iterator();
            while (iterator.hasNext()) {
                l609 v0 = (l609) iterator.next();
                v2.add(v0);
                if (v0.M.equals("missing") && v0.J == null) {
                    v1 = v0;
                }
            }
            cj459.ae = v2;
            ce454.bs();
            ag500.l();
            ag500.k();
            a589.c();
            if (v1 == null) {
                k1104.d("missingPlaceHolder is not an active unit, searching for new target");
                Iterator iterator2 = l609.d.iterator();
                while (iterator2.hasNext()) {
                    l609 v0 = (l609) iterator2.next();
                    if (v0.M.equals("missing")) {
                        k1104.d("Found a missing placeholder");
                        v1 = v0;
                    }
                }
            }
            l609.b = v1;
        }

    // ==== from k(void)V.java ====
    private static void k() {
            java.util.ArrayList<com.corrodinggames.rts.game.units.custom.l609> list = com.corrodinggames.rts.game.units.custom.l609.d;
            java.util.Iterator<com.corrodinggames.rts.game.units.custom.l609> it = list.iterator();
            float v1 = 50.0f;
            float v2 = 50.0f;
            while (it.hasNext()) {
                com.corrodinggames.rts.game.units.custom.l609 item = it.next();
                float v3 = (float) item.cW;
                if (v3 > 250.0f) {
                    v3 = 250.0f;
                }
                if (v1 < v3) {
                    v1 = v3;
                }
                if (item.aH && v2 < v3) {
                    v2 = v3;
                }
            }
            com.corrodinggames.rts.game.units.custom.ag500.p = v1;
            com.corrodinggames.rts.game.units.custom.ag500.q = v2;
        }

    // ==== from l(void)V.java ====
    private static void l() {
        Object v1 = com.corrodinggames.rts.game.units.custom.ag500.o;
        synchronized (v1) {
            com.corrodinggames.rts.game.units.custom.ag500.m();
        }
    }

    // ==== from m(void)V.java ====
    private static void m() {
        l609.g.clear();
        l609.f.clear();
        for (l609 item : l609.d) {
            b1019 b = item.J;
            if (b != null) {
                String str = b.P;
                if (str != null) {
                    k1104.b(item.M + "(mod:" + item.t() + "): Getting setup while mod has error: " + str);
                }
            }
            for (p613 p : item.gg) {
                p.e = false;
            }
            item.fL.clear();
        }

        for (l609 item : l609.d) {
            try {
                if (item.Q != null) {
                    String[] split = item.Q.split(",");
                    for (String part : split) {
                        String trimmed = part.trim();
                        el732 target = l609.a(trimmed, false);
                        if (target == null) {
                            throw new ch575("Could not find overrideAndReplace target:" + trimmed);
                        }
                        if (target instanceof l609) {
                            k1104.d("Replacing:" + target.i() + " with " + item.M);
                        }
                        l609.f.put(target, item);
                    }
                }
            } catch (ch575 e) {
                ag500.a(item.M, e, item);
            }
        }

        for (cj459 value : cj459.values()) {
            ag500.a(value);
        }

        for (l609 item : l609.d) {
            ag500.a(item);
        }

        for (l609 item : l609.d) {
            for (p613 p : item.gg) {
                if (!p.e) {
                    String errorMsg = p.d + " failed to find target:" + p.a;
                    item.n(errorMsg);
                    if (item.R > 0) {
                        k1104.d("Converting warning to error (meta.strictLevel=" + item.R + ")");
                        item.m(errorMsg);
                    }
                }
            }
            if (item.gp != null && item.gp.size() > 0) {
                for (u618 u : item.gp) {
                    try {
                        u.a(item);
                    } catch (ch575 e) {
                        ag500.a(item.M, e, item);
                    }
                }
            }
        }

        for (l609 item : l609.d) {
            item.r();
        }

        java.util.Collections.sort(l609.g, new q614());
    }

    // ==== from n(void)V.java ====
    private static void n() {
        ah501[] v1 = ah501.values();
        int v2 = v1.length;
        for (int v0 = 0; v0 < v2; v0++) {
            ah501 v3 = v1[v0];
            v3.o = 0.0;
        }
    }

}
