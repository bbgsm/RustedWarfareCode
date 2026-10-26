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
