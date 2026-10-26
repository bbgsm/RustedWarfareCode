public static strictfp void a(int p0, android.graphics.Rect p1) {
    int v0 = (int) (p0 * 0.0625f);
    int v1 = (p0 % 16) * 22 + 1;
    v0 = v0 * 22 + 1;
    p1.left = v1;
    p1.top = v0;
    p1.right = v1 + 20;
    p1.bottom = v0 + 20;
}
