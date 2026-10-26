public boolean onContextItemSelected(android.view.MenuItem p1) {
    String level = this.lastContextMenu;
    if (level == null) {
        com.corrodinggames.rts.gameFramework.k1104.d("onContextItemSelected: level==null");
        if (p1 != null) {
            StringBuilder sb = new StringBuilder("onContextItemSelected: item.getGroupId():");
            sb.append(p1.getGroupId());
            com.corrodinggames.rts.gameFramework.k1104.d(sb.toString());
        }
        return false;
    } else {
        int groupId = p1.getGroupId();
        if (groupId == 0) {
            this.shareLevel(level);
            return false;
        }
        if (p1.getGroupId() == 2) {
            this.deleteLevel(level);
        }
        return false;
    }
}
