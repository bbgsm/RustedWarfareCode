package com.corrodinggames.rts.appFramework;

public class LevelSelectActivity extends a3 {
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
}
