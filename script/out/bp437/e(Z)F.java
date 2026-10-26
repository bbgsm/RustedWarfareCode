private strictfp float e(boolean p1) {
    float v1 = 190.0f;
    float v5 = 110.0f;
    float v0 = this.l();
    com.corrodinggames.rts.game.units.en734 v2 = this.ap();

    if (v2 != null) {
        if (v2.a == com.corrodinggames.rts.game.units.eo735.h || v2.a == com.corrodinggames.rts.game.units.eo735.j || v2.a == com.corrodinggames.rts.game.units.eo735.k) {
            if (v2.a == com.corrodinggames.rts.game.units.eo735.j) {
                v0 += v5;
            } else if (v2.a == com.corrodinggames.rts.game.units.eo735.k) {
                v0 += 90.0f;
            } else {
                v0 += 20.0f;
            }
            if (v0 < v1) {
                v0 = v1;
            }
        }
    }

    com.corrodinggames.rts.game.units.a384 vR = this.R;
    if (vR == com.corrodinggames.rts.game.units.a384.a) {
        v0 += 250.0f;
    } else if (vR == com.corrodinggames.rts.game.units.a384.e) {
        v0 += 150.0f;
    } else if (vR == com.corrodinggames.rts.game.units.a384.f) {
        v0 += 180.0f;
    } else {
        v0 += this.ak();
        if (p1) {
            v0 += v5;
        }
    }
    return v0;
}
