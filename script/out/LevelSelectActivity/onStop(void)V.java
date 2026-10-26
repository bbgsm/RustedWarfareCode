protected void onStop() {
    this.wasHidden = true;
    super.onStop();
    k1104 v0 = k1104.t();
    if (v0 != null) {
        v0.a(this, this.gameView);
    }
}
