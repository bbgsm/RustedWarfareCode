void levelOnclickHandler(String p1) {
    com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
    String v1 = com.corrodinggames.rts.gameFramework.k1104.i(p1);
    String v2 = com.corrodinggames.rts.appFramework.LevelSelectActivity.convertLevelFileNameForDisplay(v1);
    com.corrodinggames.rts.gameFramework.h.a1015.a(v2);
    String v2_2 = new StringBuilder().append(this.currentMapPath).append(v1).toString();
    boolean v1_2 = com.corrodinggames.rts.appFramework.LevelSelectActivity.isAvailableInDemo(v1, v2_2);

    if (v0.aq && !v1_2) {
        com.corrodinggames.rts.appFramework.bs49 v0_2 = new com.corrodinggames.rts.appFramework.bs49(this);
        android.app.AlertDialog.Builder v1_3 = new android.app.AlertDialog.Builder(this);
        v1_3 = v1_3.setIcon(0x1080027);
        v1_3 = v1_3.setTitle("Full version only");
        v1_3 = v1_3.setMessage("Sorry this level is not available in the demo version.");
        v1_3.setPositiveButton("Ok", v0_2).show();
        return;
    }

    if (v0 == null || !v0.bD || v0.bE) {
        this.startNewLevel(this, p1, (java.lang.Boolean) null);
    } else {
        com.corrodinggames.rts.appFramework.cd61 v0_3 = new com.corrodinggames.rts.appFramework.cd61(this, this, p1);
        com.corrodinggames.rts.appFramework.bt50 v1_4 = new com.corrodinggames.rts.appFramework.bt50(this);
        com.corrodinggames.rts.appFramework.d84.a(this, v0_3, v1_4);
    }
}
