public final void a(float f) {
    com.corrodinggames.rts.gameFramework.k1104 v3 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (this.i) {
        java.util.Iterator<com.corrodinggames.rts.gameFramework.n.a1285> v4 = this.J.iterator();
        while (v4.hasNext()) {
            com.corrodinggames.rts.gameFramework.n.a1285 v0 = (com.corrodinggames.rts.gameFramework.n.a1285) v4.next();
            if (v0.g != com.corrodinggames.rts.gameFramework.n.d1288.g || !v0.j) {
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
