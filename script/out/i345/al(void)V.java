private strictfp void al() {
    boolean v0;
    int v1 = 0;

    if (this.cN.left >= 0 && this.cN.top >= 0 && (float) this.cN.right > this.bI.f() && (float) this.cN.bottom <= this.bI.g()) {
        v0 = false;
    } else {
        v0 = true;
    }

    if (v0) {
        this.bL.b(android.graphics.Color.rgb(0, 0, 0));
    }
}
