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
