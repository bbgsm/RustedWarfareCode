package com.corrodinggames.rts.appFramework;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.corrodinggames.rts.R;
import com.corrodinggames.rts.R.id;
import com.corrodinggames.rts.appFramework.android.AndroidSAF;
import com.corrodinggames.rts.game.units.custom.ag500;
import com.corrodinggames.rts.game.units.custom.logicBooleans.VariableScope;
import com.corrodinggames.rts.gameFramework.e.a926;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.i.a1018;
import com.corrodinggames.rts.gameFramework.i.b1019;
import com.corrodinggames.rts.gameFramework.i.d1021;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.utility.a.a1317;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public class ModsActivity extends a3 {
    public static final int FILE_SELECT_CODE = 5;
    static final int LOADING_DIALOG = 0;
    public static final int OPEN_DIRECTORY_REQUEST_CODE = 6;
    public static final String progressDialogBaseMessage = "Loading selected mod data...";
    static boolean refreshButtonBlocked = false;
    static Object refreshLock = new Object();
    ProgressDialog progressDialog;
    final Handler uiHandler = new Handler();
    k246 linkModFolder = new ed115(this);
    Runnable fileAddedCallback = new ee116(this);

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        d84.c(this, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.corrodinggames.rts.appFramework.a3, android.app.Activity
    public void onResume() {
        super.onResume();
        setup(false);
        k1104.t();
        d84.a((Activity) this, false);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Mods");
        if (d84.b((Activity) this, false)) {
            setContentView(R.layout.mods);
            d84.a((View)getWindow().getDecorView().findViewById(android.R.id.content));
            setup(true);
        }
    }

    public void setup(boolean z) {
        k1104 c = k1104.c(this);
        if (!d84.d(this)) {
            finish();
            return;
        }
        if (z) {
            d84.c(this);
        }
        ((TextView) findViewById(R.id.messageInfo)).setVisibility(View.GONE);
        TextView textView = (TextView) findViewById(R.id.modExtraTextInfo);
        String str = VariableScope.nullOrMissingString;
        if (c.bN.storageType == 0) {
            str = "Note: Using internal game storage only (Switch to external storage in game settings)";
        }
        if (a1018.a != null) {
            str = str + "\n" + a1018.a;
        }
        textView.setText(str);
        ArrayList arrayList = new ArrayList();
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.modsContainer);
        a1018 a1018Var = c.bW;
        linearLayout.removeAllViews();
        Iterator it = a1018Var.j().iterator();
        while (it.hasNext()) {
            b1019 b1019Var = (b1019) it.next();
            LinearLayout linearLayout2 = new LinearLayout(getBaseContext());
            linearLayout2.setOrientation(LinearLayout.VERTICAL);
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(Color.argb(30, 0, 0, 0));
            linearLayout2.setPadding(2, 7, 2, 7);
            LinearLayout linearLayout3 = new LinearLayout(getBaseContext());
            linearLayout3.setOrientation(LinearLayout.VERTICAL);
            linearLayout3.setGravity(17);
            linearLayout3.setBackgroundColor(Color.argb(40, 255, 255, 255));
            linearLayout3.setMinimumHeight(2);
            linearLayout2.addView(linearLayout3);
            k1104.d("found mod: " + b1019Var.c + " - " + (!b1019Var.f));
            CheckBox checkBox = new CheckBox(getBaseContext());
            checkBox.setChecked(!b1019Var.f);
            checkBox.setText(b1019Var.a());
            checkBox.setTextSize(1, 22.0f);
            checkBox.setTextColor(-1);
            linearLayout2.addView(checkBox);
            checkBox.setTag(b1019Var.e);
            linearLayout2.setTag(b1019Var.e);
            registerForContextMenu(checkBox);
            registerForContextMenu(linearLayout2);
            ei120 ei120Var = new ei120(this);
            ei120Var.a = checkBox;
            ei120Var.b = b1019Var;
            arrayList.add(ei120Var);
            if (b1019Var.s != null) {
                StringBuilder sb = new StringBuilder("  ");
                String str2 = b1019Var.s != null ? VariableScope.nullOrMissingString + b1019Var.s : VariableScope.nullOrMissingString;
                String str3 = "RAM:" + b1019Var.k();
                if (b1019Var.l != null) {
                    str3 = str3 + " Storage: slow external unpacked";
                }
                if (k1104.X() && b1019Var.o != null && a926.a(b1019Var.o) && !b1019Var.h) {
                    str3 = str3 + " Warning: slow external storage";
                }
                String sb2 = sb.append(str2 + "\n (" + str3 + ")").toString();
                TextView textView2 = new TextView(getBaseContext());
                textView2.setText(sb2);
                textView2.setTextSize(1, 14.0f);
                textView2.setTextColor(-1);
                linearLayout2.addView(textView2);
            }
            if (b1019Var.P != null) {
                TextView textView3 = new TextView(getBaseContext());
                textView3.setText(b1019Var.P);
                textView3.setTextSize(1, 14.0f);
                textView3.setTextColor(Color.argb(255, 219, 143, 143));
                textView3.setBackgroundColor(Color.argb(108, 0, 0, 0));
                linearLayout2.addView(textView3);
            }
            String h = b1019Var.h();
            if (h != null) {
                TextView textView4 = new TextView(getBaseContext());
                textView4.setText(h);
                textView4.setTextSize(1, 14.0f);
                textView4.setTextColor(-16711936);
                linearLayout2.addView(textView4);
            }
            linearLayout.addView(linearLayout2);
        }
        ((Button) findViewById(R.id.modsClose)).setOnClickListener(new do99(this));
        ((Button) findViewById(R.id.modsSave)).setOnClickListener(new dw107(this, arrayList));
        ((Button) findViewById(R.id.modsCreateFolder)).setOnClickListener(new dx108(this));
        ((Button) findViewById(R.id.modsImportMod)).setOnClickListener(new dy109(this));
        Button button = (Button) findViewById(R.id.modsLinkModFolder);
        button.setOnClickListener(new dz110(this));
        if (Build.VERSION.SDK_INT < 19) {
            button.setVisibility(View.GONE);
        }
        ((Button) findViewById(R.id.modsReload)).setOnClickListener(new ec114(this, arrayList));
        if (this.progressDialog != null && this.progressDialog.isShowing()) {
            try {
                dismissDialog(0);
            } catch (IllegalArgumentException e) {
                k1104.a("dismissDialog failed", (Throwable) e);
            }
        }
    }

    public boolean modsSave(ArrayList arrayList, boolean z) {
        k1104.d("Saving mods");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ei120 ei120Var = (ei120) it.next();
            b1019 b1019Var = ei120Var.b;
            b1019Var.f = !ei120Var.a.isChecked();
            k1104.d("mod: " + b1019Var.c + " - " + (!b1019Var.f));
        }
        k1104 t = k1104.t();
        t.bW.d();
        t.bN.save();
        int a = t.bW.a();
        if (t.bU.C) {
            k1104.d("savesMods: in network game");
            t.g("You are currently in a network game, mods changes will be remembered and applied on next game");
            return true;
        } else if (ag500.b(true)) {
            if (a == 0) {
                int b = t.bW.b();
                if (z) {
                    t.g("Mod changes saved. " + b + " selected mods will be used in the next game.");
                    return true;
                }
                return true;
            }
            if (z) {
                t.g("Mod changes saved. But " + a + " mods are not loaded. Click 'Reload Mod Data' or restart the game to use these mods.");
            }
            return false;
        } else {
            if (z) {
                t.g("Mods errors found");
            }
            return false;
        }
    }

    public void createAndShowFolder(String str) {
        k1104 t = k1104.t();
        String e = a926.e(str);
        if (!e.endsWith(File.separator)) {
            new StringBuilder().append(e).append(File.separator);
        }
        String d = a926.d(e);
        File file = new File(e);
        if (!a926.i(file.getAbsolutePath())) {
            if (a926.m(file.getAbsolutePath())) {
                if (a926.i(file.getAbsolutePath()) && a926.f(file.getAbsolutePath())) {
                    if (!t.bN.externalSAFWorking) {
                        t.g("Created folder: " + d + ". (Note: " + ("Failed to read: " + t.bN.externalSAFPathShown + " - Folder might have moved or permission expired. Please setup again under in-game settings.") + ")");
                        return;
                    }
                    t.g("Created folder: ".concat(String.valueOf(d)));
                    return;
                }
                t.g("Error creating folder: ".concat(String.valueOf(d)));
                return;
            }
            t.g("Failed to create: ".concat(String.valueOf(d)));
        } else if (a926.f(file.getAbsolutePath())) {
            if (!t.bN.externalSAFWorking) {
                t.g("Note: " + ("Failed to read: " + t.bN.externalSAFPathShown + " - Folder might have moved or permission expired. Please setup again under in-game settings.") + ". Folder already created: " + d);
                return;
            }
            t.g("Folder already created: ".concat(String.valueOf(d)));
        } else {
            t.g("Mod path exist but is not a directory: ".concat(String.valueOf(d)));
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case 0:
                this.progressDialog = new ProgressDialog(this);
                this.progressDialog.setProgressStyle(0);
                this.progressDialog.setMessage(progressDialogBaseMessage);
                this.progressDialog.setCancelable(false);
                return this.progressDialog;
            default:
                return null;
        }
    }

    public void refreshModsInBackground() {
        showDialog(0);
        new Thread(new ek122(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFolderChooserForModLink() {
        d84.a((Activity) this, 6, false, "Select a Rusted Warfare Mod Folder to Import", (Uri) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFileChooserForImport() {
        d84.f(this);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 5:
                onFileSelectResult(this, i, i2, intent, this.fileAddedCallback);
                return;
            case 6:
                d84.a(this, i, i2, intent, this.linkModFolder);
                return;
            default:
                super.onActivityResult(i, i2, intent);
                return;
        }
    }

    public static void addSafModUriString(String str) throws IOException {
        addSafModUri(Uri.parse(str));
    }

    public static void addSafModUri(Uri uri) throws IOException {
        k1104 t = k1104.t();
        Context a = d84.a();
        AndroidSAF androidSAF = AndroidSAF.getInstance();
        Uri buildDocumentUriUsingTree = androidSAF.buildDocumentUriUsingTree(uri);
        Iterator it = androidSAF.listByName(a, buildDocumentUriUsingTree).iterator();
        boolean z = false;
        while (it.hasNext()) {
            z = "mod-info.txt".equals((String) it.next()) ? true : z;
        }
        if (!z) {
            throw new IOException("No 'mod-info.txt' file found in this directory. Please add this first.");
        }
        String name = androidSAF.getName(a, buildDocumentUriUsingTree);
        k1104.d("Filename: ".concat(String.valueOf(name)));
        String a2 = a1317.a(uri);
        String a3 = a1317.a(uri, false);
        if (a3 == null) {
            throw new IOException("Failed to link folder: " + a2 + " - Check permissions.");
        }
        k1104.d("safVirualPath: ".concat(String.valueOf(a3)));
        b1019 a4 = t.bW.a(name.contains("/") ? name.substring(name.lastIndexOf("/") + 1) : name, name, a3, f1006.f(uri.toString()), true, false);
        a4.k = true;
        a4.l = uri.toString();
        a4.m = "Path: ".concat(String.valueOf(a2));
    }

    public static eh119 getFileData(Activity activity, Uri uri) {
        k1104 t = k1104.t();
        if (uri == null) {
            t.g("Cannot import - no file");
            return null;
        }
        eh119 eh119Var = new eh119();
        eh119Var.d = uri;
        try {
            k1104.d("File Uri: " + uri.toString());
            k1104.d("mimeType: ".concat(String.valueOf(activity.getContentResolver().getType(uri))));
            Cursor query = activity.getContentResolver().query(uri, null, null, null, null);
            if (query == null) {
                t.g("Cannot import - Did not receive a file");
                return null;
            }
            int columnIndex = query.getColumnIndex("_display_name");
            int columnIndex2 = query.getColumnIndex("_size");
            if (!query.moveToFirst()) {
                t.g("Cannot import - Did not receive a filename data");
                return null;
            }
            String string = query.getString(columnIndex);
            long j = query.getLong(columnIndex2);
            k1104.d("fileName: ".concat(String.valueOf(string)));
            k1104.d("fileSize: ".concat(String.valueOf(j)));
            if (string == null) {
                t.g("Cannot import - Did not receive a filename");
                return null;
            }
            eh119Var.a = string;
            eh119Var.b = j;
            d1021 d1021Var = d1021.unknown;
            if (string != null) {
                if (string.toLowerCase(Locale.ROOT).endsWith(".zip") || string.toLowerCase(Locale.ROOT).endsWith(".rwmod")) {
                    d1021Var = d1021.mod;
                }
                if (string.toLowerCase(Locale.ROOT).endsWith(".tmx")) {
                    d1021Var = d1021.map;
                }
                if (string.toLowerCase(Locale.ROOT).endsWith(".replay")) {
                    d1021Var = d1021.replay;
                }
                if (string.toLowerCase(Locale.ROOT).endsWith(".rwsave")) {
                    d1021Var = d1021.save;
                }
                if (string.endsWith("_map.png")) {
                    d1021Var = d1021.mapThumbnail;
                }
            }
            eh119Var.c = d1021Var;
            return eh119Var;
        } catch (SecurityException e) {
            e.printStackTrace();
            t.g("Cannot read file - File permission error: " + e.getMessage());
            return null;
        }
    }

    public static boolean importFileData(Activity activity, eh119 eh119Var, Integer num) {
        String a;
        k1104 t = k1104.t();
        Uri uri = eh119Var.d;
        if (eh119Var.d == null) {
            t.g("Cannot import - no file");
            return false;
        } else if (eh119Var.c != d1021.unknown) {
            try {
                FileDescriptor fileDescriptor = activity.getContentResolver().openFileDescriptor(uri, "r").getFileDescriptor();
                String str = eh119Var.a;
                d1021 d1021Var = eh119Var.c;
                k1104.d("Importing " + str + "..");
                if (num == null) {
                    a = a1018.a(d1021Var, str, a926.b);
                } else {
                    a = a1018.a(d1021Var, str, a926.a(num.intValue()));
                }
                if (a == null) {
                    k1104.d("saveTargetFullPathFinal==null, not writing");
                    return false;
                }
                FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                try {
                    File file = new File(a);
                    File file2 = new File(a + ".tmp");
                    try {
                        OutputStream a2 = a926.a(file2, false);
                        f1006.b(fileInputStream, a2);
                        if (a2 != null) {
                            a2.close();
                        }
                        fileInputStream.close();
                        if (k1104.X() && a926.i(file.getAbsolutePath())) {
                            k1104.d("File already exists: " + file.getAbsolutePath());
                            if (!a926.b(file)) {
                                k1104.d("Failed to delete existing file");
                            }
                        }
                        k1104.d("Finished writing file, renaming to final filename");
                        if (a926.b(file2, file)) {
                            k1104.d("File '" + str + "' imported");
                            return true;
                        }
                        k1104.d("Failed to rename to final file");
                        throw new IOException("Failed to rename to final file. Check file permissions of storage.");
                    } catch (IOException e) {
                        e.printStackTrace();
                        if (a926.i(file2.getAbsolutePath())) {
                            k1104.d("writeSteamToFileAtomic: Removing temp file");
                            a926.b(file2);
                        }
                        throw new IOException(e);
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    t.g("Error importing mod file: " + e2.getMessage() + " (Hint: check permissions and disk space)");
                    return false;
                }
            } catch (SecurityException e3) {
                e3.printStackTrace();
                t.g("Permission error importing mod file: " + e3.getMessage());
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                t.g("Failed to import file: " + e4.getMessage());
                return false;
            }
        } else {
            t.g("Cannot import file: " + eh119Var.a + " - Expected a .zip, .rwmod or .tmx file");
            return false;
        }
    }

    public static void askBeforeImportingFiles(Activity activity, ArrayList arrayList, Runnable runnable) {
        k1104 t = k1104.t();
        if (arrayList.size() == 0) {
            t.g("Cannot import no files");
            return;
        }
        int skippedThumbs = 0;
        for (Object obj : arrayList) {
            eh119 file = (eh119) obj;
            if (file.c == d1021.mapThumbnail) {
                if (file.a.endsWith("_map.png")) {
                    String tmxName = file.a.substring(0, file.a.length() - 8) + ".tmx";
                    boolean found = false;
                    for (Object obj2 : arrayList) {
                        if (((eh119) obj2).a.equals(tmxName)) {
                            found = true;
                            break;
                        }
                    }
                    if (found) {
                        k1104.b("Found matching map for thumbnail: " + file.a);
                    } else {
                        file.e = true;
                        k1104.b("Failed to find matching map for thumbnail: " + file.a);
                        skippedThumbs++;
                    }
                } else {
                    file.e = true;
                    k1104.b("Unknown map thumbnail name: " + file.a);
                }
            }
            if (file.c == d1021.unknown) {
                file.e = true;
            }
        }
        int importableCount = 0;
        int unknownSkipped = 0;
        for (Object obj : arrayList) {
            eh119 file = (eh119) obj;
            if (file.e) {
                if (file.c != d1021.mapThumbnail) {
                    unknownSkipped++;
                }
            } else {
                importableCount++;
            }
        }
        String title;
        String message;
        d1021 commonType;
        if (arrayList.size() == 1) {
            eh119 file = (eh119) arrayList.get(0);
            if (file.c == d1021.unknown) {
                t.g("Cannot import file: " + file.a + " - Expected a .zip, .rwmod or .tmx files");
                return;
            }
            if (file.c == d1021.mapThumbnail) {
                t.b("Cannot import thumbnail: " + file.a, "When importing a thumbnail also include it's map");
                return;
            }
            commonType = file.c;
            title = "Import";
            if (commonType == d1021.mod) {
                title = "Import mod?";
            }
            if (commonType == d1021.map) {
                title = "Import map?";
            }
            if (commonType == d1021.replay) {
                title = "Import replay?";
            }
            if (commonType == d1021.save) {
                title = "Import save?";
            }
            message = "Are you sure you want to import: ".concat(String.valueOf(file.a));
        } else {
            title = "Import " + importableCount + " files?";
            message = "Are you sure you want to import " + importableCount + " files.";
            d1021 detected = null;
            boolean mixed = false;
            for (Object obj : arrayList) {
                eh119 file = (eh119) obj;
                if (!file.e) {
                    if (detected == null) {
                        detected = file.c;
                    } else if (detected != file.c) {
                        mixed = true;
                        break;
                    }
                }
            }
            commonType = (mixed || detected == null) ? d1021.unknown : detected;
            String msg = unknownSkipped != 0 ? message + "\n" + unknownSkipped + " files were skipped due to being an unknown type" : message;
            message = skippedThumbs != 0 ? msg + "\n" + skippedThumbs + " thumbnails were skipped due to not including a matching map" : msg;
        }
        if (importableCount == 0) {
            t.g("Cannot import any selected files - Expected a .zip, .rwmod or .tmx files");
            return;
        }
        if (k1104.X() && commonType == d1021.mod && (t.bN.storageType == 2 || t.bN.storageType == 1)) {
            d84.a(activity, title, message + "\n\nInternal storage is recommended for faster mod loading (but is deleted by OS on uninstall)", "Import (external)", new dp100(activity, arrayList, runnable), "Import (internal)", new eg118(activity, arrayList, runnable));
            return;
        }
        d84.a(activity, title, message, "Import", new dq101(activity, arrayList, runnable), null, null);
    }

    public static void importingFilesBackground(Activity activity, ArrayList arrayList, Runnable runnable, Integer num) {
        ModsActivity modsActivity = activity instanceof ModsActivity ? (ModsActivity) activity : null;
        if (modsActivity != null) {
            modsActivity.showDialog(0);
        }
        k1104.t().dF = null;
        dr102 dr102Var = new dr102(modsActivity, activity, arrayList, runnable, num);
        if (modsActivity != null) {
            new Thread(dr102Var).start();
        } else {
            dr102Var.run();
        }
    }

    public static void importingFiles(Activity activity, ArrayList arrayList, Runnable runnable, Integer num) {
        k1104 t = k1104.t();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            eh119 eh119Var = (eh119) it.next();
            if (!eh119Var.e) {
                try {
                    i = importFileData(activity, eh119Var, num) ? i + 1 : i;
                } catch (Exception e) {
                    k1104.t().g("Error importing file: " + eh119Var + " - " + e.getMessage() + " (Hint: check permissions and disk space)");
                    e.printStackTrace();
                    return;
                }
            }
        }
        if (i > 0) {
            if (arrayList.size() == 1) {
                t.g("File '" + ((eh119) arrayList.get(0)).a + "' imported");
            } else {
                t.g(i + " files imported");
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void onFileSelectResult(Activity activity, int i, int i2, Intent intent, Runnable runnable) {
        if (i2 == -1) {
            try {
                ClipData clipData = intent.getClipData();
                ArrayList arrayList = new ArrayList();
                if (clipData != null) {
                    for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                        eh119 fileData = getFileData(activity, clipData.getItemAt(i3).getUri());
                        if (fileData != null) {
                            arrayList.add(fileData);
                        } else {
                            return;
                        }
                    }
                } else {
                    eh119 fileData2 = getFileData(activity, intent.getData());
                    if (fileData2 != null) {
                        arrayList.add(fileData2);
                    } else {
                        return;
                    }
                }
                askBeforeImportingFiles(activity, arrayList, runnable);
                return;
            } catch (Exception e) {
                k1104.t().g("Error importing file: " + e.getMessage() + " (Hint: check permissions and disk space)");
                e.printStackTrace();
                return;
            }
        }
        k1104.d("FILE_SELECT_CODE resultCode:".concat(String.valueOf(i2)));
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        k1104.d("onCreateContextMenu for mod");
        b1019 b1019Var = k1104.t().bW.b(new StringBuilder().append(view.getTag()).toString());
        if (b1019Var == null) {
            contextMenu.setHeaderTitle("Fail to find: " + view.getTag());
            return;
        }
        if (contextMenu.size() > 0) {
            return;
        }
        contextMenu.setHeaderTitle(b1019Var.c());
        MenuItem exportItem = contextMenu.add(0, b1019Var.J, 0, "Export");
        boolean exportEnabled = false;
        if (b1019Var.x) {
            if (k1104.aW && b1019Var.h) {
                exportEnabled = true;
            } else if (k1104.X() && b1019Var.h) {
                exportEnabled = true;
            }
        }
        if (!exportEnabled) {
            exportItem.setTitle("Export (packaged mods only)");
            exportItem.setEnabled(false);
        }
        MenuItem deleteItem = contextMenu.add(2, b1019Var.J, 0, "Delete");
        if (b1019Var.l()) {
            deleteItem.setTitle("Delete (packaged mods only)");
            deleteItem.setEnabled(false);
        }
        if (b1019Var.l != null) {
            contextMenu.add(3, b1019Var.J, 0, "Unlink");
            String d = a926.d(b1019Var.l);
            k1104.d("onCreateContextMenu externalSafUri:" + b1019Var.l + " > " + d);
            contextMenu.add(4, b1019Var.J, 0, "Source: ".concat(String.valueOf(d))).setEnabled(false);
        }
        if (b1019Var.m != null) {
            contextMenu.add(5, b1019Var.J, 0, b1019Var.m).setEnabled(false);
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        b1019 b1019Var;
        a1018 a1018Var = k1104.t().bW;
        int itemId = menuItem.getItemId();
        Iterator it = a1018Var.e.iterator();
        while (true) {
            if (it.hasNext()) {
                b1019Var = (b1019) it.next();
                if (b1019Var.J == itemId) {
                    break;
                }
            } else {
                b1019Var = null;
                break;
            }
        }
        if (b1019Var != null) {
            if (menuItem.getGroupId() == 0) {
                shareMod(b1019Var);
            } else if (menuItem.getGroupId() == 2) {
                deleteMod(b1019Var);
            } else if (menuItem.getGroupId() == 3) {
                unlinkMod(b1019Var);
            }
            return false;
        }
        k1104.t().g("Mod not found");
        return true;
    }

    public void shareMod(b1019 b1019Var) {
        k1104.t();
        d84.a(this, new File(b1019Var.e()));
    }

    public void deleteMod(b1019 b1019Var) {
        new AlertDialog.Builder(this).setIcon(R.drawable.icon).setTitle("Are you sure?").setMessage("Delete mod: '" + b1019Var.c() + "'?").setPositiveButton("Delete", new dt104(this, b1019Var)).setNegativeButton("Keep", new ds103(this)).show();
    }

    public void unlinkMod(b1019 b1019Var) {
        new AlertDialog.Builder(this).setIcon(R.drawable.icon).setTitle("Are you sure?").setMessage("Unlink mod: '" + b1019Var.c() + "'? Mod files will remain unchanged.").setPositiveButton("Unlink", new dv106(this, b1019Var)).setNegativeButton("Cancel", new du105(this)).show();
    }
}
