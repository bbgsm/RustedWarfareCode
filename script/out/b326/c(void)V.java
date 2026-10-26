public static strictfp void c() {
    if (com.corrodinggames.rts.gameFramework.k1104.aR && !com.corrodinggames.rts.gameFramework.k1104.aU && com.corrodinggames.rts.gameFramework.k1104.aV) {
        return;
    }
    com.corrodinggames.rts.gameFramework.k1104 v4 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.b.e329 v3 = com.corrodinggames.rts.game.b.b326.am;
    int longest = java.lang.Math.max((int) v4.cC, (int) v4.cE) + 3;
    if (v3.d != null) {
        int sizeProduct = v3.h * v3.a;
        int needed = v3.h + longest + 1;
        if (sizeProduct < needed) {
            com.corrodinggames.rts.gameFramework.k1104.a("map", "screen must have changed size, layerBufferSize too small at " + v3.a + ", adding to LayerBitmapBuffer");
            com.corrodinggames.rts.gameFramework.k1104.a("map", "new viewpoint:" + v4.cC + ", " + v4.cE);
            v3.c(v3.a + 1);
        }
    }
    if (v3.d != null) {
        return;
    }
    com.corrodinggames.rts.gameFramework.k1104.a("map", "setupLayerBuffers for size:" + longest);
    long startNanos = java.lang.System.nanoTime();
    if (com.corrodinggames.rts.gameFramework.k1104.aU && !com.corrodinggames.rts.gameFramework.k1104.aV) {
        int newLongest = java.lang.Math.max(600, longest);
        int temp = newLongest / (v3.a - 2) + 7 + 4;
        v3.h = temp;
        int temp2 = (int)((v3.h * 0.05f) + 0.5f);
        v3.h = temp2 * 20;
    } else {
        v3.h = 1024;
        v3.a = (int)((longest / (float) v3.h) + 1.5f);
    }
    if (v3.h * v3.a < v3.h + longest + 1) {
        com.corrodinggames.rts.gameFramework.k1104.b("layerBufferSize is too small");
        com.corrodinggames.rts.gameFramework.k1104.b("layerBufferCount:" + v3.a);
        com.corrodinggames.rts.gameFramework.k1104.b("(layerBufferSize*(layerBufferCount):" + (v3.h * v3.a));
        com.corrodinggames.rts.gameFramework.k1104.b("longest+layerBufferSize+1:" + (v3.h + longest + 1));
        com.corrodinggames.rts.gameFramework.k1104.b("longest:" + longest);
        if (com.corrodinggames.rts.gameFramework.k1104.aU && !com.corrodinggames.rts.gameFramework.k1104.aV) {
            v3.h += 100;
        } else {
            v3.a++;
        }
    }
    com.corrodinggames.rts.gameFramework.k1104.d("layerBufferSize:" + v3.h);
    v3.j = v3.h - 4;
    String fadeText = com.corrodinggames.rts.game.b.b326.J ? " x2 for soft fade " : "";
    com.corrodinggames.rts.gameFramework.k1104.b("layerBuffer:" + v3.a + "x" + v3.a + " = " + (v3.a * v3.a) + fadeText);
    v3.d = (com.corrodinggames.rts.game.b.f330[][]) java.lang.reflect.Array.newInstance(com.corrodinggames.rts.game.b.f330.class, new int[]{v3.a, v3.a});
    boolean useSoftFade = v4.bN.renderFancyWater;
    if (!com.corrodinggames.rts.gameFramework.k1104.u() || com.corrodinggames.rts.gameFramework.k1104.v()) {
        useSoftFade = true;
    }
    if (v3.h <= 0) {
        com.corrodinggames.rts.gameFramework.k1104.b("layerBuffer buffer size was too small at: " + v3.h);
        v3.h = 512;
    }
    if (useSoftFade) {
        v3.b = v4.bL.a(v3.h, v3.h, true);
    } else {
        v3.b = v4.bL.a(v3.h, v3.h, false);
    }
    v3.b.w = true;
    v3.c = v4.bL.b(v3.b);
    v3.d();
    long endNanos = java.lang.System.nanoTime();
    double elapsedMs = (endNanos - startNanos) / 1000000.0;
    com.corrodinggames.rts.gameFramework.k1104.d("----- layerBuffers create in:" + elapsedMs + " ms");
    return;
}
