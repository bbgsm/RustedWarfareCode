public final Float c(String p1, String p2, Float p3) {
    Float v0 = this.a(p1, p2, (Float) null, false);
    if (v0 == null) {
        return p3;
    }
    p3 = Float.valueOf(v0.floatValue() * Float.intBitsToFloat(0x41855555));
    return p3;
}
