public void onCreateContextMenu(android.view.ContextMenu p1, android.view.View p2, android.view.ContextMenu.ContextMenuInfo p3) {
    super.onCreateContextMenu(p1, p2, p3);
    android.widget.AdapterView.AdapterContextMenuInfo menuInfo = (android.widget.AdapterView.AdapterContextMenuInfo) p3;
    android.view.View targetView = menuInfo.targetView;
    String levelFileName = (String) targetView.getTag();
    com.corrodinggames.rts.gameFramework.k1104 k1104Instance = com.corrodinggames.rts.gameFramework.k1104.t();
    String displayName = com.corrodinggames.rts.appFramework.LevelSelectActivity.convertLevelFileNameForDisplay(levelFileName);
    com.corrodinggames.rts.gameFramework.i.b1019 modInfo;
    if (levelFileName != null) {
        modInfo = k1104Instance.bW.f(levelFileName);
    } else {
        modInfo = null;
    }
    this.lastContextMenu = levelFileName;
    p1.setHeaderTitle(displayName);
    android.view.MenuItem exportItem = p1.add(0, targetView.getId(), 0, "Export");
    if (modInfo != null) {
        exportItem.setTitle("Export (Standalone maps only)");
        exportItem.setEnabled(false);
    }
    android.view.MenuItem deleteItem = p1.add(2, targetView.getId(), 0, "Delete");
    if (modInfo != null) {
        deleteItem.setTitle("Delete (Standalone maps only)");
        deleteItem.setEnabled(false);
    }
    if (modInfo != null) {
        android.view.MenuItem fromModItem = p1.add(4, targetView.getId(), 0, new StringBuilder("From Mod: ").append(modInfo.b()).toString());
        fromModItem.setEnabled(false);
    }
    if (modInfo == null && this.custom) {
        String storageString = com.corrodinggames.rts.gameFramework.e.a926.p(levelFileName);
        android.view.MenuItem storageItem = p1.add(3, p2.getId(), 0, "Storage: " + storageString);
        if (storageItem != null) {
            storageItem.setEnabled(false);
        }
    }
}
