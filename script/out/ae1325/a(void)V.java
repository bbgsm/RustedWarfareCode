package com.corrodinggames.rts.gameFramework.utility;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;

public class ae1325 {
    public LinkedHashMap<String, Map<String, String>> a;
    public String b;
    public boolean c;
    public LinkedHashSet<String> d;

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
}
