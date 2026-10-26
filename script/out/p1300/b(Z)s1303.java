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
