package com.corrodinggames.rts.gameFramework.utility;

import java.io.*;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.nio.charset.StandardCharsets;

import android.graphics.PointF;
import com.corrodinggames.rts.game.units.custom.*;
import com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean;
import com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBooleanLoader;
import com.corrodinggames.rts.gameFramework.f1006;

import java.util.Locale;

import android.graphics.Rect;
import com.corrodinggames.rts.gameFramework.k1104;

import java.util.Map;

public final class ae1325 {

    // ==== from __header__.java ====
    public static final Pattern i;

    public static final Pattern j;

    public static final Pattern k;

    // ==== from _init_(String)V.java ====
    public LinkedHashMap<String,LinkedHashMap<String, String>> a;

    public String b;

    public boolean c;

    public LinkedHashSet d;

    public ArrayList<af1326> e;

    public ArrayList<String> f;

    // ==== from __header__.java ====
    public boolean g;

    // ==== from _init_(String)V.java ====
    public String h;

    // ==== from _clinit_(void)V.java ====
    static {
        i = Pattern.compile("\\p{C}");
        j = Pattern.compile("\\s*\\[([^]]*)\\]\\s*");
        k = Pattern.compile("\\s*([^=:]*)(?:=|:)(.*)");
    }

    // ==== from _init_(InputStream_String)V.java ====
    public ae1325(InputStream p1, String p2) throws IOException {
        this.a = new LinkedHashMap();
        this.b = "ini";
        this.c = true;
        this.d = new LinkedHashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.b = p2;
        BufferedReader v0 = new BufferedReader(new InputStreamReader(p1, StandardCharsets.UTF_8));
        this.a(v0);
    }

    private void a(BufferedReader p1) throws IOException {
        String v8 = "";
        String v3 = null;
        int v4 = 0;          // 上一次行号
        String v10 = null;   // 当前 section
        int v6 = 0;          // 是否处于 """ 多行中
        int v7 = 0;          // 是否以 """ 开头进入的多行块
        String v0 = v8;

        try {
            outer:
            while (true) {
                v3 = p1.readLine();
                if (v3 == null) {
                    if (v6 != 0) {
                        throw new IOException(
                                this.b
                                        + ": End of file while in multi-line string "
                                        + "(hint: You are likely missing a closing \"\"\")");
                    }
                    return;
                }

                int v9 = v4 + 1; // 当前行号

                if (v3.startsWith("\ufeff")) {
                    v3 = v3.substring(1);
                }

                String v11 = v3.trim();

                // 非多行状态下，跳过 # 注释行
                if (v6 == 0 && v11.startsWith("#")) {
                    v4 = v9;
                    continue;
                }

                String logicalLine;
                int v5; // 0: 普通行，value 需要 trim；1: 多行拼接行，不 trim

                if (f1006.c(v3, "\"\"\"")) {
                    int idx = 0;
                    String acc = v0;

                    if (v6 == 0 && v3.trim().startsWith("\"\"\"")) {
                        v7 = 1;
                    }

                    while (true) {
                        int pos = v3.indexOf("\"\"\"", idx);

                        if (pos == -1) {
                            v0 = acc + v3.substring(idx);

                            if (v6 == 0) {
                                if (v7 != 0) {
                                    v8 = "";
                                    v4 = v9;
                                    v7 = 0;
                                    v0 = "";
                                    continue outer;
                                }

                                logicalLine = v0;
                                v5 = 1;
                                v7 = 0;
                                v8 = "";
                                break;
                            } else {
                                v4 = v9;
                                continue outer;
                            }
                        } else {
                            acc = acc + v3.substring(idx, pos);
                            idx = pos + 3;
                            v6 = (v6 == 0) ? 1 : 0;
                        }
                    }
                } else {
                    if (v6 != 0) {
                        v8 = v0 + v3;
                        v4 = v9;
                        v0 = v8;
                        continue;
                    }

                    logicalLine = v3;
                    v5 = 0;
                    v8 = v0;
                }

                if (v11.length() == 0) {
                    v4 = v9;
                    v0 = v8;
                    continue;
                }

                // section: [xxx]
                Matcher mj = j.matcher(logicalLine);
                if (f1006.c(logicalLine, "[") && mj.matches()) {
                    v10 = mj.group(1).trim();
                    v4 = v9;
                    v0 = v8;
                    continue;
                }

                // comment_ 开头的 section 直接忽略
                if (v10 != null && v10.startsWith("comment_")) {
                    v4 = v9;
                    v0 = v8;
                    continue;
                }

                // key = value
                Matcher m = k.matcher(logicalLine);
                if (m.matches()) {
                    if (v10 == null) {
                        k1104.b(
                                "IniFile: "
                                        + this.b
                                        + "  line "
                                        + v9
                                        + " is not in a [section]:'"
                                        + logicalLine
                                        + "'");

                        this.f.add(
                                "Line "
                                        + v9
                                        + " is not in a [section]: '"
                                        + logicalLine
                                        + "'");

                        v4 = v9;
                        v0 = v8;
                        continue;
                    }

                    v11 = m.group(1).trim();
                    String value = m.group(2);

                    if (v5 == 0) {
                        value = value.trim();
                    }

                    v3 = value;

                    if (v11.equals("")) {
                        throw new IOException(
                                this.b
                                        + ": Unexpected format on line "
                                        + v9
                                        + ": Key cannot be empty for line '"
                                        + logicalLine
                                        + "'");
                    }

                    @SuppressWarnings("unchecked")
                    LinkedHashMap<String, String> section =
                            (LinkedHashMap<String, String>) this.a.get(v10);

                    if (section == null) {
                        section = new LinkedHashMap<>();
                        this.a.put(v10, section);
                    }

                    if (section.get(v11) != null) {
                        this.e.add(new af1326(v10, v11));
                    }

                    section.put(v11, v3);

                    v4 = v9;
                    v0 = v8;
                    continue;
                }

                Matcher mi = i.matcher(logicalLine);
                if (mi.find()) {
                    if (logicalLine.length() == 1) {
                        v4 = v9;
                        v0 = v8;
                        continue;
                    }

                    String sanitized = logicalLine.replaceAll("\\p{C}", "?");

                    throw new IOException(
                            this.b
                                    + ": Unexpected format on line:"
                                    + v9
                                    + ": '"
                                    + sanitized
                                    + "' in ini file "
                                    + "(hint: This line might have hidden unicode)");
                } else {
                    k1104.b(
                            this.b
                                    + ": Unexpected format on line:"
                                    + v9
                                    + ": '"
                                    + logicalLine
                                    + "' in ini file");

                    this.f.add(logicalLine);

                    v4 = v9;
                    v0 = v8;
                    continue;
                }
            }
        } finally {
            p1.close();
        }
    }
    // ==== from a(BufferedReader)V.java ====
   /* private void a(BufferedReader p1) throws IOException {
        int v1 = 1;
        int v2 = 0;
        String v8 = "";
        String v3 = null;
        int v4 = 0;
        String v10 = null;
        int v6 = 0;
        int v7 = 0;
        String v0 = "";

        try {
            while (true) {
                v3 = p1.readLine();
                if (v3 == null) {
                    if (v6 != 0) {
                        throw new IOException(this.b + ": End of file while in multi-line string (hint: You are likely missing a closing \"\"\")");
                    }
                    break;
                }

                int v9 = v4 + 1;

                if (v3.startsWith("\ufeff")) {
                    v3 = v3.substring(1);
                }

                String v11 = v3.trim();

                if (v6 != 0) {
                    if (!v11.startsWith("#")) {
                        v4 = v9;
                        continue;
                    }
                }

                if (f1006.c(v3, "\"\"\"")) {
                    if (v6 == 0 && v3.trim().startsWith("\"\"\"")) {
                        v7 = v1;
                    }
                    int searchOffset = 0;
                    String accumulated = v0;

                    while (true) {
                        int idx = v3.indexOf("\"\"\"", searchOffset);
                        if (idx == -1) {
                            String combined = accumulated + v3.substring(searchOffset, v3.length());
                            v0 = combined;
                            if (v6 == 0) {
                                v4 = v9;
                                break;
                            } else {
                                if (v7 != 0) {
                                    v8 = "";
                                    v4 = v9;
                                    v7 = 0;
                                    v0 = v8;
                                    break;
                                } else {
                                    v3 = "";
                                    String v4Str = v0;
                                    int v5Int = 1;
                                    v7 = 0;
                                    v8 = v3;

                                    if (v11.length() != 0) {
                                        if (f1006.c(v4Str, "[") && ae1325.j.matcher(v4Str).matches()) {
                                            String sectionName = ae1325.j.matcher(v4Str).group(1).trim();
                                            v10 = sectionName;
                                            v4 = v9;
                                            v0 = v8;
                                            continue;
                                        }
                                        if (v10 == null || !v10.startsWith("comment_")) {
                                            java.util.regex.Matcher matcherKey = ae1325.k.matcher(v4Str);
                                            if (matcherKey.matches()) {
                                                String key = matcherKey.group(1).trim();
                                                String valueRaw = matcherKey.group(2);
                                                String value = (v5Int == 0) ? valueRaw.trim() : valueRaw;
                                                if (key.equals("")) {
                                                    throw new IOException(this.b + ": Unexpected format on line " + v9 + ": Key cannot be empty for line '" + v4Str + "'");
                                                }
                                                java.util.LinkedHashMap<String, String> map = (java.util.LinkedHashMap<String, String>) this.a.get(v10);
                                                if (map == null) {
                                                    map = new java.util.LinkedHashMap<>();
                                                    this.a.put(v10, map);
                                                }
                                                if (map.containsKey(key)) {
                                                    this.e.add(new af1326(v10, key));
                                                }
                                                map.put(key, value);
                                                v4 = v9;
                                                v0 = v8;
                                                continue;
                                            } else {
                                                java.util.regex.Matcher matcherBad = ae1325.i.matcher(v4Str);
                                                if (matcherBad.find()) {
                                                    if (v4Str.length() != 1) {
                                                        String cleaned = v4Str.replaceAll("\\p{C}", "?");
                                                        throw new IOException(this.b + ": Unexpected format on line:" + v9 + ": '" + cleaned + "' in ini file (hint: This line might have hidden unicode)");
                                                    }
                                                } else {
                                                    k1104.b(this.b + ": Unexpected format on line:" + v9 + ": '" + v4Str + "' in ini file");
                                                    this.f.add(v4Str);
                                                    v4 = v9;
                                                    v0 = v8;
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                    v4 = v9;
                                    v0 = v8;
                                    continue;
                                }
                            }
                        } else {
                            accumulated = accumulated + v3.substring(searchOffset, idx);
                            searchOffset = idx + 3;
                            if (v6 == 0) {
                                v6 = 1;
                            } else {
                                v6 = 0;
                            }
                        }
                    }
                } else {
                    if (v6 != 0) {
                        v0 = v0 + v3;
                        v4 = v9;
                        continue;
                    } else {
                        String v4Str = v3;
                        int v5Int = 0;
                        v8 = v0;

                        if (v11.length() != 0) {
                            if (f1006.c(v4Str, "[") && ae1325.j.matcher(v4Str).matches()) {
                                String sectionName = ae1325.j.matcher(v4Str).group(1).trim();
                                v10 = sectionName;
                                v4 = v9;
                                v0 = v8;
                                continue;
                            }
                            if (v10 == null || !v10.startsWith("comment_")) {
                                java.util.regex.Matcher matcherKey = ae1325.k.matcher(v4Str);
                                if (matcherKey.matches()) {
                                    String key = matcherKey.group(1).trim();
                                    String valueRaw = matcherKey.group(2);
                                    String value = (v5Int == 0) ? valueRaw.trim() : valueRaw;
                                    if (key.equals("")) {
                                        throw new IOException(this.b + ": Unexpected format on line " + v9 + ": Key cannot be empty for line '" + v4Str + "'");
                                    }
                                    java.util.LinkedHashMap<String, String> map = (java.util.LinkedHashMap<String, String>) this.a.get(v10);
                                    if (map == null) {
                                        map = new java.util.LinkedHashMap<>();
                                        this.a.put(v10, map);
                                    }
                                    if (map.containsKey(key)) {
                                        this.e.add(new af1326(v10, key));
                                    }
                                    map.put(key, value);
                                    v4 = v9;
                                    v0 = v8;
                                    continue;
                                } else {
                                    java.util.regex.Matcher matcherBad = ae1325.i.matcher(v4Str);
                                    if (matcherBad.find()) {
                                        if (v4Str.length() != 1) {
                                            String cleaned = v4Str.replaceAll("\\p{C}", "?");
                                            throw new IOException(this.b + ": Unexpected format on line:" + v9 + ": '" + cleaned + "' in ini file (hint: This line might have hidden unicode)");
                                        }
                                    } else {
                                        k1104.b(this.b + ": Unexpected format on line:" + v9 + ": '" + v4Str + "' in ini file");
                                        this.f.add(v4Str);
                                        v4 = v9;
                                        v0 = v8;
                                        continue;
                                    }
                                }
                            }
                        }
                        v4 = v9;
                        v0 = v8;
                    }
                }
            }
        } finally {
            p1.close();
        }
    }*/


    // ==== from _init_(String)V.java ====
    public ae1325(String p1) throws FileNotFoundException, IOException {
        super();
        this.a = new LinkedHashMap();
        this.b = "ini";
        this.c = true;
        this.d = new LinkedHashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.b = p1;
        this.h = p1;
        BufferedReader v0 = new BufferedReader(new FileReader(p1));
        this.a(v0);
    }

    // ==== from a(ae1325)V.java ====
    public final void a(com.corrodinggames.rts.gameFramework.utility.ae1325 p1) {
        if (this.g) {
            throw new RuntimeException("locked changes");
        }
        for (Object sectionObj : p1.a.keySet()) {
            String section = (String) sectionObj;
            LinkedHashMap map1 = (LinkedHashMap) p1.a.get(section);
            if (this.a(section, "@copyFrom_skipThisSection", Boolean.FALSE).booleanValue()) {
                continue;
            }
            LinkedHashMap map2 = (LinkedHashMap) this.a.get(section);
            if (map2 == null) {
                map2 = new LinkedHashMap();
                this.a.put(section, map2);
            }
            for (Object innerKeyObj : map1.keySet()) {
                String innerKey = (String) innerKeyObj;
                if (map2.get(innerKey) == null) {
                    map2.put(innerKey, map1.get(innerKey));
                }
            }
        }
    }

    // ==== from a(l609_String_String)LogicBoolean.java ====
    public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(com.corrodinggames.rts.game.units.custom.l609 p1, java.lang.String p2, java.lang.String p3) {
        java.lang.String v0 = this.c(p2, p3);
        try {
            return com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.create(p1, v0, null);
        } catch (java.lang.RuntimeException e) {
            throw new java.lang.RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
        }
    }

    // ==== from a(l609_String_String_LogicBoolean$ReturnType)LogicBoolean.java ====
    public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(com.corrodinggames.rts.game.units.custom.l609 p1, String p2, String p3, com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.ReturnType p4) {
        String v0 = this.a(p2, p3, (String) null);
        return com.corrodinggames.rts.gameFramework.utility.ae1325.a(v0, p1, p2, p3, p4);
    }

    // ==== from a(l609_String_String_LogicBoolean)LogicBoolean.java ====
    public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(com.corrodinggames.rts.game.units.custom.l609 p1, String p2, String p3, com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean p4) {
        String v0 = null;
        v0 = this.a(p2, p3, v0);
        try {
            return com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.create(p1, v0, p4);
        } catch (RuntimeException e) {
            throw new RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
        }
    }

    // ==== from a(l609_String_String_String)aj503.java ====
    public final aj503 a(l609 p1, String p2, String p3, String p4) throws ch575{
        bu555 v1 = this.a(p2, p3, p4, true);
        if (v1 == null) {
            return null;
        }
        try {
            return new aj503(p1, v1);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new ch575("[" + p2 + "]" + p3 + ": " + e.getMessage());
        }
    }

    // ==== from a(l609_String_String_u618)u618.java ====
    public final u618 a(l609 p1, String p2, String p3, u618 p4) {
        String v0 = this.a(p2, p3,(String) null);
        if (v0 == null) {
            return p4;
        }
        return p1.b(v0, p3, p2);
    }

    // ==== from a(String)p1351.java ====
    public final p1351 a(String p1) {
        p1351 v2 = new p1351();
        java.util.Iterator v3 = this.a.keySet().iterator();
        while (v3.hasNext()) {
            String v0 = (String) v3.next();
            java.util.Map v1 = (java.util.Map) this.a.get(v0);
            if (v1.get(p1) != null) {
                v2.add(v0);
            }
        }
        return v2;
    }

    // ==== from a(String_Class)RuntimeException.java ====
    private static RuntimeException a(String p0, Class p1) throws ch575{
        String v1 = "";
        Object[] v3 = p1.getEnumConstants();
        int v4 = v3.length;
        int v2 = 0;
        while (v2 < v4) {
            Enum v0 = (Enum) v3[v2];
            if (!v1.equals("")) {
                v1 = v1 + ",";
            }
            v1 = v1 + v0.name();
            v2++;
        }
        String message = "Unknown value: " + p0 + " (Expected: " + com.corrodinggames.rts.gameFramework.f1006.b(v1, 100) + ")";
        throw new com.corrodinggames.rts.game.units.custom.ch575(message);
    }

    // ==== from a(String_Enum_Class)Enum.java ====
    public static Enum a(String p0, Enum p1, Class p2) throws ch575{
        if (p0 == null) {
            return p1;
        }
        String v2 = p0.trim();
        Object[] v3 = p2.getEnumConstants();
        int v4 = v3.length;
        for (int v1 = 0; v1 < v4; v1++) {
            Enum v0 = (Enum) v3[v1];
            if (v0.name().equalsIgnoreCase(v2)) {
                return v0;
            }
        }
        throw com.corrodinggames.rts.gameFramework.utility.ae1325.a(v2, p2);
    }

    // ==== from a(String_l609_String_String)LogicBoolean.java ====
    public static com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean a(String p0, com.corrodinggames.rts.game.units.custom.l609 p1, String p2, String p3) {
        return com.corrodinggames.rts.gameFramework.utility.ae1325.a(p0, p1, p2, p3, com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.ReturnType.unit);
    }

    // ==== from a(String_l609_String_String_LogicBoolean$ReturnType)LogicBoolean.java ====
    private static LogicBoolean a(String p0, l609 p1, String p2, String p3, LogicBoolean.ReturnType p4) {
        if (p0 == null) {
            return null;
        }
        try {
            if (p4 == LogicBoolean.ReturnType.number && f1006.u(p0)) {
                return LogicBoolean.StaticValueBoolean.getStaticNumber(p0);
            }
            if (p0.toLowerCase(Locale.ROOT).startsWith("unitref ")) {
                p0 = p0.substring(8).trim();
            }
            LogicBoolean parsed = LogicBooleanLoader.parseBooleanBlock(p1, p0, false);
            if (parsed == null) {
                return null;
            }
            LogicBoolean.ReturnType actualType = parsed.getReturnType();
            if (actualType != p4) {
                throw new RuntimeException("Type mismatch. Expected type:" + p4 + " got:" + actualType);
            }
            return parsed;
        } catch (RuntimeException e) {
            throw new RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
        }
    }

    // ==== from a(String_String)V.java ====
    public final void a(String p1, String p2) {
        n(p1, p2);
    }

    // ==== from a(String_String_Boolean)Boolean.java ====
    public final Boolean a(String p1, String p2, Boolean p3) {
        String v0 = this.a(p1, p2, (String)null);
        if (v0 == null) {
            return p3;
        }
        if (v0.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (v0.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (v0.equalsIgnoreCase("1")) {
            return Boolean.TRUE;
        }
        if (v0.equalsIgnoreCase("0")) {
            return Boolean.FALSE;
        }
        throw new RuntimeException(p2 + ": unexpected boolean value:'" + v0 + "' in section:" + p1);
    }

    // ==== from a(String_String_D)D.java ====
    public final double a(String p1, String p2, double p3) {
        String string = this.a(p1, p2, true);
        if (string == null) {
            return p3;
        }
        try {
            p3 = Double.parseDouble(string);
            return p3;
        } catch (NumberFormatException e) {
            throw new RuntimeException("Failed to read float:" + string + " in key:" + p2 + " section:" + p1);
        }
    }

    // ==== from a(String_String_Enum_Class)Enum.java ====
    public final Enum a(String p1, String p2, Enum p3, Class p4) {
        String v0 = this.a(p1, p2, (String) null);
        try {
            return com.corrodinggames.rts.gameFramework.utility.ae1325.a(v0, p3, p4);
        } catch (com.corrodinggames.rts.game.units.custom.ch575 e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": " + e.getMessage(), e);
        }
    }

    // ==== from a(String_String_Float)Float.java ====
    public final Float a(String p1, String p2, Float p3) {
        String result = a(p1, p2, true);
        if (result == null) {
            return p3;
        }
        try {
            return Float.valueOf(Float.parseFloat(result));
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static float: " + result);
        }
    }

    // ==== from a(String_String_Z)String.java ====
    private String a(String p1, String p2, boolean p3) {
        String v0 = b(p1, p2, p3);
        if (v0 != null) {
            n(p1, p2);
        }
        return v0;
    }

    // ==== from a(String_String_Float_Z)Float.java ====
    private Float a(String p1, String p2, Float p3, boolean p4) {
        String s = a(p1, p2, true);
        if (s == null) {
            return p3;
        }
        try {
            p3 = Float.valueOf(a(s, p4, p1, p2));
            return p3;
        } catch (NumberFormatException e) {
            throw new RuntimeException("Failed to read time:" + s + " in key:" + p2 + " section:" + p1 + " expected a float with optional 's' or 'ms' postfix");
        }
    }

    // ==== from a(String_String_h605)h605.java ====
    public final com.corrodinggames.rts.game.units.custom.h605 a(String p1, String p2, com.corrodinggames.rts.game.units.custom.h605 p3) {
        String v0 = this.a(p1, p2,(String) null);
        return com.corrodinggames.rts.game.units.custom.g604.a(v0, p3);
    }

    // ==== from a(String_String_Integer)Integer.java ====
    public final Integer a(String p1, String p2, Integer p3) {
        String v0 = this.a(p1, p2, (String)null);
        if (v0 == null) {
            return p3;
        }
        if ("".equals(v0)) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Unknown color: ''");
        }
        try {
            return Integer.valueOf(android.graphics.Color.parseColor(v0));
        } catch (IllegalArgumentException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Unknown color:" + v0);
        }
    }

    // ==== from a(String_String_Rect)Rect.java ====
    public final Rect a(String p1, String p2, Rect p3) {
        String v0 = a(p1, p2, (String)null);
        if (v0 == null) {
            return p3;
        }
        String[] parts = v0.split(",");
        if (parts.length != 4) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": getRect: expected 4 ints, not:" + parts.length);
        }
        try {
            int left = Integer.parseInt(parts[0].trim());
            int top = Integer.parseInt(parts[1].trim());
            int right = Integer.parseInt(parts[2].trim());
            int bottom = Integer.parseInt(parts[3].trim());
            return new Rect(left, top, right, bottom);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": getRect expected ints got: " + v0);
        }
    }

    // ==== from a(String_String_Short)Short.java ====
    public final Short a(String p1, String p2, Short p3) {
        String v0 = this.a(p1, p2, true);
        if (v0 == null) {
            return p3;
        }
        try {
            return Short.valueOf(Short.parseShort(v0));
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static integer: " + v0);
        }
    }

    // ==== from a(String_String_String)String.java ====
    public final String a(String p1, String p2, String p3) {
        String v0 = this.a(p1, p2, true);
        if (v0 == null) {
            return p3;
        }
        if (v0.contains("%{") && v0.contains("}")) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Doesn't support dynamic %{} sections");
        }
        return v0;
    }

    // ==== from a(String_String_String_Boolean)Boolean.java ====
    public final Boolean a(String p1, String p2, String p3, Boolean p4) {
        String v0 = this.g(p1, p2, p3);
        if (v0 == null) {
            return p4;
        }
        if ("true".equalsIgnoreCase(v0)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(v0)) {
            return Boolean.FALSE;
        }
        if ("1".equalsIgnoreCase(v0)) {
            return Boolean.TRUE;
        }
        if ("0".equalsIgnoreCase(v0)) {
            return Boolean.FALSE;
        }
        throw new RuntimeException(p2 + ": unexpected boolean value:'" + v0 + "' in section:" + p1);
    }

    // ==== from a(String_String_String_Z)bu555.java ====
    public final com.corrodinggames.rts.game.units.custom.bu555 a(String p1, String p2, String p3, boolean p4) {
        String v0 = p4 ? p(p1, p2) : a(p1, p2, (String)null);
        if (v0 == null) {
            return null;
        }
        p3 = v0;
        v0 = com.corrodinggames.rts.gameFramework.utility.ae1325.e(p3);
        com.corrodinggames.rts.game.units.custom.bu555 v2 = new com.corrodinggames.rts.game.units.custom.bu555();
        if (v0 != null && v0.startsWith("i:")) {
            v2.e = v0.substring(2).trim();
            com.corrodinggames.rts.gameFramework.h.a1015.a(v2.e, new Object[0]);
            return v2;
        }
        java.util.ArrayList<com.corrodinggames.rts.game.units.custom.bv556> v3 = new java.util.ArrayList<>();
        com.corrodinggames.rts.game.units.custom.bv556 v4 = new com.corrodinggames.rts.game.units.custom.bv556();
        v4.a = null;
        v4.b = v0;
        v3.add(v4);
        String v1 = p2 + "_";
        com.corrodinggames.rts.gameFramework.utility.p1351 v5 = j(p1, v1);
        java.util.Iterator<String> v6 = v5.iterator();
        while (v6.hasNext()) {
            String v7 = v6.next();
            String v8 = v7.substring(v1.length()).toLowerCase(java.util.Locale.ROOT);
            String v9 = p4 ? q(p1, v7) : c(p1, v7);
            String v10 = com.corrodinggames.rts.gameFramework.utility.ae1325.e(v9);
            com.corrodinggames.rts.game.units.custom.bv556 v11 = new com.corrodinggames.rts.game.units.custom.bv556();
            v11.a = v8;
            v11.b = v10;
            v3.add(v11);
        }
        v2.b = v3.toArray(new com.corrodinggames.rts.game.units.custom.bv556[0]);
        v2.b();
        return v2;
    }

    // ==== from a(String_Z_String_String)F.java ====
    public static float a(String p0, boolean p1, String p2, String p3) {
        float multiplier;
        boolean endsWithS;
        if (p0.endsWith("s")) {
            p0 = p0.substring(0, p0.length() - 1);
            multiplier = 60.0f;
            endsWithS = true;
        } else {
            multiplier = 1.0f;
            endsWithS = false;
        }
        try {
            float value = Float.parseFloat(p0) * multiplier;
            if (p1 && endsWithS) {
                value = 1.0f / value;
            }
            return value;
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p2 + "]" + p3 + ": Failed to read time:" + p0 + " expected a float with optional 's' postfix");
        }
    }

    // ==== from a(void)V.java ====
    public final void a() {
        if (!this.c) {
            throw new RuntimeException("Not tracking reads");
        }
        for (String section : this.a.keySet()) {
            if (section != null && section.startsWith("template_")) {
                continue;
            }
            Map<String, String> map = this.a.get(section);
            boolean used = false;
            String error = null;
            for (String key : map.keySet()) {
                if (key != null && (key.startsWith("@define ") || key.startsWith("@global "))) {
                    continue;
                }
                String combined = section + ":" + key;
                if (this.d.contains(combined)) {
                    used = true;
                    continue;
                }
                String value = map.get(key);
                if ("IGNORE".equals(value)) {
                    continue;
                }
                if (error == null) {
                    if (key != null && key.trim().equals("")) {
                        error = this.b + " Found line in [" + section + "] with no key name.";
                    } else {
                        error = this.b + ": The key '[" + section + "]" + key + "' was not used. (hint: make sure it's valid and in the right section)";
                    }
                }
            }
            if (error != null) {
                if (used || this.a.size() == 1) {
                    throw new RuntimeException(error);
                } else {
                    throw new RuntimeException(this.b + ": No keys in section: [" + section + "] were used (is this section named correctly?)");
                }
            }
        }
    }

    // ==== from b(l609_String_String)LogicBoolean.java ====
    public final LogicBoolean b(l609 p1, String p2, String p3) {
        return this.a(p1, p2, p3, LogicBoolean.ReturnType.unit);
    }

    // ==== from b(String)p1351.java ====
    public final com.corrodinggames.rts.gameFramework.utility.p1351<String> b(String p1) {
        com.corrodinggames.rts.gameFramework.utility.p1351 v1 = new com.corrodinggames.rts.gameFramework.utility.p1351();
        java.util.Set v0 = this.a.keySet();
        java.util.Iterator v2 = v0.iterator();
        while (v2.hasNext()) {
            String v0String = (String) v2.next();
            if (v0String.startsWith(p1)) {
                if (this.d(v0String)) {
                    v1.add(v0String);
                }
            }
        }
        return v1;
    }

    // ==== from b(String_String)Z.java ====
    public final boolean b(String p1, String p2) {
        Boolean v0 = null;
        v0 = this.a(p1, p2, v0);
        if (v0 == null) {
            o(p1, p2);
        }
        return v0.booleanValue();
    }

    // ==== from b(String_String_Float)Float.java ====
    public final Float b(String p1, String p2, Float p3) {
        return a(p1, p2, p3, false);
    }

    // ==== from b(String_String_Integer)Integer.java ====
    public final Integer b(String p1, String p2, Integer p3) {
        String v0 = this.a(p1, p2, true);
        if (v0 == null) {
            return p3;
        }
        try {
            int v0int = Integer.parseInt(v0);
            p3 = Integer.valueOf(v0int);
            return p3;
        } catch (NumberFormatException v1) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static integer: " + v0);
        }
    }

    // ==== from b(String_String_String)p1351.java ====
    public final com.corrodinggames.rts.gameFramework.utility.p1351 b(String p1, String p2, String p3) {
        com.corrodinggames.rts.gameFramework.utility.p1351 v1 = new com.corrodinggames.rts.gameFramework.utility.p1351();
        java.util.Map map = (java.util.Map) this.a.get(p1);
        if (map != null) {
            java.util.Iterator v2 = map.keySet().iterator();
            while (v2.hasNext()) {
                String key = (String) v2.next();
                if (!key.startsWith(p2) || key.startsWith(p3)) {
                    v1.add(key);
                }
            }
        }
        return v1;
    }

    // ==== from b(String_String_Z)String.java ====
    private String b(String p1, String p2, boolean p3) {
        Map map = (Map) this.a.get(p1);
        if (map == null) {
            if (p3) {
                return null;
            }
            throw new RuntimeException("Could not find section: [" + p1 + "] in configuration file");
        }
        String str = (String) map.get(p2);
        if (str == null) {
            if (p3) {
                return null;
            }
            throw new RuntimeException("Could not find: " + p2 + " in configuration file under [" + p1 + "]");
        }
        if (str.equals("IGNORE")) {
            if (p3) {
                return null;
            }
            throw new RuntimeException("Key: " + p2 + " under [" + p1 + "], is set to IGNORE but is required and has no default");
        }
        return str;
    }

    // ==== from b(void)I.java ====
    public final int b() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            for (Object obj : this.a.keySet()) {
                String str = (String) obj;
                Map map = (Map) this.a.get(str);
                for (Object obj2 : map.keySet()) {
                    String str2 = (String) obj2;
                    String value = (String) map.get(str2);
                    String str3 = str + ":" + str2 + ":" + value;
                    messageDigest.update(str3.getBytes("UTF-8"));
                }
            }
            return new BigInteger(1, messageDigest.digest()).intValue();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    // ==== from c(l609_String_String)LogicBoolean.java ====
    public final com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean c(com.corrodinggames.rts.game.units.custom.l609 p1, String p2, String p3) {
        return this.a(p1, p2, p3, com.corrodinggames.rts.game.units.custom.logicBooleans.LogicBoolean.ReturnType.number);
    }

    // ==== from c(String)Z.java ====
    public final boolean c(String p1) {
        if (this.a.get(p1) != null) {
            return true;
        }
        return false;
    }

    public final String c(String p1, String p2) {
        String v0 = null;
        v0 = this.a(p1, p2, v0);
        if (v0 == null) {
            com.corrodinggames.rts.gameFramework.utility.ae1325.o(p1, p2);
        }
        return v0;
    }


    // ==== from c(String_String_Float)Float.java ====
    public final Float c(String p1, String p2, Float p3) {
        Float v0 = this.a(p1, p2, (Float) null, false);
        if (v0 == null) {
            return p3;
        }
        p3 = Float.valueOf(v0.floatValue() * Float.intBitsToFloat(0x41855555));
        return p3;
    }


    // ==== from c(String_String_String)Z.java ====
    public static boolean c(String p0, String p1, String p2) {
        if (p2.equalsIgnoreCase("true")) {
            return true;
        } else if (p2.equalsIgnoreCase("false")) {
            return false;
        } else {
            throw new RuntimeException("[" + p0 + "]" + p1 + ": Unexpected boolean value:'" + p2 + "'");
        }
    }

    // ==== from d(l609_String_String)a589.java ====
    public final com.corrodinggames.rts.game.units.custom.e.a589 d(com.corrodinggames.rts.game.units.custom.l609 p1, java.lang.String p2, java.lang.String p3) {
        java.lang.String v1 = this.a(p2, p3,(String) null);
        if (v1 == null) {
            return null;
        }
        com.corrodinggames.rts.game.units.custom.e.a589 v0 = com.corrodinggames.rts.game.units.custom.e.a589.a(v1);
        if (v0 != null) {
            return v0;
        }
        v0 = p1.i(v1);
        if (v0 != null) {
            return v0;
        }
        com.corrodinggames.rts.game.units.custom.logicBooleans.BooleanParseException v2 = new com.corrodinggames.rts.game.units.custom.logicBooleans.BooleanParseException("[" + p2 + "]" + p3 + ": Could not find custom resource type of:" + v1);
        throw v2;
    }

    // ==== from d(String)Z.java ====
    public final boolean d(String p1) {
        boolean result = false;
        java.util.Map map = (java.util.Map) this.a.get(p1);
        if (map == null) {
            return result;
        }
        java.util.Iterator iterator = map.keySet().iterator();
        while (iterator.hasNext()) {
            String key = (String) iterator.next();
            if (key != null && !key.startsWith("@")) {
                return true;
            }
        }
        return result;
    }

    // ==== from d(String_String)I.java ====
    public final int d(String p1, String p2) {
        String v0 = this.a(p1, p2, false);
        try {
            return Integer.parseInt(v0);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Not a static integer: " + v0);
        }
    }

    // ==== from d(String_String_Float)Float.java ====
    public final Float d(String p1, String p2, Float p3) {
        return this.a(p1, p2, p3, true);
    }

    // ==== from d(String_String_String)F.java ====
    public static float d(String p0, String p1, String p2) {
        try {
            return Float.parseFloat(p2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p0 + "]" + p1 + ": Failed to read float:" + p2);
        }
    }

    // ==== from e(String)String.java ====
    private static String e(String p0) {
        if (p0 == null) {
            return null;
        }
        return com.corrodinggames.rts.gameFramework.f1006.a(p0, "\\n", "\n");
    }

    // ==== from e(String_String)PointF.java ====
    public final PointF e(String p1, String p2) {
        String v1 = this.a(p1, p2, true);
        if (v1 == null) {
            return null;
        }
        if (v1.equalsIgnoreCase("NONE")) {
            return null;
        }
        try {
            String[] v2 = v1.split(",");
            if (v2.length != 2) {
                throw new NumberFormatException("Got:" + v2.length + " elements expected 2");
            }
            PointF v0 = new PointF();
            v0.x = Float.parseFloat(v2[0]);
            v0.y = Float.parseFloat(v2[1]);
            return v0;
        } catch (NumberFormatException ignored) {
            throw new RuntimeException("Failed to read point:" + v1 + " in key:" + p2 + " section:" + p1 + " expected format: x,y");
        }
    }

    // ==== from e(String_String_String)I.java ====
    public static int e(String p0, String p1, String p2) {
        try {
            return Integer.parseInt(p2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p0 + "]" + p1 + ": Failed to read int:" + p2);
        }
    }

    // ==== from f(String_String)am1333.java ====
    public final com.corrodinggames.rts.gameFramework.utility.am1333 f(String p1, String p2) {
        String v1 = a(p1, p2, true);
        if (v1 == null) {
            return null;
        }
        if (v1.equalsIgnoreCase("NONE")) {
            return null;
        }
        try {
            String[] v2 = v1.split(",");
            if (v2.length != 2 && v2.length != 3) {
                throw new NumberFormatException("Got:" + v2.length + " elements expected 2 or 3");
            }
            com.corrodinggames.rts.gameFramework.utility.am1333 v0 = new com.corrodinggames.rts.gameFramework.utility.am1333();
            v0.a = Float.parseFloat(v2[0]);
            v0.b = Float.parseFloat(v2[1]);
            if (v2.length > 2) {
                v0.c = Float.parseFloat(v2[2]);
            }
            return v0;
        } catch (NumberFormatException e) {
            throw new RuntimeException("Failed to read point:" + v1 + " in key:" + p2 + " section:" + p1 + " expected format: x,y,[height]");
        }
    }

    // ==== from f(String_String_String)g604.java ====
    public static g604 f(String p0, String p1, String p2) throws ch575 {
        String v0 = p2.trim();
        if (v0.contains(",")) {
            throw new ch575("[" + p0 + "]" + p1 + ": Unexpected single tag, got:'" + v0 + "'");
        }
        if (v0.contains("\"")) {
            throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain quote, got:'" + v0 + "'");
        }
        if (v0.contains("'")) {
            throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain quote, got:'" + v0 + "'");
        }
        if (v0.contains(" ")) {
            throw new ch575("[" + p0 + "]" + p1 + ": tag cannot contain space, got:'" + v0 + "'");
        }
        return g604.c(v0);
    }

    // ==== from g(String_String)F.java ====
    public final float g(String p1, String p2) {
        String v0 = this.a(p1, p2, false);
        try {
            return Float.parseFloat(v0);
        } catch (NumberFormatException v1) {
            throw new RuntimeException("Failed to read float:" + v0 + " in key:" + p2 + " section:" + p1);
        }
    }

    // ==== from g(String_String_String)String.java ====
    private String g(String p1, String p2, String p3) {
        String v0 = this.a(p1, p2, (String)null);
        String v1 = this.a(p1, p3,(String) null);
        if (v0 != null && v1 != null) {
            throw new RuntimeException("[" + p1 + "]Cannot set " + p2 + " and " + p3 + " at the same time");
        }
        if (v0 != null) {
            return v0;
        }
        if (v1 != null) {
            return v1;
        }
        return null;
    }

    // ==== from h(String_String)D.java ====
    public final double h(String p1, String p2) {
        String str = a(p1, p2, false);
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            throw new RuntimeException("Failed to read float:" + str + " in key:" + p2 + " section:" + p1);
        }
    }

    // ==== from i(String_String)J.java ====
    public final long i(String p1, String p2) {
        String v0 = this.a(p1, p2, true);
        if (v0 == null) {
            return 0L;
        }
        try {
            return Long.parseLong(v0);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": Failed to read long:" + v0 + " in key:" + p2 + " section:" + p1);
        }
    }

    // ==== from j(String_String)p1351.java ====
    public final com.corrodinggames.rts.gameFramework.utility.p1351 j(String p1, String p2) {
        com.corrodinggames.rts.gameFramework.utility.p1351 v2 = new com.corrodinggames.rts.gameFramework.utility.p1351();
        java.util.Map v0 = (java.util.Map) this.a.get(p1);
        if (v0 != null) {
            java.util.Iterator v3 = v0.keySet().iterator();
            while (v3.hasNext()) {
                String v1 = (String) v3.next();
                if (v1.startsWith(p2) && !"IGNORE".equals(v0.get(v1))) {
                    v2.add(v1);
                }
            }
        }
        return v2;
    }

    // ==== from k(String_String)Z.java ====
    public final boolean k(String p1, String p2) {
        Map map = (Map) this.a.get(p1);
        if (map != null) {
            for (Object obj : map.keySet()) {
                String key = (String) obj;
                if (key.startsWith(p2)) {
                    return true;
                }
            }
        }
        return false;
    }

    // ==== from l(String_String)p1351.java ====
    public final com.corrodinggames.rts.gameFramework.utility.p1351<String> l(String p1, String p2) {
        com.corrodinggames.rts.gameFramework.utility.p1351<String> v1 = new com.corrodinggames.rts.gameFramework.utility.p1351<>();
        java.util.Set<String> set = this.a.keySet();
        java.util.Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            if (key.startsWith(p1)) {
                if (!key.startsWith(p2)) {
                    continue;
                }
            }
            if (this.d(key)) {
                v1.add(key);
            }
        }
        return v1;
    }

    // ==== from m(String_String)Z.java ====
    public final boolean m(String p1, String p2) {
        String v1 = this.b(p1, p2, true);
        if (v1 != null) {
            return true;
        }
        return false;
    }

    // ==== from n(String_String)V.java ====
    private void n(String p1, String p2) {
        if (this.c) {
            this.d.add(new StringBuilder().append(p1).append(":").append(p2).toString());
        }
    }

    // ==== from o(String_String)V.java ====
    private static void o(String p0, String p1) {
        throw new RuntimeException(new StringBuilder("Could not find ").append(p1).append(" in configuration file in section:").append(p0).toString());
    }

    // ==== from p(String_String)String.java ====
    private String p(String p1, String p2) {
        String v0 = a(p1, p2, true);
        if (v0 == null) {
            v0 = null;
        }
        return v0;
    }

    // ==== from q(String_String)String.java ====
    private String q(String p1, String p2) {
        String v0 = this.p(p1, p2);
        if (v0 == null) {
            o(p1, p2);
        }
        return v0;
    }

}
