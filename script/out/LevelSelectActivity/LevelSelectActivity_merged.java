package com.corrodinggames.rts.appFramework;

public class LevelSelectActivity extends a3 {

    // ==== from __header__.java ====
    static final int LOADING_DIALOG;

    static com.corrodinggames.rts.gameFramework.m.e1216 missingMapThumb;

    static com.corrodinggames.rts.gameFramework.m.e1216 toolargethumb;

    private android.widget.Spinner aiCountSpinner;

    private android.widget.Spinner aiDifficulty;

    String currentMapPath;

    boolean custom;

    Runnable fileAddedCallback;

    private android.widget.Spinner gameModeSpinner;

    com.corrodinggames.rts.appFramework.ab5 gameView;

    String lastContextMenu;

    com.corrodinggames.rts.appFramework.cb59 levelAdapter;

    java.util.ArrayList levelPaths;

    java.util.ArrayList levelViews;

    String[] levels;

    public android.widget.Button modsImportMod;

    android.app.ProgressDialog progressDialog;

    private android.os.Handler refreshLevelsHandler;

    private Runnable refreshLevelsRunnable;

    boolean skirmish;

    final android.os.Handler uiHandler;

    boolean wasHidden;

    // ==== from _init_(void)V.java ====
    public LevelSelectActivity() {
        super();
        this.uiHandler = new android.os.Handler();
        this.levelAdapter = new com.corrodinggames.rts.appFramework.cb59(this);
        this.wasHidden = true;
        this.fileAddedCallback = new com.corrodinggames.rts.appFramework.by55(this);
        this.refreshLevelsHandler = new android.os.Handler();
        this.refreshLevelsRunnable = new com.corrodinggames.rts.appFramework.bq47(this);
    }

    // ==== from access$000(LevelSelectActivity)V.java ====
    static void access$000(com.corrodinggames.rts.appFramework.LevelSelectActivity p0) {
        p0.showFileChooserForImport();
    }

    // ==== from convertFilePathToFileName(String)String.java ====
    public static String convertFilePathToFileName(String p0) {
        if (p0 == null) {
            return null;
        } else if (p0.contains("/MOD|")) {
            return p0.substring(p0.indexOf("/MOD|"));
        } else if (p0.contains("/NEW_PATH|")) {
            return p0.substring(p0.indexOf("/NEW_PATH|"));
        } else {
            String[] v0 = p0.split("/");
            return v0[v0.length - 1];
        }
    }

    // ==== from convertLevelFileNameForDisplay(String)String.java ====
    public static String convertLevelFileNameForDisplay(String p0) {
        String v0 = com.corrodinggames.rts.appFramework.d84.b(p0);
        return v0;
    }

    // ==== from createViewForLevel(String)View.java ====
    View createViewForLevel(String p1) {
        k1104 k1104Instance = k1104.t();

        LinearLayout outerLayout = new LinearLayout(getBaseContext());
        outerLayout.setGravity(17);

        LinearLayout innerLayout = new LinearLayout(getBaseContext());
        innerLayout.setOrientation(1);
        innerLayout.setGravity(17);
        innerLayout.setBackgroundColor(Color.argb(0x32, 0, 0, 0));
        innerLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        innerLayout.setPadding(2, 4, 2, 2);
        innerLayout.setMinimumHeight(k1104Instance.a(170.0f));

        Button button = new Button(getBaseContext(), (AttributeSet) null, R.style.LevelButton);

        String mapPath = new StringBuilder().append(this.currentMapPath).append(p1).toString();
        InputStream inputStream = d84.c(mapPath);

        Drawable drawable = null;
        if (inputStream != null) {
            drawable = Drawable.createFromStream(inputStream, (String) null);
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        Drawable levelDrawable = null;
        if (drawable != null && drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmap != null) {
                if (bitmap.getWidth() > 500 || bitmap.getHeight() > 500) {
                    String logMsg = new StringBuilder("Map thumbnail is too large. Size:(")
                            .append(bitmap.getWidth())
                            .append(",")
                            .append(bitmap.getHeight())
                            .append(") (max:500 pixels)")
                            .toString();
                    k1104.d(logMsg);

                    if (LevelSelectActivity.toolargethumb == null) {
                        LevelSelectActivity.toolargethumb = k1104.t().bL.a(R.drawable.error_toolargethumb);
                    }
                    levelDrawable = new BitmapDrawable(getResources(), LevelSelectActivity.toolargethumb.b());
                } else {
                    levelDrawable = drawable;
                }
            } else {
                levelDrawable = drawable;
            }
        } else {
            levelDrawable = drawable;
        }

        if (levelDrawable == null && this.custom) {
            if (LevelSelectActivity.missingMapThumb == null) {
                LevelSelectActivity.missingMapThumb = k1104.t().bL.a(R.drawable.error_missingmap);
            }
            levelDrawable = new BitmapDrawable(getResources(), LevelSelectActivity.missingMapThumb.b());
        }

        if (levelDrawable != null) {
            DynamicImageView imageView = new DynamicImageView(getBaseContext());
            imageView.setId(R.id1367.reservedNamedId2);
            imageView.setMaxFixedHeight(k1104Instance.a(150.0f));
            imageView.setImageDrawable(levelDrawable);
            imageView.setPadding(3, 1, 3, 1);
            innerLayout.addView(imageView);

            LinearLayout.LayoutParams imageParams = new LinearLayout.LayoutParams(imageView.getLayoutParams());
            imageParams.width = -1;
            imageView.setLayoutParams(imageParams);
        }

        button.setId(R.id1367.reservedNamedId1);
        button.setTypeface(Typeface.DEFAULT_BOLD);
        button.setPadding(3, 5, 3, 5);
        button.setTextSize(18.0f);
        button.setTextColor(-1);
        button.setShadowLayer(1.0f, 1.0f, 1.0f, Color.argb(0x7f, 0, 0, 0));
        button.setGravity(17);
        button.setBackgroundDrawable((Drawable) null);
        innerLayout.addView(button);

        setupViewForLevel(innerLayout, p1);

        outerLayout.addView(innerLayout);

        return outerLayout;
    }

    // ==== from deleteLevel(String)V.java ====
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

    // ==== from finish(void)V.java ====
    public void finish() {
        super.finish();
        com.corrodinggames.rts.appFramework.d84.c(this, true);
    }

    // ==== from getNumberOfAIsAlliesSelected(void)I.java ====
    int getNumberOfAIsAlliesSelected() {
        int v0 = this.gameModeSpinner.getSelectedItemPosition();
        if (v0 > 0) {
            int v1 = 3;
            if (v0 <= v1) {
                return v0;
            }
        }
        v0 = 0;
        return v0;
    }

    // ==== from getNumberOfAIsSelected(void)I.java ====
    int getNumberOfAIsSelected() {
            if (this.custom) {
                return 4;
            }
            return this.aiCountSpinner.getSelectedItemPosition() + 1;
        }

    // ==== from getTeamedUpSelecteed(void)Z.java ====
    boolean getTeamedUpSelecteed() {
        int v0 = this.gameModeSpinner.getSelectedItemPosition();
        int v1 = 4;
        if (v0 != v1) {
            return true;
        }
        return false;
    }

    // ==== from isAvailableInDemo(String_String)Z.java ====
    public static boolean isAvailableInDemo(String p0, String p1) {
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile(".*\\[(.*)\\].*").matcher(p0);
        if (matcher.matches()) {
            String group = matcher.group(1).toLowerCase(java.util.Locale.ENGLISH) + "|";
            if (group.contains("demo|")) {
                return true;
            }
        }
        String replaced = p1.replace(".tmx", "");
        String path = replaced + "_demo";
        if (com.corrodinggames.rts.gameFramework.e.a926.i(path)) {
            return true;
        }
        return false;
    }

    // ==== from isCustomMapOrFolder(String)Z.java ====
    public static boolean isCustomMapOrFolder(String p0) {
        boolean v0;
        if (p0 != null) {
            v0 = p0.contains("/SD/");
            if (v0) {
                v0 = true;
            } else {
                v0 = false;
            }
        } else {
            v0 = false;
        }
        return v0;
    }

    // ==== from isMapCustom(String)Z.java ====
    public static boolean isMapCustom(String p0) {
        boolean v0;
        if (p0.contains("SD/")) {
            v0 = true;
        } else {
            v0 = false;
        }
        return v0;
    }

    // ==== from isMapSkirmish(String)Z.java ====
    public static boolean isMapSkirmish(String p0) {
        boolean v0 = p0.contains("skirmish/");
        if (v0) {
            return true;
        } else {
            return false;
        }
    }

    // ==== from levelOnclickHandler(String)V.java ====
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

    // ==== from loadSinglePlayerMapRaw(String_Z_I_I_Z_Z)V.java ====
    public static void loadSinglePlayerMapRaw(String p0, boolean p1, int p2, int p3, boolean p4, boolean p5) {
        com.corrodinggames.rts.gameFramework.k1104 v7 = com.corrodinggames.rts.gameFramework.k1104.t();
        v7.bP.d();
        if (p1 || p5) {
            v7.C();
            synchronized (v7) {
                v7.dj = null;
                v7.di = p0;

                int v0 = com.corrodinggames.rts.game.p352.c - 1;

                int v2 = com.corrodinggames.rts.appFramework.d84.a(p0);

                String v3 = "Max teams on map: " + p0 + " = " + v2;
                com.corrodinggames.rts.gameFramework.k1104.d(v3);

                int v6;
                if (v2 > 0 && v2 - 1 < v0) {
                    v6 = v2 - 1;
                } else {
                    v6 = v0;
                }

                com.corrodinggames.rts.game.p352.x();

                com.corrodinggames.rts.game.e341 v0Obj = new com.corrodinggames.rts.game.e341(0);
                v7.bp = v0Obj;
                v7.bp.w = "Player";

                int v0_counter = 0;
                int v2_loop = 0;

                while (v2_loop <= 1) {
                    int v5 = 1;
                    while (v5 <= v6) {
                        boolean v3_flag = (v5 % 2 == 0) || (v2_loop == 1);
                        if (v0_counter < p3 && v3_flag) {
                            com.corrodinggames.rts.game.p352 v3_obj = com.corrodinggames.rts.game.p352.i(v5);
                            if (v3_obj == null) {
                                com.corrodinggames.rts.game.a.a296 v3_new = new com.corrodinggames.rts.game.a.a296(v5);
                                v3_new.w = "AI";
                                v3_new.s = 0;
                                v0_counter++;
                            }
                        }
                        v5++;
                    }
                    v2_loop++;
                }

                String alliesMsg = "Allies: " + v0_counter + "/" + p3;
                com.corrodinggames.rts.gameFramework.k1104.d(alliesMsg);

                v0_counter = 0;
                v2_loop = 0;

                while (v2_loop <= 1) {
                    int v5 = 1;
                    while (v5 <= v6) {
                        boolean v3_flag = (v5 % 2 == 0) || (v2_loop == 1);
                        if (!p4) {}
                        int v8 = p2 - p3;
                        if (v0_counter < v8 && v3_flag) {
                            com.corrodinggames.rts.game.p352 v3_obj = com.corrodinggames.rts.game.p352.i(v5);
                            if (v3_obj == null) {
                                com.corrodinggames.rts.game.a.a296 v3_new = new com.corrodinggames.rts.game.a.a296(v5);
                                v3_new.w = "AI";
                                v0_counter++;
                                if (!p4) {
                                    v3_new.s = 1;
                                }
                            }
                        }
                        v5++;
                    }
                    v2_loop++;
                }

                v7.bU.B();

                if (!p5) {
                    v7.a(false, com.corrodinggames.rts.gameFramework.ac796.b);
                }
            }
        } else {
            v7.C();
            synchronized (v7) {
                v7.dj = null;
                v7.di = p0;
            }
            if (!p5) {
                v7.a(true, com.corrodinggames.rts.gameFramework.ac796.b);
            }
        }
    }

    // ==== from onActivityResult(I_I_Intent)V.java ====
    protected void onActivityResult(int p1, int p2, Intent p3) {
        switch (p1) {
            case 5:
                Runnable v0 = this.fileAddedCallback;
                ModsActivity.onFileSelectResult(this, p1, p2, p3, v0);
                break;
            default:
                super.onActivityResult(p1, p2, p3);
                break;
        }
    }

    // ==== from onContextItemSelected(MenuItem)Z.java ====
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

    // ==== from onCreate(Bundle)V.java ====
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

    // ==== from onCreateContextMenu(ContextMenu_View_ContextMenu$ContextMenuInfo)V.java ====
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

    // ==== from onCreateDialog(I)Dialog.java ====
    protected android.app.Dialog onCreateDialog(int p1) {
        switch (p1) {
            case 0:
                android.app.ProgressDialog v0 = new android.app.ProgressDialog(this);
                this.progressDialog = v0;
                this.progressDialog.setProgressStyle(0);
                this.progressDialog.setMessage("Loading...");
                this.progressDialog.setCancelable(false);
                return this.progressDialog;
            default:
                return null;
        }
    }

    // ==== from onPause(void)V.java ====
    protected void onPause() {
        super.onPause();
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (v0 != null) {
            com.corrodinggames.rts.appFramework.ab5 v1 = this.gameView;
            v0.b(v1);
        }
    }

    // ==== from onResume(void)V.java ====
    protected void onResume() {
        super.onResume();
        this.setup();
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (v0 != null) {
            this.gameView = com.corrodinggames.rts.appFramework.d84.a(this, this.gameView);
            v0.a(this, this.gameView, true);
        }
        com.corrodinggames.rts.appFramework.d84.a(this, true);
    }

    // ==== from onStart(void)V.java ====
    protected void onStart() {
        super.onStart();
        com.corrodinggames.rts.gameFramework.k1104 v0 = com.corrodinggames.rts.gameFramework.k1104.t();
        if (v0 != null) {
            com.corrodinggames.rts.appFramework.ab5 v1 = this.gameView;
            v0.a(v1);
        }
    }

    // ==== from onStop(void)V.java ====
    protected void onStop() {
        this.wasHidden = true;
        super.onStop();
        k1104 v0 = k1104.t();
        if (v0 != null) {
            v0.a(this, this.gameView);
        }
    }

    // ==== from refresh(void)V.java ====
    public void refresh() {
        this.refreshLevelsHandler.post(this.refreshLevelsRunnable);
        return;
    }

    // ==== from setup(void)V.java ====
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

    // ==== from setupViewForLevel(View_String)V.java ====
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

    // ==== from shareLevel(String)V.java ====
    void shareLevel(String p1) {
        if (p1 == null) {
            com.corrodinggames.rts.gameFramework.k1104.d("shareLevel: level==null");
            return;
        }
        com.corrodinggames.rts.gameFramework.k1104.t();
        String v0 = com.corrodinggames.rts.gameFramework.e.a926.e(p1);
        java.io.File v1 = new java.io.File(v0);
        com.corrodinggames.rts.appFramework.d84.a(this, v1);
    }

    // ==== from showFileChooserForImport(void)V.java ====
    private void showFileChooserForImport() {
        com.corrodinggames.rts.appFramework.d84.f(this);
        return;
    }

    // ==== from startNewLevel(Context_String_Boolean)V.java ====
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

}
