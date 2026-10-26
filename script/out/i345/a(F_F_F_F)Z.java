private strictfp boolean a(float p1, float p2, float p3, float p4) {
    float limit = 15.0f;
    float zero = 0.0f;
    float one = 1.0f;

    float v1 = com.corrodinggames.rts.gameFramework.f1006.d(this.cv + this.cF, this.cw + this.cG, p2, p3);
    float v2 = com.corrodinggames.rts.gameFramework.f1006.a(this.cv + this.cF, this.cw + this.cG, p2, p3);
    float v3 = p4 * p1;

    float v4 = v3 + one;
    if (limit < v4) {
        limit = v3 + one;
    }
    limit = limit * limit;

    if (v2 < limit || this.cq) {
        return true;
    }

    this.cz = this.cz + com.corrodinggames.rts.gameFramework.f1006.k(v1) * v3;
    this.cA = this.cA + com.corrodinggames.rts.gameFramework.f1006.j(v1) * v3;

    if (com.corrodinggames.rts.gameFramework.f1006.d(this.cz) < one || com.corrodinggames.rts.gameFramework.f1006.d(this.cA) >= one) {
        this.cv += this.cz;
        this.cw += this.cA;
        this.cz = zero;
        this.cA = zero;
        this.a(this.cv, this.cw);
    }

    return false;
}
