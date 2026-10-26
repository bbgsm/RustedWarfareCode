public LevelSelectActivity() {
    super();
    this.uiHandler = new android.os.Handler();
    this.levelAdapter = new com.corrodinggames.rts.appFramework.cb59(this);
    this.wasHidden = true;
    this.fileAddedCallback = new com.corrodinggames.rts.appFramework.by55(this);
    this.refreshLevelsHandler = new android.os.Handler();
    this.refreshLevelsRunnable = new com.corrodinggames.rts.appFramework.bq47(this);
}
