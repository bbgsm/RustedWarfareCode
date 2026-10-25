package com.corrodinggames.rts.appFramework;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
//import android.support.v4.b.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.corrodinggames.rts.R;
import com.corrodinggames.rts.game.b.b326;
import com.corrodinggames.rts.game.units.custom.logicBooleans.VariableScope;
import com.corrodinggames.rts.gameFramework.SettingsEngine;
import com.corrodinggames.rts.gameFramework.e.a926;
import com.corrodinggames.rts.gameFramework.f1006;
import com.corrodinggames.rts.gameFramework.h.a1015;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.utility.ah1328;
import com.corrodinggames.rts.gameFramework.utility.ai1329;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.MissingResourceException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class d84 {
    static Handler a;
    static volatile Context b;
    public static final int c;
    public static int d;

    public static int a(String str) {
        String n = str != null ? f1006.n(str) : null;
        if (n != null) {
            Matcher matcher = Pattern.compile("^ *\\[([^\\]]*)\\].*").matcher(n);
            if (matcher.matches()) {
                String[] split = matcher.group(1).split(";");
                for (String str2 : split) {
                    if (str2.startsWith("p") && str2.length() >= 2) {
                        String substring = str2.substring(1);
                        try {
                            return Integer.parseInt(substring);
                        } catch (NumberFormatException e) {
                            k1104.d("getNumberOfPlayersInMap: NumberFormatException:".concat(String.valueOf(substring)));
                            return -1;
                        }
                    }
                }
            }
        }
        k1104.d("getNumberOfPlayersInMap: fail to match:".concat(String.valueOf(n)));
        return -1;
    }

    public static String b(String fileName) {
        if (fileName == null) {
            return null;
        }

        // 去除系统文件路径中的目录部分
        if (fileName.contains(File.separator)) {
            String[] parts = fileName.split(Pattern.quote(File.separator));
            fileName = parts[parts.length - 1];
        }

        // 兼容使用“/”的路径
        if (fileName.contains("/")) {
            String[] parts = fileName.split("/");
            fileName = parts[parts.length - 1];
        }

        String result = null;

        String[] regexes = {
                "^l\\d*;\\[.*\\](.+)\\.tmx",
                "^l\\d*;(.+)\\.tmx",
                "^ *\\[.*\\](.+)\\.tmx",
                "(.*)\\.tmx"
        };

        // 按顺序匹配文件名，并提取地图名称
        for (String regex : regexes) {
            Matcher matcher = Pattern.compile(regex).matcher(fileName);

            if (matcher.matches()) {
                result = matcher.group(1);

                if (!result.isEmpty()) {
                    // 首字母大写
                    result = result.substring(0, 1).toUpperCase()
                            + result.substring(1);
                }
                break;
            }
        }

        if (result != null) {
            fileName = result;
        }

        // 下划线替换为空格
        result = fileName.replace('_', ' ');

        // 去除“.rwsave”后缀
        if (result.endsWith(".rwsave")) {
            result = result.replace(".rwsave", "");
        }

        return result;
    }

    public static InputStream c(String str) {
        return b326.a(str.replace(".tmx", VariableScope.nullOrMissingString) + "_map.png");
    }

    public static Bitmap d(String str) {
        return a(c(str));
    }

    private static Bitmap a(InputStream inputStream) {
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (decodeStream != null) {
                if (decodeStream.getWidth() > 500 || decodeStream.getHeight() > 500) {
                    k1104.d("Map thumbnail is too large. Size:(" + decodeStream.getWidth() + "," + decodeStream.getHeight() + ") (max:500 pixels)");
                    decodeStream.recycle();
                    return k1104.t().bL.a(R.drawable.error_toolargethumb).b();
                }
                return decodeStream;
            }
            return decodeStream;
        }
        return null;
    }

    @SuppressLint({"InlinedApi"})
    private static void g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    public static void a(Runnable runnable) {
        if (a == null) {
            a = new Handler(Looper.getMainLooper());
        }
        a.post(runnable);
    }

    public static Context a() {
        if (b == null) {
            throw new RuntimeException("ApplicationContext==null");
        }
        return b;
    }

    private static void h(Activity activity) {
        if (b == null) {
            b = activity.getApplicationContext();
        }
    }

    public static void a(Context context) {
        if (b == null) {
            b = context.getApplicationContext();
        }
    }

    public static void a(Activity activity, boolean z) {
        a(activity, z, false);
    }

    public static void a(Activity activity, boolean z, boolean z2) {
        k1104 t;
        h(activity);
        if (z2 && (t = k1104.t()) != null && t.bN.immersiveFullScreen) {
            g(activity);
        }
        k1104 t2 = k1104.t();
        if (t2 != null) {
            t2.Q();
        }
        if (z) {
            activity.getWindow().setBackgroundDrawable(null);
        }
    }

    public static void a(Activity activity) {
        SettingsEngine settingsEngine = SettingsEngine.getInstance(activity);
        if (Build.VERSION.SDK_INT >= 18) {
            if (settingsEngine.unlockedScreenRotation) {
                activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_FULL_USER);
                return;
            } else {
                activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_USER_LANDSCAPE);
                return;
            }
        }
        activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
    }

    public static boolean b(Activity activity, boolean z) {
        return b(activity, z, false);
    }

    public static boolean b(Activity activity, boolean z, boolean z2) {
        k1104 t;
        k1104.d("=== Activity setup: " + activity.getClass().getName() + " ===");
        h(activity);
        if (!z2) {
            k1104.d("globalSetup: game is null, switching to loading screen");
            k1104 t2 = k1104.t();
            if (t2 == null) {
                activity.startActivityForResult(new Intent(activity.getApplicationContext(), IntroScreen.class), 0);
                activity.finish();
                t2 = null;
            }
            if (t2 == null) {
                return false;
            }
        }
        if (z) {
            activity.overridePendingTransition(0, 0);
        }
        a(activity);
        activity.setVolumeControlStream(3);
        activity.requestWindowFeature(1);
        activity.getWindow().addFlags(1024);
        if (Build.VERSION.SDK_INT >= 28 && (t = k1104.t()) != null && t.bN != null && t.bN.displayOverCutout) {
            try {
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                attributes.getClass().getField("layoutInDisplayCutoutMode").setInt(attributes, 1);
            } catch (Exception e) {
                k1104.a("Failed to set layoutInDisplayCutoutMode", (Throwable) e);
            }
        }
        return true;
    }

    public static void c(Activity activity, boolean z) {
        if (z) {
            activity.overridePendingTransition(0, 0);
        }
    }

    static {
        int i = l247.f;
        c = i;
        d = i;
    }

    private static int b() {
        k1104 t = k1104.t();
        if (t == null) {
            k1104.b("getDefaultGameView: game==null");
            return l247.d;
        } else if (t.bN.newRender) {
            return l247.e;
        } else {
            return l247.d;
        }
    }

    public static ab5 b(Activity activity) {
        ab5 ab5Var;
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView().getRootView();
        int i = d;
        if (i == l247.f) {
            i = b();
        }
        if (i == l247.c) {
            ab5Var = new GameViewThreaded(activity, null);
        } else if (i == l247.e) {
            ab5Var = new GameViewOpenGL(activity, null);
        } else if (i == l247.a) {
            ab5Var = new GameView(activity, null);
        } else if (i == l247.b) {
            if (Build.VERSION.SDK_INT >= 26) {
                ab5Var = new GameView(activity, null);
            } else {
                ab5Var = new GameViewNonSurface(activity, null);
            }
        } else {
            ab5Var = new GameViewNonSurface(activity, null);
        }
        viewGroup.addView((View) ab5Var, 0, new ViewGroup.LayoutParams(-1, -1));
        return ab5Var;
    }

    public static void a(View view) {
        b(view);
    }

    private static void b(View view) {
        String concat;
        String concat2;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (textView.getText() != null) {
                k1104.d("fixLocale text:" + ((Object) textView.getText()));
                String sb = new StringBuilder().append((Object) textView.getText()).toString();
                if (sb.startsWith("i:")) {
                    String substring = sb.substring(2);
                    try {
                        concat2 = a1015.a(substring, new Object[0]);
                    } catch (MissingResourceException e) {
                        concat2 = "Text not found: ".concat(String.valueOf(substring));
                    }
                    textView.setText(concat2);
                }
            }
        }
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            if (editText.getHint() != null) {
                k1104.d("fixLocale text:" + ((Object) editText.getHint()));
                String sb2 = new StringBuilder().append((Object) editText.getHint()).toString();
                if (sb2.startsWith("i:")) {
                    String substring2 = sb2.substring(2);
                    try {
                        concat = a1015.a(substring2, new Object[0]);
                    } catch (MissingResourceException e2) {
                        concat = "Text not found: ".concat(String.valueOf(substring2));
                    }
                    editText.setHint(concat);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt != null) {
                    b(childAt);
                }
            }
        }
    }

    public static void a(Activity activity, Class cls) {
        activity.startActivityForResult(new Intent(activity.getApplicationContext(), cls), 0);
    }

    public static boolean c(Activity activity) {
        return a(activity, (Runnable) null);
    }

    public static boolean a(Activity activity, Runnable runnable) {
        k1104.t();
        return a(activity, runnable, false);
    }

    public static boolean a(Activity activity, Runnable runnable, boolean z) {
        k1104 t = k1104.t();
        if ((z || !t.bN.hasSelectedAStorageType) && Build.VERSION.SDK_INT >= 19) {
            e111 e111Var = new e111(t, runnable);
            f138 f138Var = new f138(activity, t, runnable);
            String a2 = a1015.a("menus.mods.androidStorageSetupTitle", new Object[0]);
            String a3 = a1015.a("menus.mods.androidStorageSetupMessage", new Object[0]);
            String a4 = a1015.a("menus.mods.androidStorageSetupInternal", new Object[0]);
            new AlertDialog.Builder(activity).setIcon(R.drawable.icon).setTitle(a2).setMessage(a3).setPositiveButton(a4, e111Var).setNeutralButton(a1015.a("menus.mods.androidStorageSetupExternal", new Object[0]), f138Var).show();
            k1104.d("Showing storage setup");
            return true;
        }
        return false;
    }

    public static void a(Context context, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        new AlertDialog.Builder(context).setIcon(R.drawable.icon).setTitle("Are you sure?").setMessage("Starting a game will overwrite your current game. Start anyway?").setPositiveButton("Yes", onClickListener).setNegativeButton("Resume instead", onClickListener2).show();
    }

    public static boolean d(Activity activity) {
        return e(activity);
    }

    public static boolean b(Context context) {
        return k1104.aR || !a926.g() || Build.VERSION.SDK_INT < 23 || context.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == PackageManager.PERMISSION_GRANTED;
    }

    public static boolean e(Activity activity) {
        k1104 t = k1104.t();
        if (!k1104.aR && a926.g() && Build.VERSION.SDK_INT >= 23) {
            if (activity.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == PackageManager.PERMISSION_GRANTED) {
                t.bN.hadStoragePermissionInPast = true;
                k1104.d("File Permission is granted");
                return true;
            }
            k1104.d("Permission is revoked");
            activity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
            return false;
        }
        return true;
    }

    public static void a(Activity activity, String str) {
        k1104.d("Opening link:".concat(String.valueOf(str)));
        if (!str.startsWith("http://corrodinggames.com/") && !str.startsWith("https://corrodinggames.com/") && !str.startsWith("http://corrodinggames.net/") && !str.startsWith("https://corrodinggames.net/")) {
            k1104.d("Not in whitelist");
            return;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            k1104.t().b("Failed to open link", "Failed to open link: " + str + "\n(Check if browser is installed)");
        }
    }

    public static void a(Activity activity, File file) {
        Uri uri;
        k1104.d("Sharing: ".concat(String.valueOf(file)));
        k1104 t = k1104.t();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("*/*");
        String str = "com.corrodinggames.rts.fileProvider";
        if (k1104.t().aq) {
            str = "com.corrodinggames.rtsdemo.fileProvider";
        }
        ai1329 b2 = ah1328.b(file.getAbsolutePath());
        if (b2 != null) {
            uri = b2.j(file.getAbsolutePath());
            k1104.d("Sharing using passthrough reader, new uri: ".concat(String.valueOf(uri)));
        } else if (file.exists()) {
            try {
                uri = GenericFileProvider.a(activity, str, file);
            } catch (Exception e) {
                uri = null;
                e.printStackTrace();
            }
        } else {
            t.g("File doesn't exist: " + file.getAbsolutePath());
            return;
        }
        if (uri == null) {
            k1104.d("shareURI==null for: " + file.getAbsolutePath());
            t.g("Cannot share this file");
            return;
        }
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        activity.startActivity(Intent.createChooser(intent, "Share File"));
    }

    public static void a(Activity activity, String str, String str2, String str3, Runnable runnable, String str4, Runnable runnable2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(str3, new h192(runnable));
        if (str4 != null && runnable2 != null) {
            builder.setNeutralButton(str4, new i219(runnable2));
        }
        builder.setNegativeButton("Cancel", new j245());
        builder.show();
    }

    public static void a(Intent intent) {
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
    }

    public static void b(Activity activity, Class cls) {
        Intent intent = new Intent(activity.getApplicationContext(), cls);
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        activity.startActivityForResult(intent, 0);
    }

    public static ab5 a(Activity activity, ab5 ab5Var) {
        if (d == l247.f) {
            if ((ab5Var instanceof GameViewOpenGL) != (b() == l247.e)) {
                View view = (View) ab5Var;
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                ab5 b2 = b(activity);
                k1104.d("====== updateGameView: Changing gameView ======");
                return b2;
            }
            return ab5Var;
        }
        return ab5Var;
    }

    public static void a(Activity activity, int i, boolean z, String str, Uri uri) {
        k1104.d("Show folder chooser. Write:".concat(String.valueOf(z)));
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.addFlags(Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        if (z) {
            intent.addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        }
        if (uri != null) {
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        }
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        try {
            activity.startActivityForResult(Intent.createChooser(intent, str), i);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, "Failed to open file list. Please install a File Manager.", Toast.LENGTH_SHORT).show();
        }
    }

    public static void f(Activity activity) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        intent.addCategory("android.intent.category.OPENABLE");
        try {
            activity.startActivityForResult(Intent.createChooser(intent, "Select a Rusted Warfare Mod/Map/Save to Import"), 5);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, "Please install a File Manager.", Toast.LENGTH_SHORT).show();
        }
    }

    public static boolean a(Activity activity, int i, int i2, Intent intent, k246 k246Var) {
        boolean z = false;
        if (i2 != -1) {
            k1104.d("onFolderLinkResult: ".concat(String.valueOf(i2)));
            if (i2 != 0) {
                String str = "Folder select failed with result:" + i + ". You might need to install a file manager.";
                k1104.b(str);
                k1104.t().g(str);
            } else {
                k1104.t().g("No folder was selected or no file manager installed.");
            }
        } else {
            k1104.d("=== onFolderLinkResult ===");
            try {
                k1104 t = k1104.t();
                try {
                    Uri data = intent.getData();
                    k1104.d("File Uri: " + data.toString());
                    k246Var.a(activity, data);
                    z = true;
                } catch (SecurityException e) {
                    e.printStackTrace();
                    t.g("Cannot read file - File permission error: " + e.getMessage());
                }
            } catch (Exception e2) {
                k1104.t().g("Error linking folder: " + e2.getMessage() + " (Hint: check permissions and disk space)");
                e2.printStackTrace();
            }
        }
        return z;
    }
}
