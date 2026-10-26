public static strictfp int k(float p0) {
    int v1 = 0x2d;
    if (p0 < -0.3f || Float.isNaN(p0)) {
        float v0 = 1.0f;
        float v2 = -p0;
        float v3 = 10.0f;
        v2 /= v3;
        v0 -= v2;
        v2 = 130.0f;
        v0 *= v2;
        v2 = 45.0f;
        v0 += v2;
        int v0i = (int) v0;
        if (v0i < v1) {
            v0i = v1;
        }
        return v0i;
    } else {
        return 0xff;
    }
}
