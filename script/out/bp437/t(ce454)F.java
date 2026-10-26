private strictfp float t(com.corrodinggames.rts.game.units.ce454 p1) {
    float v0 = p1.q().D();
    if (p1.U() == 2) {
        v0 *= 0.5f;
    }
    if (p1.U() == 3) {
        v0 *= 0.25f;
    }
    float v1 = w();
    v0 *= v1;
    return v0;
}
