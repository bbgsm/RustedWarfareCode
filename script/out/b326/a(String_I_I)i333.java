public final strictfp i333 a(String p1, int p2, int p3) {
    l336 v1 = null;
    int v5_int = 0;
    for (Iterator v2_iterator = this.t.iterator(); v2_iterator.hasNext(); ) {
        l336 v0_item = (l336) v2_iterator.next();
        v5_int = p1.equals(v0_item.a) ? 1 : 0;
        if (v5_int != 0) {
            v1 = v0_item;
        }
    }
    l336 v2;
    if (v1 == null) {
        int v0_int;
        if (this.t.size() > 0) {
            l336 last = (l336) this.t.get(this.t.size() - 1);
            int v1_int = last.l + 100;
            last.m = v1_int;
            v0_int = v1_int;
        } else {
            v0_int = 1;
        }
        v2 = new l336(this, p1, v0_int + 1);
        this.t.add(v2);
    } else {
        v2 = v1;
    }
    if (v2.b == null) {
        v2.c();
    }
    if (this.ai == null) {
        this.ai = new HashMap();
    }
    int v0_offset;
    if (v2.b == null) {
        k1104.d("getIndexOffsetByPosition tilesetBitmap == null");
        v0_offset = 3;
    } else if (v2.d == 0) {
        k1104.d("getIndexOffsetByPosition tileWidth==0");
        v0_offset = 3;
    } else {
        v0_offset = v2.b.h() / v2.d;
    }
    int v7 = v2.l + (v0_offset * p3 + p2);
    i333 v0_result = (i333) this.ai.get(Integer.valueOf(v7));
    if (v0_result != null) {
        return v0_result;
    }
    int v3 = v7 - v2.l;
    i333 v0_created = i333.a(this, this.u, v2, v3, (short) 0, (short) v5_int, true);
    this.ai.put(Integer.valueOf(v7), v0_created);
    return v0_created;
}
