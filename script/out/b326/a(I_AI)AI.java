private static strictfp int[] a(int p0, int... p1) {
    ArrayList v2 = new ArrayList();
    v2.add(Integer.valueOf(p0));

    if (p1.length == 1) {
        v2.add(Integer.valueOf(p1[0] + p0));
    } else if (p1.length == 2) {
        v2.add(Integer.valueOf(p1[0] + p0));
        v2.add(Integer.valueOf(p1[1] + p0));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
    } else if (p1.length == 3) {
        v2.add(Integer.valueOf(p1[0] + p0));
        v2.add(Integer.valueOf(p1[1] + p0));
        v2.add(Integer.valueOf(p1[2] + p0));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[2]));
        v2.add(Integer.valueOf(p1[1] + p0 + p1[2]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2]));
    } else if (p1.length == 4) {
        v2.add(Integer.valueOf(p1[0] + p0));
        v2.add(Integer.valueOf(p1[1] + p0));
        v2.add(Integer.valueOf(p1[2] + p0));
        v2.add(Integer.valueOf(p1[3] + p0));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2] + p1[3]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[2]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1] + p1[3]));
        v2.add(Integer.valueOf(p1[1] + p0 + p1[2] + p1[3]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[1]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[2]));
        v2.add(Integer.valueOf(p1[0] + p0 + p1[3]));
        v2.add(Integer.valueOf(p1[1] + p0 + p1[2]));
        v2.add(Integer.valueOf(p1[1] + p0 + p1[3]));
        v2.add(Integer.valueOf(p1[2] + p0 + p1[3]));
    } else {
        throw new RuntimeException("unhandled:" + p1.length);
    }

    int[] v3 = new int[v2.size()];
    for (int v1 = 0; v1 < v2.size(); v1++) {
        if (v2.get(v1) != null) {
            v3[v1] = ((Integer) v2.get(v1)).intValue();
        }
    }
    return v3;
}
