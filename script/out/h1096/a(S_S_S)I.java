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
