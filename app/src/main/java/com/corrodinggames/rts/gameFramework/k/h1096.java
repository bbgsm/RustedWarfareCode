package com.corrodinggames.rts.gameFramework.k;

import android.graphics.Rect;
import com.corrodinggames.rts.game.b.b326;
import com.corrodinggames.rts.game.units.bp437;
import com.corrodinggames.rts.game.units.cg456;
import com.corrodinggames.rts.gameFramework.cf910;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.k1104;

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
    public h1096(com.corrodinggames.rts.gameFramework.k.k1099 p1, com.corrodinggames.rts.game.units.cg456 p2, int p3, int p4) {
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
    private strictfp void a(b326 map, short x, short y, byte[] data) {
        int startX = x - 3;
        int startY = y - 3;
        int endX = x + 3;
        int endY = y + 3;

        if (startX < 0) {
            startX = 0;
        }

        if (startY < 0) {
            startY = 0;
        }

        if (endX > map.D - 1) {
            endX = map.D - 1;
        }

        if (endY > map.E - 1) {
            endY = map.E - 1;
        }

        for (int currentX = startX; currentX <= endX; currentX++) {
            for (int currentY = startY; currentY <= endY; currentY++) {
                int index = this.c * currentX + currentY;
                int currentCost = data[index];

                if (currentCost != 0) {
                    int newCost = f1006.a(x, y, currentX, currentY);

                    if (newCost < currentCost) {
                        data[index] = (byte) newCost;
                    }
                }
            }
        }
    }

    // ==== from a(bp437)V.java ====
    public final strictfp void a(bp437 unit) {
        if (unit != null) {
            this.l++;

            if (this.l > 50) {
                if (!this.m) {
                    k1104.d("buildAndReplaceClearanceCost being skipped");
                }

                this.m = true;
                return;
            }
        }

        long startTime = 0L;

        if (unit == null) {
            startTime = cf910.a();
        }

        b326 map = this.q.q;
        byte[] oldData = this.j;

        if (this.j == null) {
            unit = null;
        }

        this.j = new byte[this.b * this.c];

        short startX = 0;
        short startY = 0;
        short endX = this.q.s;
        short endY = this.q.t;

        if (unit != null) {
            if (oldData != null) {
                f1006.a(oldData, this.j);
            }

            map.a(unit.eq, unit.er);

            Rect bounds = unit.bH();

            short centerX = (short) map.U;
            short centerY = (short) map.V;

            startX = (short) (centerX - 5 + bounds.left);
            startY = (short) (centerY - 5 + bounds.top);
            endX = (short) (centerX + 5 + bounds.right);
            endY = (short) (centerY + 5 + bounds.bottom);
        }

        if (startX < 0) {
            startX = 0;
        }

        if (startY < 0) {
            startY = 0;
        }

        if (endX > this.q.s) {
            endX = this.q.s;
        }

        if (endY > this.q.t) {
            endY = this.q.t;
        }

        if (unit != null) {
            // 原有计算逻辑
            for (short x = startX; x < endX; x = (short) (x + 1)) {
                for (short y = startY; y < endY; y = (short) (y + 1)) {
                    byte value;

                    if (this.d[this.c * x + y] == -1) {
                        value = 0;
                    } else {
                        int minimumCost = 4;

                        for (int nearbyX = x - 3;
                             nearbyX <= x + 3;
                             nearbyX++) {

                            for (int nearbyY = y - 3;
                                 nearbyY <= y + 3;
                                 nearbyY++) {

                                boolean hasClearanceCost = false;

                                if (!map.c(nearbyX, nearbyY)) {
                                    hasClearanceCost = true;
                                } else {
                                    int nearbyIndex =
                                            this.c * nearbyX + nearbyY;

                                    if (this.d[nearbyIndex] == -1) {
                                        hasClearanceCost = true;
                                    }

                                    if (this.e[nearbyIndex] == -1) {
                                        hasClearanceCost = true;
                                    }
                                }

                                if (hasClearanceCost) {
                                    int cost = f1006.a(
                                            x,
                                            y,
                                            nearbyX,
                                            nearbyY
                                    );

                                    if (cost < minimumCost) {
                                        minimumCost = cost;
                                    }
                                }
                            }
                        }

                        value = (byte) minimumCost;
                    }

                    this.j[this.c * x + y] = value;
                }
            }

            if (unit == null) {
                double elapsed = cf910.a(startTime);

                k1104.d(
                        "buildAndReplaceClearanceCost took:"
                                + cf910.a(elapsed)
                                + " for:"
                                + this.a
                );
            }

            return;
        }

        // 新计算逻辑：先标记每个格子的初始状态
        for (short x = startX; x < endX; x = (short) (x + 1)) {
            for (short y = startY; y < endY; y = (short) (y + 1)) {
                boolean blocked = false;
                int index = this.c * x + y;

                if (this.d[index] == -1) {
                    blocked = true;
                }

                if (this.e[index] == -1) {
                    blocked = true;
                }

                this.j[index] = blocked ? (byte) 0 : (byte) 4;
            }
        }

        // 从所有标记为 0 的格子向外计算
        for (short x = startX; x < endX; x = (short) (x + 1)) {
            for (short y = startY; y < endY; y = (short) (y + 1)) {
                if (this.j[this.c * x + y] == 0) {
                    a(map, x, y, this.j);
                }
            }
        }

        // 处理地图上下边界
        for (short x = startX; x < endX; x = (short) (x + 1)) {
            a(map, x, (short) -1, this.j);
            a(map, x, (short) (this.q.t + 1), this.j);
        }

        // 处理地图左右边界
        for (short y = startY; y < endY; y = (short) (y + 1)) {
            a(map, (short) -1, y, this.j);
            a(map, (short) (this.q.s + 1), y, this.j);
        }

        if (unit == null) {
            double elapsed = cf910.a(startTime);

            if (elapsed > 30.0D) {
                k1104.d(
                        "buildAndReplaceClearanceCostNew took:"
                                + cf910.a(elapsed)
                                + " for:"
                                + this.a
                );
            }
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
        if (!this.a.equals(com.corrodinggames.rts.game.units.cg456.AIR)) {
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
            if (this.a.equals(com.corrodinggames.rts.game.units.cg456.BUILDING)) {
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
        if (this.a.equals(com.corrodinggames.rts.game.units.cg456.AIR)) {
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

        boolean v1 = !this.a.equals(com.corrodinggames.rts.game.units.cg456.AIR) && !this.a.equals(cg456.NONE);
        if (v1) {
            return;
        }

        v1 = v10.equals(com.corrodinggames.rts.game.units.cg456.WATER) || v10.equals(com.corrodinggames.rts.game.units.cg456.HOVER) || v10.equals(com.corrodinggames.rts.game.units.cg456.OVER_CLIFF_WATER);
        boolean v2 = v10.equals(com.corrodinggames.rts.game.units.cg456.HOVER) || v10.equals(com.corrodinggames.rts.game.units.cg456.OVER_CLIFF) || v10.equals(com.corrodinggames.rts.game.units.cg456.OVER_CLIFF_WATER);
        boolean v3 = v10.equals(com.corrodinggames.rts.game.units.cg456.OVER_CLIFF) || v10.equals(com.corrodinggames.rts.game.units.cg456.OVER_CLIFF_WATER);

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
                    if (v10 == com.corrodinggames.rts.game.units.cg456.WATER && !v14.e && !v14.f) {
                        v7[v13] = -1;
                    }
                }
                com.corrodinggames.rts.game.b.i333 v15 = v6.d(v4, v5);
                if (v15 != null) {
                    if (v10 == com.corrodinggames.rts.game.units.cg456.LAND && v15.i) {
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
                        if (v10 == com.corrodinggames.rts.game.units.cg456.WATER && !v8Obj.e && !v8Obj.f) {
                            v7[v9Index] = -1;
                        }
                    }
                }
            }
        }
    }

}
