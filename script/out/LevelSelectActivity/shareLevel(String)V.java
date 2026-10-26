void shareLevel(String p1) {
    if (p1 == null) {
        com.corrodinggames.rts.gameFramework.k1104.d("shareLevel: level==null");
        return;
    }
    com.corrodinggames.rts.gameFramework.k1104.t();
    String v0 = com.corrodinggames.rts.gameFramework.e.a926.e(p1);
    java.io.File v1 = new java.io.File(v0);
    com.corrodinggames.rts.appFramework.d84.a(this, v1);
}
