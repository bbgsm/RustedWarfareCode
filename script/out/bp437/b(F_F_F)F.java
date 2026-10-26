private strictfp float b(float p1, float p2, float p3) {
    float result = 0.0f;
    if (D()) {
        if (bq()) {
            return result;
        }
        result = f1006.d(this.eq, this.er, p2, p3);
        result = a(p1, result);
        return result;
    }
    if (aU() > 0) {
        int index = aG();
        if (index == -1) {
            index = 0;
        }
        PointF pointF = B(index);
        float f = f1006.d(pointF.x, pointF.y, p2, p3);
        ch457 unit = this.cN[index];
        unit.a(0x46);
        return a(p1, f, index);
    }
    return result;
}
