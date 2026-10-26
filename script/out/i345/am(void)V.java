private strictfp void am() {
    this.cg = this.N();
    this.O();
    this.cl = this.ci / 2.0f;
    this.cm = this.cj / 2.0f;
    this.cn = (float)(int)(this.cj / 3.0f);
    if (i345.Z()) {
        this.cn = (float)(int)(this.cj / 2.5f);
    }
    float v0 = (float)(int)(this.ci / 3.0f);
    if (this.cn > v0) {
        this.cn = v0;
    }
    int v0Int = (int)(250.0f * this.cg);
    this.cn = f1006.b(this.cn, 60.0f, (float)v0Int);

    float v0Camera = this.cv + this.cF;
    float v1Camera = this.cw;
    float v2OldCG = this.cG;

    if (this.cP) {
        this.cC = this.ci;
        this.cD = this.ci;
    } else {
        this.cD = this.ci - this.cn + 1.0f;
        if (i988.bO) {
            this.cC = this.ci;
        } else {
            this.cC = this.cD;
        }
    }

    if (this.cC < 1.0f) {
        this.cC = 1.0f;
    }
    if (this.cD < 1.0f) {
        this.cD = 1.0f;
    }

    if (this.cO != this.cP) {
        if (!this.cP) {
            v0Camera -= (this.cn / 2.0f / this.cU);
        } else {
            v0Camera += (this.cn / 2.0f / this.cU);
        }
    }
    this.cO = this.cP;

    this.cE = this.cj;
    this.cx = this.cC / this.cU;
    this.cy = this.cE / this.cU;
    this.cB = this.cD / this.cU;
    this.cF = this.cx / 2.0f;
    this.cG = this.cy / 2.0f;

    this.cH.set(0, 0, (int)this.cC, (int)this.cE);
    this.cI.set(0, 0, (int)this.cx + 1, (int)this.cy + 1);
    this.cJ.set(0.0f, 0.0f, this.cx + 1.0f, this.cy + 1.0f);

    v0Camera -= this.cF;
    v1Camera += v2OldCG;
    v1Camera -= this.cG;
    this.a(v0Camera, v1Camera);
}
