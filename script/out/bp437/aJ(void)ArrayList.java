public final strictfp java.util.ArrayList aJ() {
    float v2 = 0.0f;
    java.util.ArrayList v5 = new java.util.ArrayList();
    if (k()) {
        int v6 = aU();
        for (int v4 = 0; v4 < v6; v4++) {
            float v7 = l(v4);
            if (v7 == v2) {
                continue;
            }
            float v0 = b(v4);
            float v1;
            if (v0 == 9000.0f) {
                v1 = v2;
            } else {
                v1 = v0;
            }
            boolean found = false;
            java.util.Iterator v8 = v5.iterator();
            while (v8.hasNext()) {
                com.corrodinggames.rts.game.units.bs440 v0Obj = (com.corrodinggames.rts.game.units.bs440) v8.next();
                if (v0Obj.a == v7) {
                    if (v0Obj.b == v1 || v1 == v2 || v0Obj.b == v2) {
                        v0Obj.d = v0Obj.d + 1;
                        if (v0Obj.b == v2) {
                            v0Obj.b = v1;
                        }
                        found = true;
                        break;
                    }
                }
            }
            if (!found) {
                com.corrodinggames.rts.game.units.bs440 v0New = new com.corrodinggames.rts.game.units.bs440();
                v0New.a = v7;
                v0New.b = v1;
                v0New.c = e(v4);
                v5.add(v0New);
            }
        }
    }
    return v5;
}
