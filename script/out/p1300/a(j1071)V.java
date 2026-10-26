public final void a(com.corrodinggames.rts.gameFramework.j.j1071 p1) {
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
    return;
}
