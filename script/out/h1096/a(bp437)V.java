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
