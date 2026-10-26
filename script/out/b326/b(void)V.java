public static strictfp void b() {
    if (I) {
        return;
    }
    I = true;
    J = com.corrodinggames.rts.gameFramework.k1104.t().bN.softFogFading;
    if (!com.corrodinggames.rts.gameFramework.k1104.X()) {
        return;
    }
    if (android.os.Build.VERSION.SDK_INT <= 26) {
        return;
    }
    long maxHeapSizeInMB = java.lang.Runtime.getRuntime().maxMemory() / 0x100000L;
    com.corrodinggames.rts.gameFramework.k1104.d("MaxHeapSizeInMB:" + maxHeapSizeInMB);
    if (maxHeapSizeInMB <= 200) {
        return;
    }
    com.corrodinggames.rts.gameFramework.k1104.d("enabling softFades");
    J = true;
    return;
}
