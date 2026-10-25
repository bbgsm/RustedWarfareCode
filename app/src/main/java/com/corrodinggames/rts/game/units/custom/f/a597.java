package com.corrodinggames.rts.game.units.custom.f;

import com.corrodinggames.rts.game.units.custom.ch575;
import com.corrodinggames.rts.gameFramework.utility.ae1325;
import com.corrodinggames.rts.gameFramework.utility.p1351;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a597 {

    static final Pattern a = Pattern.compile("\\$\\{([^\\}]*)\\}");
    static final Pattern b = Pattern.compile("[A-Za-z_][A-Za-z_.0-9]*");
    static b598 c = new b598();

    public static void a(ae1325 p0) throws ch575 {
        final int v13 = 8;

        // 清空全局定义表
        c.a.a.clear();
        c.b.a.clear();

        p1351 sectionsWithGlobal = new p1351();

        // 找出含有非 IGNORE 的 @global 条目的 section
        Iterator sectionIt = p0.a.keySet().iterator();
        while (sectionIt.hasNext()) {
            String section = (String) sectionIt.next();
            Map sectionMap = (Map) p0.a.get(section);

            Iterator keyIt = sectionMap.keySet().iterator();
            while (keyIt.hasNext()) {
                String key = (String) keyIt.next();
                if (key.startsWith("@global ")) {
                    if (!"IGNORE".equals(sectionMap.get(key))) {
                        sectionsWithGlobal.add(section);
                        break; // 对应原 smali 的 goto :goto_0，继续外层循环
                    }
                }
            }
        }

        // 处理 @global 条目
        Iterator globalSectionIt = sectionsWithGlobal.iterator();
        while (globalSectionIt.hasNext()) {
            String section = (String) globalSectionIt.next();
            p1351 lines = p0.j(section, "@global ");

            Iterator lineIt = lines.iterator();
            while (lineIt.hasNext()) {
                String line = (String) lineIt.next();
                String name = line.substring(v13).trim();

                try {
                    f602.a(name);
                } catch (ch575 e) {
                    throw new ch575("[" + section + "]" + line + ": " + e.getMessage());
                }

                if (p0.c(name)) {
                    throw new ch575("[" + section + "]" + line + ": A section already has that name");
                }

                String value = p0.c(section, line);
                if (value.contains("${")) {
                    throw new ch575("[" + section + "]" + line
                            + " has dynamic value: '" + value + "', this is not yet supported");
                }

                c.a.a(name, value);
            }
        }

        List<d600> pending = new ArrayList<d600>();
        LinkedHashMap sectionMapAll = p0.a;

        // 处理每个普通 section
        Iterator allSectionIt = sectionMapAll.keySet().iterator();
        while (allSectionIt.hasNext()) {
            String section = (String) allSectionIt.next();

            if (section == null) {
                continue;
            }
            if (section.startsWith("comment_")) {
                continue;
            }
            if (section.startsWith("template_")) {
                continue;
            }

            b598 local = new b598(c.a, new e601());

            // 处理 @define 条目
            p1351 defineLines = p0.j(section, "@define ");
            Iterator defineIt = defineLines.iterator();
            while (defineIt.hasNext()) {
                String line = (String) defineIt.next();
                String name = line.substring(v13).trim();

                try {
                    f602.a(name);
                } catch (ch575 e) {
                    throw new ch575("[" + section + "]" + line + ": " + e.getMessage());
                }

                if (p0.c(name)) {
                    throw new ch575("[" + section + "]" + line + ": A section already has that name");
                }

                String value = p0.c(section, line);
                if (value.contains("${")) {
                    throw new ch575("[" + section + "]" + line
                            + " has dynamic value: '" + value + "', this is not yet supported");
                }

                local.b.a(name, value);
            }

            Map sectionEntries = (Map) sectionMapAll.get(section);
            Iterator entryIt = sectionEntries.keySet().iterator();
            while (entryIt.hasNext()) {
                String key = (String) entryIt.next();
                String value = (String) sectionEntries.get(key);

                if (value == null) {
                    continue;
                }
                if (!value.contains("${")) {
                    continue;
                }

                StringBuffer sb = new StringBuffer();
                Matcher matcher = a.matcher(value);
                int loopCount = 0;

                while (matcher.find()) {
                    loopCount++;
                    if (loopCount > 100) {
                        throw new ch575("[" + section + "]" + key + ": Too many loops while parsing");
                    }

                    String varName = matcher.group(1);
                    String replacement;
                    try {
                        replacement = local.a(p0, section, varName);
                    } catch (ch575 e) {
                        e.printStackTrace();
                        throw new ch575("[" + section + "]" + key + ": " + e.getMessage());
                    }

                    matcher.appendReplacement(sb, Matcher.quoteReplacement(replacement));
                }

                matcher.appendTail(sb);
                String newValue = sb.toString();

                pending.add(new d600(section, key, newValue));
            }
        }

        // 回写解析后的动态值
        for (d600 entry : pending) {
            String section = entry.a;
            String key = entry.b;
            String value = entry.c;

            if (p0.g) {
                throw new RuntimeException("locked changes");
            }

            LinkedHashMap sectionMap = (LinkedHashMap) p0.a.get(section);
            if (sectionMap == null) {
                sectionMap = new LinkedHashMap();
                p0.a.put(section, sectionMap);
            }

            sectionMap.put(key, value);
        }

        pending.clear();
    }
}
