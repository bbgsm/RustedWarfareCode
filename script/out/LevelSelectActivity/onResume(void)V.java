protected void onResume() {
    super.onResume();
    this.setup();
    com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
    if (v0 != null) {
        this.gameView = com.corrodinggames.rts.appFramework.d84.a(this, this.gameView);
        v0.a(this, this.gameView, true);
    }
    com.corrodinggames.rts.appFramework.d84.a(this, true);
}
