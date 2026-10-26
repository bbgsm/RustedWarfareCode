public void onCreate(android.os.Bundle p1) {
    super.onCreate(p1);
    setTitle("Levels");
    if (!com.corrodinggames.rts.appFramework.d84.b(this, true)) {
        return;
    }
    setContentView(com.corrodinggames.rts.R.layout.level_select_grid);
    com.corrodinggames.rts.appFramework.d84.a(getWindow().getDecorView().findViewById(0x1020002));
    this.aiDifficulty = (android.widget.Spinner) findViewById(com.corrodinggames.rts.R.id1367.aiDifficulty);
    this.aiCountSpinner = (android.widget.Spinner) findViewById(com.corrodinggames.rts.R.id1367.aiCount);
    this.gameModeSpinner = (android.widget.Spinner) findViewById(com.corrodinggames.rts.R.id1367.gameMode);
    this.modsImportMod = (android.widget.Button) findViewById(com.corrodinggames.rts.R.id1367.modsImportMod);
    this.gameView = com.corrodinggames.rts.appFramework.d84.b(this);
    this.modsImportMod.setOnClickListener(new com.corrodinggames.rts.appFramework.bx54(this));
}
