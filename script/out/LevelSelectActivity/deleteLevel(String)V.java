void deleteLevel(String p1) {
    if (p1 == null) {
        com.corrodinggames.rts.gameFramework.k1104.d("deleteLevel: level==null");
        return;
    }
    String levelFile = com.corrodinggames.rts.gameFramework.e.a926.e(p1);
    String displayName = com.corrodinggames.rts.appFramework.LevelSelectActivity.convertLevelFileNameForDisplay(p1);
    String truncated;
    if (levelFile.toLowerCase(java.util.Locale.ROOT).endsWith(".tmx")) {
        truncated = levelFile.substring(0, levelFile.length() - 4);
    } else {
        truncated = levelFile;
    }
    String mapImageName = truncated + "_map.png";
    new android.app.AlertDialog.Builder(this)
        .setIcon(0x1080027)
        .setTitle("Are you sure?")
        .setMessage("Delete map '" + displayName + "'?")
        .setPositiveButton("Delete", new com.corrodinggames.rts.appFramework.bp46(this, levelFile, mapImageName))
        .setNegativeButton("Keep", new com.corrodinggames.rts.appFramework.ca58(this))
        .show();
}
