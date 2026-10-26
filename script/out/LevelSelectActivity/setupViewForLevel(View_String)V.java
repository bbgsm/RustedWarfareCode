void setupViewForLevel(View p1, String p2) {
    Button v0 = (Button) p1.findViewById(R$id1367.reservedNamedId1);
    DynamicImageView v1 = (DynamicImageView) p1.findViewById(R$id1367.reservedNamedId2);
    String v2 = LevelSelectActivity.convertLevelFileNameForDisplay(p2);
    v2 = a1015.a(v2);
    boolean v3 = LevelSelectActivity.isAvailableInDemo(p2,
            new StringBuilder().append(this.currentMapPath).append(p2).toString());
    String v4 = new StringBuilder().append(this.currentMapPath).append(p2).toString();
    v0.setTag(v4);
    p1.setTag(v4);
    bt894.b(this.getApplicationContext()).a(
            new StringBuilder().append(this.currentMapPath).append(p2).toString());
    v2 = String.valueOf(v2);
    k1104 v4Config = k1104.t();
    if (v4Config.aq && !v3) {
        v2 = "[LOCKED] ".concat(String.valueOf(v2));
        if (v1 != null) {
            v1.setColorFilter(new LightingColorFilter(Color.argb(255, 60, 60, 60), 0));
        }
        v1 = v2;
    } else {
        v1 = v2;
    }
    v0.setText(v1);
}
