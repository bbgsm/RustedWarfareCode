package com.corrodinggames.rts.gameFramework.k;

public final class h1096 {

    // ==== from __header__.java ====
    public com.corrodinggames.rts.game.units.cg456 a;

    public final int b;

    public final int c;

    public byte[] d;

    public byte[] e;

    public byte[] f;

    public short[] g;

    public java.util.HashMap h;

    public int i;

    public byte[] j;

    public int k;

    public int l;

    public boolean m;

    android.graphics.Point n;

    public boolean o;

    public int p;

    private final com.corrodinggames.rts.gameFramework.k.k1099 q;

    // ==== from _init_(k1099_cg456_I_I)V.java ====
    strictfp h1096(com.corrodinggames.rts.gameFramework.k.k1099 p1, com.corrodinggames.rts.game.units.cg456 p2, int p3, int p4) {
        super();
        this.k = -99;
        this.l = 0;
        this.n = new android.graphics.Point();
        this.b = p3;
        this.c = p4;
        this.q = p1;
        this.a = p2;
        this.d = new byte[p3 * p4];
        this.q.u.add(this);
        this.q.v = (com.corrodinggames.rts.gameFramework.k.h1096[]) this.q.u.toArray(new com.corrodinggames.rts.gameFramework.k.h1096[0]);
        this.c();
        this.b((com.corrodinggames.rts.game.units.bp437) null);
        this.b();
    }

    // ==== from a(b326)I.java ====
    public static strictfp int a(com.corrodinggames.rts.game.b.b326 p0) {
        int v0 = 0;
        com.corrodinggames.rts.game.b.g331 v9 = p0.u;
        int v2 = 0;
        while (v2 < v9.n) {
            int v3 = 0;
            while (v3 < v9.o) {
                com.corrodinggames.rts.game.b.i333 v8 = v9.a(v2, v3);
                if (v8 != null) {
                    int v4 = v8.e ? 1 : 0;
                    int v5 = v8.h ? 2 : 0;
                    int v6 = v8.k ? 4 : 0;
                    int v7 = v8.g ? 8 : 0;
                    int v8_val = v8.f ? 16 : 0;
                    v0 += (v4 + v5 + v6 + v7 + v8_val) * (v2 + v3);
                }
                v3++;
            }
            v2++;
        }
        return v0;
    }

    // ==== from a(b326_S_S_AB)V.java ====
    private strictfp void a(com.corrodinggames.rts.game.b.b326 p1, short p2, short p3, byte[] p4) {
        int v1 = 0;
        int v3 = p2 - 3;
        int v0 = p3 - 3;
        int v2 = p2 + 3;
        int v4 = p3 + 3;
        if (v3 < 0) {
            v3 = v1;
        }
        if (v0 < 0) {
            v0 = v1;
        }
        v1 = p1.D - 1;
        if (v2 > v1) {
        } else {
            v1 = p1.D - 1;
            v1 = v2;
        }
        v2 = p1.E - 1;
        if (v4 > v2) {
        } else {
            v2 = p1.E - 1;
            v4 = v2;
        }
        while (v3 <= v1) {
            v2 = v0;
            while (v2 <= v4) {
                int v5 = this.c * v3 + v2;
                byte v5_byte = p4[v5];
                if (v5_byte != 0) {
                    int v6 = com.corrodinggames.rts.gameFramework.f1006.a(p2, p3, v3, v2);
                    if (v6 < v5_byte) {
                        int index = this.c * v3 + v2;
                        p4[index] = (byte) v6;
                    }
                }
                v2++;
            }
            v3++;
        }
        return;
    }

    // ==== from a(bp437)V.java ====
    final strictfp void a(com.corrodinggames.rts.game.units.bp437 p1) {
        if (p1 != null) {
            this.l++;
            if (this.l > 50) {
                if (!this.m) {
                    com.corrodinggames.rts.gameFramework.k1104.d("buildAndReplaceClearanceCost being skipped");
                }
                this.m = true;
                return;
            }
        }
        if (p1 != null) {
            long v2 = 0;
            if (p1 == null) {
                v2 = com.corrodinggames.rts.gameFramework.cf910.a();
            }
            com.corrodinggames.rts.game.b.b326 v13 = this.q.q;
            byte[] v8_old = this.j;
            if (this.j == null) {
                p1 = null;
            }
            this.j = new byte[this.b * this.c];
            short v7 = 0;
            short v4 = 0;
            short v5 = this.q.s;
            short v6 = this.q.t;
            if (p1 != null) {
                if (v8_old != null) {
                    com.corrodinggames.rts.gameFramework.f1006.a(v8_old, this.j);
                }
                v13.a(p1.eq, p1.er);
                android.graphics.Rect rect = p1.bH();
                short v5_tmp = (short) v13.U;
                short v8_tmp = (short) v13.V;
                v7 = (short)((v5_tmp - 5) + rect.left);
                v4 = (short)((v8_tmp - 5) + rect.top);
                v5 = (short)(v5_tmp + 5 + rect.right);
                v6 = (short)(rect.bottom + v8_tmp + 5);
            }
            if (v7 < 0) v7 = 0;
            if (v4 < 0) v4 = 0;
            if (v5 > this.q.s) v5 = this.q.s;
            if (v6 > this.q.t) v6 = this.q.t;
            short v11 = v6;
            short v12 = v7;
            while (v12 < v5) {
                short v10 = v4;
                while (v10 < v11) {
                    byte[] v14 = this.j;
                    int v15 = this.c;
                    byte v6_result;
                    if (this.d[this.c * v12 + v10] == -1) {
                        v6_result = 0;
                    } else {
                        short v7_dist = 4;
                        for (int v9 = v12 - 3; v9 <= v12 + 3; v9++) {
                            for (int v8_i = v10 - 3; v8_i <= v10 + 3; v8_i++) {
                                boolean v6_flag = false;
                                if (!v13.c(v9, v8_i)) {
                                    v6_flag = true;
                                } else {
                                    if (this.d[this.c * v9 + v8_i] == -1) v6_flag = true;
                                    if (this.e[this.c * v9 + v8_i] == -1) v6_flag = true;
                                }
                                if (v6_flag) {
                                    int dist = com.corrodinggames.rts.gameFramework.f1006.a(v12, v10, v9, v8_i);
                                    if (dist < v7_dist) {
                                        v7_dist = (short) dist;
                                    }
                                }
                            }
                        }
                        v6_result = (byte) v7_dist;
                    }
                    this.j[this.c * v12 + v10] = v6_result;
                    v10 = (short)(v10 + 1);
                }
                v12 = (short)(v12 + 1);
            }
            if (p1 == null) {
                return;
            }
            double v2_double = com.corrodinggames.rts.gameFramework.cf910.a(v2);
            com.corrodinggames.rts.gameFramework.k1104.d("buildAndReplaceClearanceCost took:" + com.corrodinggames.rts.gameFramework.cf910.a(v2_double) + " for:" + this.a);
        } else {
            long v2 = 0;
            if (p1 == null) {
                v2 = com.corrodinggames.rts.gameFramework.cf910.a();
            }
            com.corrodinggames.rts.game.b.b326 v11 = this.q.q;
            byte[] v7_old = this.j;
            if (this.j == null) {
                p1 = null;
            }
            this.j = new byte[this.b * this.c];
            short v8 = 0;
            short v4 = 0;
            short v5 = this.q.s;
            short v6 = this.q.t;
            if (p1 != null) {
                if (v7_old != null) {
                    com.corrodinggames.rts.gameFramework.f1006.a(v7_old, this.j);
                }
                v11.a(p1.eq, p1.er);
                android.graphics.Rect rect = p1.bH();
                short v5_tmp = (short) v11.U;
                short v7_tmp = (short) v11.V;
                v8 = (short)((v5_tmp - 5) + rect.left);
                v4 = (short)((v7_tmp - 5) + rect.top);
                v5 = (short)(v5_tmp + 5 + rect.right);
                v6 = (short)(rect.bottom + v7_tmp + 5);
            }
            if (v8 < 0) v8 = 0;
            if (v4 < 0) v4 = 0;
            if (v5 > this.q.s) v5 = this.q.s;
            if (v6 > this.q.t) v6 = this.q.t;
            for (short v10 = v8; v10 < v5; v10 = (short)(v10 + 1)) {
                for (short v9 = v4; v9 < v6; v9 = (short)(v9 + 1)) {
                    boolean v7_flag = false;
                    if (this.d[this.c * v10 + v9] == -1) v7_flag = true;
                    if (this.e[this.c * v10 + v9] == -1) v7_flag = true;
                    if (v7_flag) {
                        this.j[this.c * v10 + v9] = 0;
                    } else {
                        this.j[this.c * v10 + v9] = 4;
                    }
                }
            }
            for (short v9 = v8; v9 < v5; v9 = (short)(v9 + 1)) {
                for (short v7 = v4; v7 < v6; v7 = (short)(v7 + 1)) {
                    if (this.j[this.c * v9 + v7] == 0) {
                        this.a(v11, v9, v7, this.j);
                    }
                }
            }
            for (short v7 = v8; v7 < v5; v7 = (short)(v7 + 1)) {
                this.a(v11, v7, (short) -1, this.j);
                this.a(v11, v7, (short)(this.q.t + 1), this.j);
            }
            for (short v4_tmp = v4; v4_tmp < v6; v4_tmp = (short)(v4_tmp + 1)) {
                this.a(v11, (short) -1, v4_tmp, this.j);
                this.a(v11, (short)(this.q.s + 1), v4_tmp, this.j);
            }
            return;
        }
    }

    // ==== from a(S_S_S)I.java ====
    private strictfp int a(short p1, short p2, short p3) {
        int v2 = this.c;
        com.corrodinggames.rts.game.b.b326 v3 = this.q.q;
        short[] v4 = this.g;
        byte[] v5 = this.d;
        int index = p1 * v2 + p2;
        if (v5[index] == -1) {
            v4[index] = -1;
            return 0;
        }
        if (p3 == 0) {
            throw new RuntimeException("id cannot be 0 is will cause can endless loop");
        }
        int v1 = 0;
        com.corrodinggames.rts.gameFramework.utility.k1346 v6 = new com.corrodinggames.rts.gameFramework.utility.k1346();
        v6.add(new com.corrodinggames.rts.gameFramework.utility.an1334(p1, p2));
        while (!v6.isEmpty()) {
            int v7 = v6.b;
            Object obj = v6.a[v7];
            if (obj != null) {
                v6.a[v7] = null;
                v6.b = (v7 + 1) & (v6.a.length - 1);
            }
            com.corrodinggames.rts.gameFramework.utility.an1334 an = (com.corrodinggames.rts.gameFramework.utility.an1334) obj;
            short v7s = an.a;
            short v0s = an.b;
            boolean v8 = v3.c((int) v7s, (int) v0s);
            if (!v8) continue;
            int idx = v7s * v2 + v0s;
            if (v4[idx] != 0) continue;
            if (v5[idx] != -1) continue;
            v4[idx] = p3;
            v1++;
            v6.add(new com.corrodinggames.rts.gameFramework.utility.an1334((short)(v7s - 1), (short) v0s));
            v6.add(new com.corrodinggames.rts.gameFramework.utility.an1334((short)(v7s + 1), (short) v0s));
            v6.add(new com.corrodinggames.rts.gameFramework.utility.an1334((short) v7s, (short)(v0s - 1)));
            v6.add(new com.corrodinggames.rts.gameFramework.utility.an1334((short) v7s, (short)(v0s + 1)));
        }
        return v1;
    }

    // ==== from a(void)V.java ====
    final strictfp void a() {
        short v0 = 1;
        short v2 = 0;
        int v4 = this.b;
        int v5 = this.c;
        this.g = new short[v4 * v5];
        this.h = new java.util.HashMap();
        short v3 = v2;
        while (v3 < v4) {
            short v1 = v2;
            while (v1 < v5) {
                int v6 = this.g[v3 * v5 + v1];
                if (v6 == 0) {
                    if (v0 <= 0) {
                        android.util.Log.e("RustedWarfare", "warning buildIsolatedGroups looped, ending");
                        return;
                    }
                    v6 = this.a(v3, v1, v0);
                    if (v6 > 0) {
                        this.h.put(java.lang.Short.valueOf(v0), java.lang.Integer.valueOf(v6));
                        if (this.i < v6) {
                            this.i = v6;
                        }
                        v0 = (short) (v0 + 1);
                    }
                }
                v1 = (short) (v1 + 1);
            }
            v3 = (short) (v3 + 1);
        }
    }

    // ==== from a(Z)V.java ====
    public final strictfp void a(boolean p1) {
        if (!p1) {
            return;
        }
        if (this.m) {
            this.l = 0;
            this.m = false;
            this.b((com.corrodinggames.rts.game.units.bp437) null);
            if (this.j != null) {
                this.a((com.corrodinggames.rts.game.units.bp437) null);
            }
        }
        this.l = 0;
    }

    // ==== from b(bp437)V.java ====
    public final strictfp void b(com.corrodinggames.rts.game.units.bp437 p1) {
        if (p1 != null) {
            this.p++;
            if (this.p <= 50) {
                this.o = true;
                return;
            }
        }
        com.corrodinggames.rts.gameFramework.k1104.M();
        this.e = new byte[this.b * this.c];
        byte[] v4 = this.e;
        if (!this.a.equals(com.corrodinggames.rts.game.units.cg456.d)) {
            return;
        }
        com.corrodinggames.rts.game.b.b326 v5 = this.q.q;
        com.corrodinggames.rts.game.units.ce454[] v6 = com.corrodinggames.rts.game.units.ce454.bG.c;
        int v7 = com.corrodinggames.rts.game.units.ce454.bG.size();
        for (int v3 = 0; v3 < v7; v3++) {
            com.corrodinggames.rts.game.units.ce454 v0 = v6[v3];
            if (!v0.bq() || !v0.bX) {
                continue;
            }
            android.graphics.Point point = v0.a(v5, this.n);
            int v8 = point.x;
            int v9 = point.y;
            android.graphics.Rect rect;
            if (this.a.equals(com.corrodinggames.rts.game.units.cg456.c)) {
                rect = v0.bI();
            } else {
                rect = v0.bH();
            }
            for (int x = rect.left + v8; x <= rect.right + v8; x++) {
                for (int y = rect.top + v9; y <= rect.bottom + v9; y++) {
                    if (v5.c(x, y)) {
                        v4[this.c * x + y] = (byte) -1;
                    }
                }
            }
        }
    }

    // ==== from b(void)V.java ====
    public final strictfp void b() {
        com.corrodinggames.rts.gameFramework.k1104.M();
        int c = this.c;
        int b = this.b;
        this.f = new byte[b * c];
        if (this.a.equals(com.corrodinggames.rts.game.units.cg456.d)) {
            return;
        }
        com.corrodinggames.rts.gameFramework.k.k1099 k1099Var = this.q;
        com.corrodinggames.rts.game.b.b326 b326Var = k1099Var.q;
        int p = b326Var.p;
        int q = b326Var.q;
        com.corrodinggames.rts.game.units.ce454[] ce454Array = com.corrodinggames.rts.game.units.ce454.bG.c;
        int size = com.corrodinggames.rts.game.units.ce454.bG.size();
        for (int i = 0; i < size; i++) {
            com.corrodinggames.rts.game.units.ce454 ce454Var = ce454Array[i];
            if (!ce454Var.bV || ce454Var.bq() || ce454Var.cM || ce454Var instanceof com.corrodinggames.rts.game.units.cd453
                || ce454Var.bX || ce454Var.h() || ce454Var.cP != null || ce454Var.Q()) {
                continue;
            }
            int radius = 2;
            float v15 = ce454Var.cl + 5.0f;
            float v16 = ce454Var.cl + 10.0f;
            if (v16 < 10.0f) {
                radius = 0;
            } else if (v16 < 20.0f) {
                radius = 1;
            }
            b326Var.a(ce454Var.eq, ce454Var.er);
            int U = b326Var.U;
            int V = b326Var.V;
            for (int rowOffset = U - radius; rowOffset <= U + radius; rowOffset++) {
                for (int colOffset = V - radius; colOffset <= V + radius; colOffset++) {
                    if (b326Var.c(rowOffset, colOffset)) {
                        b326Var.a(rowOffset, colOffset);
                        float px = (float)(b326Var.U + p);
                        float py = (float)(b326Var.V + q);
                        float dist = com.corrodinggames.rts.gameFramework.f1006.a(px, py, ce454Var.eq, ce454Var.er);
                        int index = rowOffset * c + colOffset;
                        if (dist < v15 * v15) {
                            byte[] fArray = this.f;
                            fArray[index] = (byte)(fArray[index] + 6);
                        } else if (dist < v16 * v16) {
                            byte[] fArray = this.f;
                            fArray[index] = (byte)(fArray[index] + 1.998);
                        }
                        if (this.f[index] < -1) {
                            this.f[index] = 127;
                        }
                    }
                }
            }
        }
    }

    // ==== from c(void)V.java ====
    private strictfp void c() {
        com.corrodinggames.rts.game.b.b326 v6 = this.q.q;
        byte[] v7 = this.d;
        short[] v8 = v6.u.a();
        com.corrodinggames.rts.game.b.i333[] v9 = v6.C;
        com.corrodinggames.rts.game.units.cg456 v10 = this.a;
        int v11 = this.b;
        int v12 = this.c;

        boolean v1 = !this.a.equals(com.corrodinggames.rts.game.units.cg456.d) && !this.a.equals(com.corrodinggames.rts.game.units.cg456.a);
        if (v1) {
            return;
        }

        v1 = v10.equals(com.corrodinggames.rts.game.units.cg456.e) || v10.equals(com.corrodinggames.rts.game.units.cg456.f) || v10.equals(com.corrodinggames.rts.game.units.cg456.h);
        boolean v2 = v10.equals(com.corrodinggames.rts.game.units.cg456.f) || v10.equals(com.corrodinggames.rts.game.units.cg456.g) || v10.equals(com.corrodinggames.rts.game.units.cg456.h);
        boolean v3 = v10.equals(com.corrodinggames.rts.game.units.cg456.g) || v10.equals(com.corrodinggames.rts.game.units.cg456.h);

        for (int v4 = 0; v4 < v11; v4++) {
            for (int v5 = 0; v5 < v12; v5++) {
                int v13 = v4 * v12 + v5;
                v7[v13] = 0;
                short v14Index = v8[v13];
                com.corrodinggames.rts.game.b.i333 v14 = v9[v14Index];
                if (v14 != null) {
                    if (v14.e && v1) {
                        v7[v13] = -1;
                    }
                    if (v14.h && v2) {
                        v7[v13] = -1;
                    }
                    if (v14.k && v3) {
                        v7[v13] = -1;
                    }
                    if (v14.g) {
                        v7[v13] = -1;
                    }
                    if (v10 == com.corrodinggames.rts.game.units.cg456.e && !v14.e && !v14.f) {
                        v7[v13] = -1;
                    }
                }
                com.corrodinggames.rts.game.b.i333 v15 = v6.d(v4, v5);
                if (v15 != null) {
                    if (v10 == com.corrodinggames.rts.game.units.cg456.b && v15.i) {
                        v7[v13] = -1;
                    }
                    if (v15.k && v3) {
                        v7[v13] = -1;
                    }
                    if (v7[v13] == 0) {
                        v7[v13] = v15.j;
                    }
                }
                if (v14 != null && v7[v13] == 0) {
                    v7[v13] = v14.j;
                }
            }
        }

        if (v6.x != null) {
            for (int v4 = 0; v4 < v11; v4++) {
                for (int v5 = 0; v5 < v12; v5++) {
                    com.corrodinggames.rts.game.b.i333 v8Obj = v6.x.a(v4, v5);
                    if (v8Obj != null) {
                        int v9Index = v4 * v12 + v5;
                        v7[v9Index] = 0;
                        if (v8Obj.e && v1) {
                            v7[v9Index] = -1;
                        }
                        if (v8Obj.h && v2) {
                            v7[v9Index] = -1;
                        }
                        if (v8Obj.k && v3) {
                            v7[v9Index] = -1;
                        }
                        if (v8Obj.g) {
                            v7[v9Index] = -1;
                        }
                        if (v7[v9Index] == 0) {
                            v7[v9Index] = v8Obj.j;
                        }
                        if (v10 == com.corrodinggames.rts.game.units.cg456.e && !v8Obj.e && !v8Obj.f) {
                            v7[v9Index] = -1;
                        }
                    }
                }
            }
        }
    }

}
