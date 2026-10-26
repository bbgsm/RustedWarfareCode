public void startNewLevel(android.content.Context p1, java.lang.String p2, java.lang.Boolean p3) {
    com.corrodinggames.rts.gameFramework.k1104 v2 = com.corrodinggames.rts.gameFramework.k1104.c(p1);
    v2.bN.aiDifficulty = this.aiDifficulty.getSelectedItemPosition() - 2;
    v2.bN.save();
    if ((this.skirmish || this.custom) && p3 == null) {
        int v4 = this.getNumberOfAIsSelected();
        int v5 = this.getNumberOfAIsAlliesSelected();
        boolean v6 = this.getTeamedUpSelecteed();
        java.lang.String v0 = com.corrodinggames.rts.appFramework.LevelSelectActivity.convertFilePathToFileName(p2);
        java.lang.String v1 = com.corrodinggames.rts.appFramework.LevelSelectActivity.convertLevelFileNameForDisplay(v0);
        java.lang.StringBuilder v0Builder = new java.lang.StringBuilder();
        v0Builder.append("");
        v0Builder.append("Difficulty: ");
        v0Builder.append(com.corrodinggames.rts.gameFramework.j.ae1028.b(v2.bN.aiDifficulty));
        v0Builder.append("\n");
        v0 = v0Builder.toString();
        if (!this.custom) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(v0);
            sb.append("Number of AIs: ");
            sb.append(v4);
            sb.append(" (");
            sb.append(v5);
            sb.append(" allies)\n");
            v0 = sb.toString();
        }
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append(v0);
        sb2.append("Map: ");
        sb2.append(v1);
        sb2.append("\n");
        v0 = sb2.toString();
        com.corrodinggames.rts.gameFramework.i.b1019 v1b = v2.bW.f(p2);
        if (v1b != null) {
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append(v0);
            sb3.append("From mod file: ");
            sb3.append(v1b.c());
            sb3.append("\n");
            v0 = sb3.toString();
        } else if (com.corrodinggames.rts.appFramework.LevelSelectActivity.isCustomMapOrFolder(p2)) {
            java.lang.String v1c = com.corrodinggames.rts.gameFramework.e.a926.p(p2);
            java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
            sb4.append(v0);
            sb4.append("From storage location: ");
            sb4.append(v1c);
            sb4.append("\n");
            v0 = sb4.toString();
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder = builder.setIcon(0x1080027);
        builder = builder.setTitle("Start?");
        builder = builder.setMessage(v0);
        builder = builder.setPositiveButton("Start game", new com.corrodinggames.rts.appFramework.bw53(this, p1, p2));
        builder = builder.setNegativeButton("Advanced setup", new com.corrodinggames.rts.appFramework.bu51(this, v2, p2, v4, v5, v6));
        builder.show();
    } else {
        this.showDialog(0);
        com.corrodinggames.rts.appFramework.cc60 runnable = new com.corrodinggames.rts.appFramework.cc60(this);
        runnable.b = p1;
        runnable.a = p2;
        new java.lang.Thread(runnable).start();
    }
}
