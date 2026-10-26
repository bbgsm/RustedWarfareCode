public final strictfp float a(float p1) {
    if (p1 < 0.0f) {
        p1 = 0.0f;
    }
    if (p1 > this.f()) {
        p1 = this.f();
    }
    return p1;
}
