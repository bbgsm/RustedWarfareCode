public void setup() {
    this.wasHidden = false;

    k1104 k1104Instance = k1104.c(this);

    View backButton = this.findViewById(R.id.levelButtonBack);
    backButton.setOnClickListener(new bo45(this));

    String mode = null;
    Intent intent = this.getIntent();
    if (intent != null && intent.getExtras() != null) {
        mode = intent.getExtras().getString("mode");
    }

    if (mode == null) {
        k1104.d("LevelSelectActivity: mode==null, running this.finish()");
        this.finish();
        return;
    }

    boolean isCustomMapOrFolder = LevelSelectActivity.isCustomMapOrFolder(mode);

    if ("maps/survival".equals(mode)) {
        this.aiDifficulty.setVisibility(8);
    } else {
        this.aiDifficulty.setVisibility(0);
    }

    if (isCustomMapOrFolder) {
        this.modsImportMod.setVisibility(0);

        TextView messageInfo = (TextView) this.findViewById(R.id.messageInfo);
        String storageInfo = SettingsActivity.getStorageInfoAndWarnings("/maps");
        if (storageInfo != null) {
            messageInfo.setVisibility(0);
            messageInfo.setText(storageInfo);
        } else {
            messageInfo.setVisibility(8);
            messageInfo.setText("");
        }
    } else {
        this.modsImportMod.setVisibility(8);
    }

    this.aiDifficulty.setSelection(k1104Instance.bN.aiDifficulty + 2);

    this.skirmish = "maps/skirmish".equals(mode);
    this.custom = "/SD/rusted_warfare_maps".equals(mode);

    if (this.skirmish) {
        this.aiCountSpinner.setVisibility(0);
        this.gameModeSpinner.setVisibility(0);
        this.aiCountSpinner.setSelection(3);
    }

    GridView gridView = (GridView) this.findViewById(R.id.levelHolder);

    if (LevelSelectActivity.isCustomMapOrFolder(mode) && !d84.d(this)) {
        this.finish();
        return;
    }

    this.levels = a926.a(mode, true);

    this.levels = k1104Instance.bW.a(this.levels, mode);

    if (this.custom) {
        if (this.levels == null || this.levels.length == 0) {
            d84.c(this);
        }
    }

    if (this.levels == null) {
        this.levels = new String[0];
    }

    this.currentMapPath = mode + "/";

    this.levelViews = new ArrayList();
    this.levelPaths = new ArrayList();

    for (String level : this.levels) {
        this.levelPaths.add(level);
        this.levelViews.add(null);
    }

    gridView.setAdapter(this.levelAdapter);

    gridView.setOnItemClickListener(new br48(this));

    if (isCustomMapOrFolder) {
        this.registerForContextMenu(gridView);
    }

    if (this.progressDialog != null && this.progressDialog.isShowing()) {
        try {
            this.dismissDialog(0);
        } catch (IllegalArgumentException e) {
            k1104.a("dismissDialog failed", e);
        }
    }
}
