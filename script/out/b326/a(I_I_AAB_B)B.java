public final strictfp byte a(int p1, int p2, byte[][] p3, byte p4) {
    byte v0 = 0;
    int v1 = D;
    int v2 = E;
    if (p1 > 0) {
        if (p3[p1 - 1][p2] >= p4) {
            v0 = (byte) -128;
        }
        if (p2 > 0) {
            if (p3[p1 - 1][p2 - 1] >= p4) {
                v0 = (byte) (v0 + 1);
            }
        }
        if (p2 < v2 - 1) {
            if (p3[p1 - 1][p2 + 1] >= p4) {
                v0 = (byte) (v0 + 8);
            }
        }
    }
    if (p2 > 0) {
        if (p3[p1][p2 - 1] >= p4) {
            v0 = (byte) (v0 + 16);
        }
        if (p1 < v1 - 1) {
            if (p3[p1 + 1][p2 - 1] >= p4) {
                v0 = (byte) (v0 + 2);
            }
        }
    }
    if (p1 < v1 - 1) {
        if (p3[p1 + 1][p2] >= p4) {
            v0 = (byte) (v0 + 32);
        }
    }
    if (p2 < v2 - 1) {
        if (p3[p1][p2 + 1] >= p4) {
            v0 = (byte) (v0 + 64);
        }
        if (p1 < v1 - 1) {
            if (p3[p1 + 1][p2 + 1] >= p4) {
                v0 = (byte) (v0 + 4);
            }
        }
    }
    if (v0 == 127) {
        v0 = (byte) -1;
    }
    return v0;
}
