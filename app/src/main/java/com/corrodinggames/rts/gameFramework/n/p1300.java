package com.corrodinggames.rts.gameFramework.n;

import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Typeface;
import com.corrodinggames.rts.game.a.a296;
import com.corrodinggames.rts.game.b.a325;
import com.corrodinggames.rts.game.b.h332;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.*;
import com.corrodinggames.rts.game.units.custom.g604;
import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.game.units.d.g656;
import com.corrodinggames.rts.gameFramework.e934;
import com.corrodinggames.rts.gameFramework.f.p995;
import com.corrodinggames.rts.gameFramework.f.q996;
import com.corrodinggames.rts.gameFramework.f.s998;
import com.corrodinggames.rts.gameFramework.f.u1000;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.j.ae1028;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.n.a.a1282;
import com.corrodinggames.rts.gameFramework.utility.p1351;

import java.util.ArrayList;
import java.util.Iterator;

public final class p1300 extends com.corrodinggames.rts.gameFramework.ce909 {

    // ==== from __header__.java ====
    public static boolean a;

    float A;

    float B;

    int C;

    java.util.ArrayList<PointF> D;

    public android.graphics.Paint E;

    public android.graphics.Paint F;

    public android.graphics.Paint G;

    public android.graphics.Paint H;

    final boolean I;

    public java.util.ArrayList<a1285> J;

    android.graphics.PointF K;

    int L;

    float M;

    public boolean N;

    public java.util.ArrayList O;

    android.graphics.PointF P;

    boolean Q;

    boolean R;

    java.util.ArrayList S;

    java.util.ArrayList T;

    int b;

    int c;

    com.corrodinggames.rts.game.p352 d;

    int e;

    int f;

    public java.util.ArrayList<w1307> g;

    public com.corrodinggames.rts.game.units.custom.bu555 h;

    boolean i;

    boolean j;

    public boolean k;

    public boolean l;

    boolean m;

    public boolean n;

    public boolean o;

    boolean p;

    public boolean q;

    public int r;

    java.lang.String s;

    java.lang.String t;

    int u;

    int v;

    int w;

    int x;

    public int y;

    float z;

    // ==== from _clinit_(void)V.java ====
    static {
        com.corrodinggames.rts.gameFramework.n.p1300.a = false;
    }

    // ==== from _init_(void)V.java ====
    public p1300() {
        super();
        this.f = com.corrodinggames.rts.gameFramework.n.v1306.b;
        this.g = new java.util.ArrayList();
        this.r = 0;
        this.s = null;
        this.t = null;
        this.u = 0;
        this.v = 2;
        this.w = 1;
        this.x = 0;
        this.y = 0;
        this.z = 3000.0f;
        this.A = 0.0f;
        this.B = 0.0f;
        this.C = com.corrodinggames.rts.gameFramework.n.r1302.a;
        this.D = new java.util.ArrayList();
        this.I = true;
        this.J = new java.util.ArrayList();
        this.K = new android.graphics.PointF();
        this.L = 0;
        this.M = 0.0f;
        this.O = new java.util.ArrayList();
        this.P = new android.graphics.PointF();
        this.Q = false;
        this.R = false;
        this.S = new java.util.ArrayList();
        this.T = new java.util.ArrayList();
    }

    // ==== from a(ArrayList_el732_F)V.java ====
    private void a(ArrayList p1, el732 p2, float p3) {
        if (p2 == null) {
            p2 = cj459.tank;
        }
        el732 v0 = l609.c(p2);
        if (v0 != null) {
            p2 = v0;
        }
        u1305 v1 = new u1305(this);
        v1.a = p2;
        v1.b = p3;
        p1.add(v1);
    }

    // ==== from a(ArrayList_String_F)V.java ====
    private void a(java.util.ArrayList p1, String p2, float p3) {
        com.corrodinggames.rts.game.units.el732 v0 = com.corrodinggames.rts.game.units.custom.l609.p(p2);
        ((com.corrodinggames.rts.gameFramework.n.p1300) this).a(p1, v0, p3);
        return;
    }

    // ==== from a(bg1057)V.java ====
    public final void a(com.corrodinggames.rts.gameFramework.j.bg1057 p1) {
        try {
            p1.a(this.j);
            p1.c(this.r);
            p1.c(this.u);
            p1.c(this.v);
            p1.c(this.w);
            p1.c(this.x);
            p1.a(this.z);
            p1.a(this.A);
            p1.a(this.B);
            p1.a(this.m);
            p1.c(6);
            p1.c(this.J.size());
            java.util.Iterator v1 = this.J.iterator();
            while (v1.hasNext()) {
                com.corrodinggames.rts.gameFramework.n.a1285 v0 = (com.corrodinggames.rts.gameFramework.n.a1285) v1.next();
                p1.b(v0.c);
                p1.a(v0.j);
                p1.c(v0.k);
                p1.c(v0.l);
                p1.a(v0.m);
                p1.c(v0.n);
            }
            p1.c(this.y);
            p1.a(this.l);
        } catch (Exception e) {
            com.corrodinggames.rts.gameFramework.f1006.a(e);
        }

    }

    // ==== from a(F)V.java ====
    public final void a(float f) {
        com.corrodinggames.rts.gameFramework.k1104 v3 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (this.i) {
            java.util.Iterator<com.corrodinggames.rts.gameFramework.n.a1285> v4 = this.J.iterator();
            while (v4.hasNext()) {
                com.corrodinggames.rts.gameFramework.n.a1285 v0 = (com.corrodinggames.rts.gameFramework.n.a1285) v4.next();
                if (v0.g != com.corrodinggames.rts.gameFramework.n.d1288.mapText || !v0.j) {
                    continue;
                }
                float v1 = (float) v0.a();
                float v5 = v3.ct;
                float v6 = (float) v0.b();
                float v7 = v3.cu;
                float v8 = v3.cU;
                float v9 = v3.cU;
                float v10 = v0.w;
                v1 = v1 - v5;
                v1 = v1 * v8;
                v5 = v10 + v1;
                v1 = v0.x;
                v6 = v6 - v7;
                v6 = v6 * v9;
                v1 = v1 + v6;
                if (v0.C) {
                    com.corrodinggames.rts.gameFramework.d.g923 v6Obj = com.corrodinggames.rts.gameFramework.d.c919.s[9];
                    android.graphics.Paint v7Paint = v0.B;
                    v6Obj.a(v5, v1, v7Paint);
                    v1 = v1 - (v6Obj.c - 2);
                }
                if (v0.z == null) {
                    continue;
                }
                String v6Str = v0.z.b();
                if (v6Str == null || v6Str.equals("")) {
                    continue;
                }
                com.corrodinggames.rts.gameFramework.m.fi1252 v7fi = v3.bL;
                android.graphics.Paint v0Paint = v0.B;
                v7fi.a(v6Str, v5, v1, v0Paint);
            }
        }
        if (this.k && !this.N) {
            this.B = com.corrodinggames.rts.gameFramework.f1006.a(this.B, f);
            boolean v0flag;
            if (this.B == 0.0f && this.A != 0.0f) {
                this.A = com.corrodinggames.rts.gameFramework.f1006.a(this.A, f);
                v0flag = true;
            } else {
                v0flag = false;
            }
            if (v0flag) {
                int v0Int = (int) ((this.E.getTextSize() / 2.0f) + 23.0f);
                StringBuilder v2sb = new StringBuilder("- Wave ");
                v2sb.append(this.r);
                v2sb.append(" -");
                String v2str = v2sb.toString();
                com.corrodinggames.rts.gameFramework.m.fi1252 v1fi = v3.bL;
                float v4f = v3.cC / 2.0f;
                float v5f = (float) v0Int;
                v1fi.a(v2str, v4f, v5f, this.E);
                if (this.s != null) {
                    String v1str = this.s;
                    float v0float = (float) v0Int;
                    float v5size = this.E.getTextSize();
                    v0float = v0float + v5size + 2.0f;
                    v1fi.a(v1str, v3.cC / 2.0f, v0float, this.F);
                }
            } else {
                int v1Int = (int) ((this.G.getTextSize() / 2.0f) + 23.0f);
                StringBuilder v0sb = new StringBuilder("Wave ");
                v0sb.append(this.r + 1);
                v0sb.append(" in ");
                int v4int = (int) ((double) this.z / 60.0);
                v0sb.append(com.corrodinggames.rts.gameFramework.f1006.h(String.valueOf(v4int)));
                String v0str = v0sb.toString();
                if (this.m) {
                    StringBuilder defeatSb = new StringBuilder("Defeat - Wave ");
                    defeatSb.append(this.r);
                    v0str = defeatSb.toString();
                }
                com.corrodinggames.rts.gameFramework.m.fi1252 v4fi = v3.bL;
                float v5f = v3.cC / 2.0f;
                float v6f = (float) v1Int;
                v4fi.a(v0str, v5f, v6f, this.G);
                if (this.t == null) {
                    if (!this.l) {
                        v0str = this.b(false).toString();
                    } else {
                        v0str = this.c(false).toString();
                    }
                    this.t = v0str;
                }
                String v0str2 = this.t;
                v4fi.a(v0str2, v3.cC / 2.0f, (float) v1Int + this.G.getTextSize() + 2.0f, this.H);
            }
        }
        if (this.k && this.N) {
            com.corrodinggames.rts.gameFramework.n.q1301 v1 = this.c();
            if (v1 != null) {
                int v0e = v1.e;
                int v2bv = v3.bv / 1000;
                int v4int = (int) ((this.G.getTextSize() / 2.0f) + 23.0f);
                StringBuilder v5sb = new StringBuilder("Wave ");
                v5sb.append(this.r + 1);
                v5sb.append(" in ");
                v5sb.append(com.corrodinggames.rts.gameFramework.f1006.h(String.valueOf(v0e - v2bv)));
                String v0str = v5sb.toString();
                if (this.m) {
                    StringBuilder defeatSb = new StringBuilder("Defeat - Wave ");
                    defeatSb.append(this.r);
                    v0str = defeatSb.toString();
                }
                com.corrodinggames.rts.gameFramework.m.fi1252 v2fi = v3.bL;
                v2fi.a(v0str, v3.cC / 2.0f, (float) v4int, this.G);
                String v0line2 = v1.f;
                if (v0line2 != null) {
                    v2fi.a(v0line2, v3.cC / 2.0f, (float) v4int + this.G.getTextSize() + 2.0f, this.H);
                }
            }
        }
    }

    // ==== from a(I_ce454)Z.java ====
    private static boolean a(int p0, com.corrodinggames.rts.game.units.ce454 p1) {
        if (!(p1 instanceof com.corrodinggames.rts.game.units.bp437)) {
            return false;
        }
        if (p1.bX) {
            return false;
        }
        if (p1.cw()) {
            return false;
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.a) {
            return false;
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.b) {
            return true;
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.c) {
            return p1.bq();
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.e) {
            if (!(p1 instanceof com.corrodinggames.rts.game.units.d.g656) && !p1.bR) {
                return false;
            }
            return true;
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.d) {
            if (p1.bq() && p1.br() && !(p1 instanceof com.corrodinggames.rts.game.units.d.a.c631) && !(p1 instanceof com.corrodinggames.rts.game.units.d.j659)) {
                return true;
            }
            return false;
        }
        if (p0 == com.corrodinggames.rts.gameFramework.n.v1306.f) {
            if (p1.br()) {
                return true;
            }
            if (p1.ai()) {
                return true;
            }
            return false;
        }
        return false;
    }

    // ==== from a(j1071)V.java ====
    public final void a(com.corrodinggames.rts.gameFramework.j.j1071 p1) {
        try {
            int v2 = 0;
            this.j = p1.b.readBoolean();
            this.r = p1.b.readInt();
            this.u = p1.b.readInt();
            this.v = p1.b.readInt();
            this.w = p1.b.readInt();
            this.x = p1.b.readInt();
            this.z = p1.b.readFloat();
            this.A = p1.b.readFloat();
            this.B = p1.b.readFloat();
            this.m = p1.b.readBoolean();
            int v7 = p1.b.readInt();
            if (v7 > 0) {
                int v8 = p1.b.readInt();
                int v6 = v2;
                while (v6 < v8) {
                    String v9 = p1.b.readUTF();
                    boolean v10 = p1.b.readBoolean();
                    int v5;
                    int v4;
                    if (v7 >= 2) {
                        v5 = p1.b.readInt();
                        v4 = p1.b.readInt();
                    } else {
                        v5 = v2;
                        v4 = v2;
                    }
                    boolean v3;
                    if (v7 >= 3) {
                        v3 = p1.b.readBoolean();
                    } else {
                        v3 = false;
                    }
                    int v1;
                    if (v7 >= 4) {
                        v1 = p1.b.readInt();
                    } else {
                        v1 = v2;
                    }
                    String v11 = v9.trim();
                    com.corrodinggames.rts.gameFramework.n.a1285 v0 = null;
                    java.util.Iterator v12 = this.J.iterator();
                    while (v12.hasNext()) {
                        com.corrodinggames.rts.gameFramework.n.a1285 temp = (com.corrodinggames.rts.gameFramework.n.a1285) v12.next();
                        if (temp.c.equalsIgnoreCase(v11)) {
                            v0 = temp;
                            break;
                        }
                    }
                    if (v0 == null) {
                        StringBuilder stringBuilder = new StringBuilder("MissionEngine:readIn: Could not find saved trigger:");
                        stringBuilder.append(v9);
                        stringBuilder.append(" for de/activation");
                        com.corrodinggames.rts.gameFramework.k1104.b(stringBuilder.toString());
                    } else {
                        v0.j = v10;
                        v0.k = v5;
                        v0.l = v4;
                        v0.m = v3;
                        v0.n = v1;
                    }
                    v6++;
                }
            }
            if (v7 >= 5) {
                this.y = p1.b.readInt();
            }
            if (v7 >= 6) {
                this.l = p1.b.readBoolean();
            } else {
                this.l = true;
            }
        } catch (Exception e) {
            com.corrodinggames.rts.gameFramework.f1006.a(e);
        }

    }

    // ==== from a(s1303_I_F)V.java ====
    private void a(com.corrodinggames.rts.gameFramework.n.s1303 p1, int p2, float p3) {
        if (p2 < 0) {
            p2 = 0;
        }
        int v0 = this.S.size();
        if (v0 == 0) {
            com.corrodinggames.rts.gameFramework.k1104.b("error maxTypeNum: ".concat(String.valueOf(v0)));
            return;
        }
        com.corrodinggames.rts.gameFramework.n.u1305 v1 = (com.corrodinggames.rts.gameFramework.n.u1305) this.S.get(p2 % v0);
        int v2 = (int) (((double) (p2 + 3)) * 0.5 * (double) v1.b * (double) p3);
        int v3 = (int) com.corrodinggames.rts.gameFramework.f1006.c((float) v2);
        if (v3 <= 0) {
            v3 = 1;
        }
        p1.b(v1.a, v3);
    }

    // ==== from a(String)V.java ====
    public static void a(String p0) {
        com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.gameFramework.k1104.a("MissionEngine", p0);
        com.corrodinggames.rts.gameFramework.j.ae1028.e(p0);
    }

    // ==== from a(void)V.java ====
    public static void a() {
        com.corrodinggames.rts.gameFramework.k1104.t();
    }

    // ==== from a(Z)V.java ====
    public final void a(boolean p1) throws h332 {
        k1104 v8 = k1104.t();
        this.q = false;
        this.b = v8.bv - 1000;
        this.c = v8.bv - 1000;
        this.E = new Paint();
        this.E.setARGB(255, 255, 255, 255);
        this.E.setAntiAlias(true);
        this.E.setTextAlign(Paint.Align.CENTER);
        this.E.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        v8.a(this.E, 24.0f);
        this.G = new Paint();
        this.G.setARGB(255, 255, 255, 255);
        this.G.setAntiAlias(true);
        this.G.setTextAlign(Paint.Align.CENTER);
        v8.a(this.G, 18.0f);
        this.H = new Paint();
        this.H.setARGB(255, 255, 255, 255);
        this.H.setAntiAlias(true);
        this.H.setTextAlign(Paint.Align.CENTER);
        v8.a(this.H, 14.0f);
        this.F = new Paint();
        this.F.set(this.H);
        v8.a(this.F, 18.0f);
        this.j = true;

        a325 mapInfo = null;
        if (v8.bI.R == null) {
            k1104.a("MissionEngine", "Error: 'triggers' object layer is missing from this map");
            mapInfo = null;
        } else {
            mapInfo = v8.bI.R.a("map_info");
        }

        boolean error = false;
        if (mapInfo == null) {
            k1104.a("MissionEngine", "Error: map_info is missing from this map");
            error = true;
        } else {
            error = false;
        }

        if (mapInfo != null && mapInfo.a("type") == null) {
            k1104.a("MissionEngine", "Map warning: " + "type is missing from map_info");
            ae1028.a((String) null, "Map error: " + "type is missing from map_info");
            error = true;
        }

        if (error) {
            k1104.a("MissionEngine", "Defaulting to skirmish");
            this.n = true;
            this.e = v1306.f;
            return;
        }

        this.k = "survival".equalsIgnoreCase(mapInfo.a("type"));
        if (this.k) {
            this.l = "true".equalsIgnoreCase(mapInfo.a("survivalWavesClassic"));
            if (this.l) {
                k1104.d("Classic survial waves selected");
            }
            this.S.clear();
            this.a(this.S, "scout", 0.7f);
            this.a(this.S, cj459.tank, 2.1f);
            this.a(this.S, "mechGun", 1.0f);
            this.a(this.S, "lightGunship", 2.8f);
            this.a(this.S, cj459.heavyTank, 1.9f);
            this.a(this.S, cj459.helicopter, 0.8f);
            this.a(this.S, cj459.heavyTank, 1.0f);
            this.a(this.S, cj459.heavyHoverTank, 0.8f);
            this.a(this.S, cj459.gunShip, 0.7f);
            this.a(this.S, "plasmaTank", 0.6f);
            this.a(this.S, "missileAirship", 0.4f);
            this.T.clear();
            this.a(this.T, cj459.experimentalTank, 1.0f);
            this.a(this.T, cj459.experimentalHoverTank, 0.5f);
            this.p = false;
            this.y = v8.bN.aiDifficulty;
            if (this.l) {
                this.z = 3000.0f;
            } else {
                this.z = 1200.0f;
                if (this.y < 0) {
                    this.z = 3000.0f;
                }
            }
        }

        String survivalWaves = mapInfo.a("survivalWaves");
        if (survivalWaves != null) {
            this.d(survivalWaves);
        }

        String startWithMusic = mapInfo.a("startWithMusic");
        if (startWithMusic != null) {
            v8.bK.a(startWithMusic);
        }

        this.n = "skirmish".equalsIgnoreCase(mapInfo.a("type"));
        if (this.n) {
            this.e = v1306.f;
        }

        this.o = "true".equalsIgnoreCase(mapInfo.a("shareFogWithAllies"));

        String winCondition = mapInfo.a("winCondition");
        if (winCondition == null && !this.n) {
            throw new h332("win condition not set");
        }
        if (winCondition != null) {
            if ("none".equalsIgnoreCase(winCondition)) {
                this.e = v1306.a;
            } else if ("allUnitsAndBuildings".equalsIgnoreCase(winCondition)) {
                this.e = v1306.b;
            } else if ("allBuildings".equalsIgnoreCase(winCondition)) {
                this.e = v1306.c;
            } else if ("mainBuilings".equalsIgnoreCase(winCondition)) {
                this.e = v1306.d;
            } else if ("mainBuildings".equalsIgnoreCase(winCondition)) {
                this.e = v1306.d;
            } else if ("commandCenter".equalsIgnoreCase(winCondition)) {
                this.e = v1306.e;
            } else if ("requiredObjectives".equalsIgnoreCase(winCondition)) {
                this.e = v1306.g;
            } else {
                throw new h332("unknown win condition:" + winCondition);
            }
        }
        if (this.n) {
            this.f = this.e;
        }

        this.h = mapInfo.c("introText");
        if (this.h != null) {
            this.h.a("\\\\n", "\n");
            if (this.h.a()) {
                this.h = null;
            }
        }

        if (!v8.ac() && !this.n) {
            this.d = p352.i(3);
            if (this.d != null) {
                this.d.s = 0;
            }
        }
        v8.ac();

        for (a325 obj : v8.bI.R.c) {
            if ("team_info".equalsIgnoreCase(obj.d)) {
                int teamId = Integer.parseInt(obj.a("team", "-2"));
                if (teamId == -2) {
                    throw new RuntimeException("cannot find team for:" + obj.b);
                }
                p352 team = p352.i(teamId);
                if (team == null) {
                    k1104.b("No team loaded for:" + teamId + " skipping");
                    continue;
                }
                Integer credits = obj.b("credits");
                if (credits != null) {
                    team.p = credits;
                }
                String basicAI = obj.a("basicAI");
                if (basicAI != null && v8.G()) {
                    if (team instanceof a296) {
                        k1104.b("Using basic AI:" + teamId + " by map request");
                        ((a296) team).bb = true;
                    }
                }
                String lockAiDifficulty = obj.a("lockAiDifficulty");
                if (lockAiDifficulty != null) {
                    if (team instanceof a296) {
                        k1104.b("Locking lockAiDifficulty:" + teamId + " by map request to: " + lockAiDifficulty);
                        int diff = Integer.parseInt(lockAiDifficulty);
                        ((a296) team).y = diff;
                        ((a296) team).z = true;
                        v8.bU.B();
                    }
                }
                String disabledAI = obj.a("disabledAI");
                if (disabledAI != null && v8.G()) {
                    if (team instanceof a296) {
                        k1104.b("Disabling AI:" + teamId + " by map request");
                        ((a296) team).ba = true;
                    }
                }
                String allyGroup = obj.a("allyGroup");
                if (allyGroup != null && v8.G()) {
                    team.s = Integer.parseInt(allyGroup);
                }
                String ai = obj.a("ai");
                if (ai != null) {
                    team.X = "survival".equalsIgnoreCase(ai);
                }
            }

            if ("camera_start".equalsIgnoreCase(obj.b) && !p1) {
                v8.b(obj.e, obj.f);
                this.q = true;
                Integer zoomTo = obj.b("zoomTo");
                if (zoomTo != null) {
                    v8.cS = zoomTo;
                }
            }

            if ("attack_point".equalsIgnoreCase(obj.b)) {
                this.D.add(new PointF(obj.e, obj.f));
            }

            if ("rotate".equalsIgnoreCase(obj.d)) {
                float dir = Float.parseFloat(obj.a("dir"));
                Iterator<ce454> it = ce454.bG.iterator();
                while (it.hasNext()) {
                    ce454 unit = it.next();
                    if (unit instanceof bp437 && !unit.bq() && obj.a(unit)) {
                        unit.ci = dir;
                    }
                }
            }

            if ("fall".equalsIgnoreCase(obj.d)) {
                Iterator<ce454> it = ce454.bG.iterator();
                while (it.hasNext()) {
                    ce454 unit = it.next();
                    if (unit instanceof bp437 && !unit.bq() && obj.a(unit)) {
                        unit.cE();
                    }
                }
            }

            if ("set_team".equalsIgnoreCase(obj.d)) {
                int teamId = Integer.parseInt(obj.a("team"));
                Iterator<ce454> it = ce454.bG.iterator();
                while (it.hasNext()) {
                    ce454 unit = it.next();
                    if (unit instanceof bp437 && obj.a(unit)) {
                        p352 team = p352.i(teamId);
                        if (team == null) {
                            throw new h332("Could not find team with id: " + teamId);
                        }
                        unit.e(team);
                    }
                }
            }

            if ("ai_allow_full_use".equalsIgnoreCase(obj.d)) {
                Iterator<ce454> it = ce454.bG.iterator();
                while (it.hasNext()) {
                    ce454 unit = it.next();
                    if (unit instanceof bp437 && obj.a(unit)) {
                        ((bp437) unit).bO = false;
                    }
                }
            }

            if ("disable_unit_ai".equalsIgnoreCase(obj.d)) {
                Iterator<ce454> it = ce454.bG.iterator();
                while (it.hasNext()) {
                    ce454 unit = it.next();
                    if (unit instanceof bp437 && obj.a(unit)) {
                        unit.bP = true;
                    }
                }
            }
        }

        Iterator<ce454> unitIterator = ce454.bG.iterator();
        while (unitIterator.hasNext()) {
            ce454 unit = unitIterator.next();
            if (!unit.s() && !(unit instanceof cd453) && !unit.bq() && unit.cP == null && unit.cQ == null) {
                float closestDist = 4900.0f;
                ce454 closestUnit = null;
                Iterator<ce454> otherIterator = ce454.bG.iterator();
                while (otherIterator.hasNext()) {
                    ce454 other = otherIterator.next();
                    if (other.bT()) {
                        if (unit != other && (unit.bZ == p352.i || unit.bZ.c(other.bZ))) {
                            float dist = f1006.a(other.eq, other.er, unit.eq, unit.er);
                            if (dist < closestDist && other.c(unit, true)) {
                                closestDist = dist;
                                closestUnit = other;
                            }
                        }
                    }
                }
                if (closestUnit != null) {
                    closestUnit.d(unit, true);
                }
            }
        }

        this.J.clear();
        for (a325 obj : v8.bI.R.c) {
            if (!"team_info".equalsIgnoreCase(obj.d)
                    && !"point".equalsIgnoreCase(obj.d)
                    && !"camera_pan".equalsIgnoreCase(obj.d)
                    && !"camera_start".equalsIgnoreCase(obj.b)
                    && !"map_info".equalsIgnoreCase(obj.b)
                    && !"attack_point".equalsIgnoreCase(obj.b)
                    && !"rotate".equalsIgnoreCase(obj.d)
                    && !"fall".equalsIgnoreCase(obj.d)
                    && !"set_team".equalsIgnoreCase(obj.d)
                    && !"ai_allow_full_use".equalsIgnoreCase(obj.d)
                    && !"disable_unit_ai".equalsIgnoreCase(obj.d)
                    && !"info".equalsIgnoreCase(obj.d)) {
                if (obj.n == null) {
                    p1300.a("Error: Skipping trigger:" + obj.b + " - no properties found");
                } else {
                    a1285 trigger = c1287.a(this, obj);
                    if (trigger != null) {
                        this.J.add(trigger);
                    }
                }
            }
        }

        for (a1285 trigger : this.J) {
            String activateIds = trigger.b("activateIds");
            if (activateIds == null) {
                activateIds = trigger.b("alsoActivate");
            }
            if (activateIds != null) {
                String[] ids = activateIds.split(",");
                for (String id : ids) {
                    a1285 target = this.b(id);
                    if (target == null) {
                        trigger.i("linkedTo target not found: " + activateIds);
                        k1104.d("Possible IDs:");
                        for (a1285 t : this.J) {
                            if (t.b != null) {
                                k1104.d(t.b);
                            }
                        }
                        k1104.d("--------");
                    } else {
                        target.d.a(trigger);
                    }
                }
            }

            String whenActivatedIds = trigger.b("whenActivatedIds");
            if (whenActivatedIds == null) {
                whenActivatedIds = trigger.b("activatedBy");
            }
            if (whenActivatedIds != null) {
                String[] ids = whenActivatedIds.split(",");
                for (String id : ids) {
                    a1285 target = this.b(id);
                    if (target == null) {
                        trigger.i("linkedFrom target not found: " + id);
                    } else {
                        trigger.d.a(target);
                    }
                }
            }

            String deactivatedBy = trigger.b("deactivatedBy");
            if (deactivatedBy != null) {
                String[] ids = deactivatedBy.split(",");
                for (String id : ids) {
                    a1285 target = this.b(id);
                    if (target == null) {
                        trigger.i("deactivatedBy: target not found: " + id);
                    } else {
                        trigger.e.a(target);
                    }
                }
            }
        }

        k1104.d("Found " + this.J.size() + " map triggers");
        for (a1285 trigger : this.J) {
            for (String key : trigger.t.a()) {
                trigger.i("Key was not used: " + key);
            }
        }

        this.b();
    }

    // ==== from b(F)V.java ====
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
                                    ae1028.a((String) null, "Debug: " + v3_debug);
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
                            if (v12.g == d1288.objective) {
                                if (v13) {
                                    v12.j("objective met");
                                }
                                v2_effect = true;
                            }
                            if (v12.g == d1288.trigger_basic) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.trigger_unitDetect) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.trigger_teamTagDetect) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.mapText) {
                                v2_effect = true;
                            }
                            if (v12.g == d1288.moveCamera) {
                                v2_effect = true;
                                v17.b(v12.a(), v12.b());
                            }
                            if (v12.g == d1288.event_unitAdd) {
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
                            if (v12.g == d1288.event_changeCredits) {
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
                            if (v12.g == d1288.event_teamTags) {
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
                            if (v12.g == d1288.event_move) {
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
                            if (v12.g == d1288.event_unitRemove) {
                                p1351<ce454> v3_list = new p1351();
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
                    // 待定
                    if ((v2_unit instanceof g656) || v2_unit.bR) {
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

    // ==== from b(String)a1285.java ====
    private com.corrodinggames.rts.gameFramework.n.a1285 b(String p1) {
        String v1 = p1.trim();
        java.util.Iterator v2 = this.J.iterator();
        com.corrodinggames.rts.gameFramework.n.a1285 v0;
        while (true) {
            if (!v2.hasNext()) {
                v0 = null;
                break;
            }
            v0 = (com.corrodinggames.rts.gameFramework.n.a1285) v2.next();
            if (v0.b != null) {
                if (v0.b.equalsIgnoreCase(v1)) {
                    return v0;
                }
            }
        }
        return v0;
    }

    // ==== from b(void)V.java ====
    private void b() {
        Iterator iterator = this.J.iterator();
        while (iterator.hasNext()) {
            a1285 a = (a1285) iterator.next();
            if (a.g != d1288.objective) {
                continue;
            }
            Iterator innerIterator = this.g.iterator();
            boolean found = false;
            while (innerIterator.hasNext()) {
                w1307 w = (w1307) innerIterator.next();
                if (w.a == a) {
                    found = true;
                }
            }
            if (!found) {
                w1307 newW = new w1307();
                newW.a = a;
                this.g.add(newW);
                StringBuilder sb = new StringBuilder("Found objective: ");
                String objectiveName;
                if (newW.a.z == null) {
                    objectiveName = "<null>";
                } else {
                    objectiveName = newW.a.z.b();
                }
                sb.append(objectiveName);
                k1104.d(sb.toString());
            }
        }
    }

    // ==== from b(Z)s1303.java ====
    private com.corrodinggames.rts.gameFramework.n.s1303 b(boolean p1) {
        int v2 = 1;
        int v3 = 0;
        com.corrodinggames.rts.gameFramework.n.s1303 v4 = new com.corrodinggames.rts.gameFramework.n.s1303(this);
        if (this.u > 50 && (this.u + 1) % 100 == 0) {
            int size = this.T.size();
            int v1 = this.u / 100;
            if (size == 0) {
                com.corrodinggames.rts.gameFramework.k1104.b("error maxTypeNum: " + size);
            } else {
                com.corrodinggames.rts.gameFramework.n.u1305 obj = (com.corrodinggames.rts.gameFramework.n.u1305) this.T.get(v1 % size);
                int count = (int) ((float) v1 * obj.b);
                if (count <= 0) {
                    count = v2;
                }
                v4.b(obj.a, count);
            }
        } else {
            v2 = v3;
        }
        if (this.y > 0) {
            v3 = this.y;
        }
        this.a(v4, this.u + v3, 1.0f);
        if (this.u > 15 && v2 == 0) {
            this.a(v4, (int) ((this.u + v3) * 1.1f) - 11, 0.5f);
        }
        if (p1) {
            this.u = this.u + 1;
            this.v = this.v + 1;
        }
        return v4;
    }

    // ==== from c(String)PointF.java ====
    private android.graphics.PointF c(String p1) {
        com.corrodinggames.rts.gameFramework.k1104 k1104 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.b.b326 b326 = k1104.bI;
        com.corrodinggames.rts.game.b.k335 k335 = b326.R;
        if (k335 == null) {
            return null;
        }
        java.util.Iterator iterator = k335.c.iterator();
        while (iterator.hasNext()) {
            com.corrodinggames.rts.game.b.a325 a = (com.corrodinggames.rts.game.b.a325) iterator.next();
            if ("point".equalsIgnoreCase(a.d) && a.c != null && a.c.equalsIgnoreCase(p1)) {
                this.K.set(a.e, a.f);
                return this.K;
            }
        }
        return null;
    }

    // ==== from c(void)q1301.java ====
    private com.corrodinggames.rts.gameFramework.n.q1301 c() {
        if (this.r < this.O.size()) {
            return (com.corrodinggames.rts.gameFramework.n.q1301) this.O.get(this.r);
        } else {
            return null;
        }
    }

    // ==== from c(Z)s1303.java ====
    private s1303 c(boolean p1) {
        s1303 v5 = new s1303(this);
        v5.a = false;
        int v0 = this.v;
        cj459 v1 = null;
        if (this.p) {
            v1 = cj459.ladybug;
        } else {
            if (this.u == 0) {
                v0 = v0 + 1;
                v1 = cj459.tank;
            }
            if (this.u == 1) {
                v1 = cj459.hoverTank;
            }
            if (this.u == 2) {
                v1 = cj459.helicopter;
            }
            if (this.u == 3) {
                v0 = this.w;
                v1 = cj459.heavyTank;
            }
            if (this.u == 4) {
                v0 = this.w;
                v1 = cj459.heavyHoverTank;
                if (this.w % 2 == 0) {
                    v1 = cj459.gunShip;
                }
            }
            if (this.u == 5) {
                v5.a = true;
                v1 = cj459.experimentalTank;
                v0 = 1;
            }
            if (p1) {
                this.u = this.u + 1;
                boolean v3 = true;
                if (this.w == 1) {
                    if (this.u > 2) {
                        v3 = false;
                    }
                } else if (this.w < 5) {
                    if (this.u <= 4) {
                        v3 = false;
                    }
                } else {
                    boolean v2 = this.u <= 5;
                    if (this.u > 4 || this.w % 2 != 0) {
                        v3 = v2;
                    }
                }
                if (v3) {
                    this.u = 0;
                    this.v = this.v + 2;
                    this.w = this.w + 1;
                }
            }
        }
        v5.a(v1, v0);
        return v5;
    }

    // ==== from d(String)V.java ====
    private void d(String p1) throws h332 {
        com.corrodinggames.rts.gameFramework.k1104.d("Loading survival waves");
        this.N = true;
        String[] lines = p1.split("\n");
        int length = lines.length;
        int totalTime = 0;
        int waveNumber = 0;
        int index = 0;
        while (index < length) {
            String line = lines[index];
            int nextWaveNumber = waveNumber + 1;
            com.corrodinggames.rts.gameFramework.n.q1301 wave = new com.corrodinggames.rts.gameFramework.n.q1301(this);
            if (wave.a(line)) {
                totalTime += (int) wave.d;
                wave.e = totalTime;
                int waveTime = wave.e;
                com.corrodinggames.rts.gameFramework.k1104.d("Adding wave " + nextWaveNumber + " at " + waveTime);
                this.O.add(wave);
            }
            index++;
            waveNumber = nextWaveNumber;
        }
    }

    // ==== from d(void)V.java ====
    private void d() {
        this.R = true;
        int v0 = 0;
        int v1 = this.D.size() - 1;
        int v2 = this.r;
        v0 = com.corrodinggames.rts.gameFramework.f1006.a(v0, v1, v2);
        android.graphics.PointF pointF = (android.graphics.PointF) this.D.get(v0);
        this.P.set(pointF);
    }

    // ==== from e(String)V.java ====
    private static void e(String p0) {
        String v0 = "Map ScriptError: ";
        String v1 = String.valueOf(p0);
        v0 = v0.concat(v1);
        com.corrodinggames.rts.gameFramework.j.ae1028.e(v0);
        return;
    }

    // ==== from e(void)Z.java ====
    private static boolean e() {
        com.corrodinggames.rts.gameFramework.k1104 v6 = com.corrodinggames.rts.gameFramework.k1104.t();
        com.corrodinggames.rts.game.units.ce454[] v7 = com.corrodinggames.rts.game.units.ce454.bG.c;
        int v8 = com.corrodinggames.rts.game.units.ce454.bG.size();
        boolean v3 = false;
        int v5 = 0;
        while (v5 < v8) {
            com.corrodinggames.rts.game.units.ce454 v9 = v7[v5];
            if (v9.bZ == com.corrodinggames.rts.game.p352.i && v9 instanceof com.corrodinggames.rts.game.units.bp437 && v9.by() && v9.n()) {
                int v10 = com.corrodinggames.rts.game.units.ce454.bG.size();
                int v4 = 0;
                while (v4 < v10) {
                    com.corrodinggames.rts.game.units.ce454 v11 = v7[v4];
                    boolean v0;
                    if (!v6.ac()) {
                        v0 = v11.bZ.x || v9.cr();
                    } else {
                        v0 = (v11.bZ == v6.bp);
                    }
                    if (v11.bZ != null && v11.bZ.l >= 0) {
                        v0 = false;
                    }
                    if (v0 && v11.bZ != v9.bZ && v11 instanceof com.corrodinggames.rts.game.units.bp437 && v11.h() && v11.by()) {
                        float distance = com.corrodinggames.rts.gameFramework.f1006.a(v11.eq, v11.er, v9.eq, v9.er);
                        if (distance >= 28900.0f) {
                            v9.e(v11.bZ);
                            v9.cL = 60.0f;
                            v3 = true;
                            break;
                        }
                    }
                    v4++;
                }
            }
            v5++;
        }
        return v3;
    }

}
