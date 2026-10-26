public final strictfp int bf() {
    int v0 = super.bf();
    int v1 = (int) (y() * 100.0f);
    int v2 = (int) (z() * 100.0f);
    int v3 = (int) (l() * 100.0f);
    int v4 = (int) b(0);
    int v5 = (int) (B() * 100.0f);
    v0 = (v0 + 0) * 31 + v1;
    v0 = v0 * 31 + v2;
    v0 = v0 * 31 + v3;
    v0 = v0 * 31 + v4;
    v0 = v0 * 31 + v5;
    return v0;
}
