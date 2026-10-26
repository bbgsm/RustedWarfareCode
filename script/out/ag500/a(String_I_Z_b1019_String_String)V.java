private static void a(String p0, int p1, boolean p2, b1019 p3, String p4, String p5) {
    boolean v8 = p2 && p1 == 1;
    k1104 v13 = k1104.t();

    if (p3 != null) {
        if (p3.f && !v13.bN.loadDisabledModData) {
            p3.A = true;
            return;
        } else {
            p3.A = false;
        }
    }

    if (p3 != null && p3.f) {
        k1104.d("Note: Loading disabled mod: " + p0);
    }

    a926.d();
    String[] v14 = a926.h(p0);

    if (v14 == null) {
        String v2 = a926.d();
        k1104.b("readAllCustomUnitConfigs: ERROR");
        k1104.b("readAllCustomUnitConfigs: Failed to load:" + p0);
        if (p3 != null) {
            if (!p3.B) {
                if (v2 == null) {
                    p3.P = "Failed to list directory, check file permissions";
                } else {
                    p3.P = "Failed to list directory: " + v2;
                }
            } else {
                p3.Q = "Failed to list subdirectory: '" + p0 + "' check file permissions";
                if (v2 != null) {
                    p3.Q += ": " + v2;
                }
            }
        }
        return;
    }

    if (p3 != null) {
        p3.B = true;
    }

    String v7;
    if (!v8) {
        v7 = p5;
        for (String v5 : v14) {
            if (v5.equalsIgnoreCase("all-units.template")) {
                v7 = p0;
            }
        }
    } else {
        v7 = p5;
    }

    for (String v3 : v14) {
        if (v3.equals("custom_units_here.txt") ||
            v3.equals("mods_here_will_be_enabled_by_default.txt") ||
            v3.equals("__MACOSX")) {
            continue;
        }

        boolean v9;
        b1019 v5;
        if (p2 && p1 == 1 && p3 == null) {
            v5 = v13.bW.d(v3);
            if (v5 == null) {
                k1104.b("readAllCustomUnitConfigs: Could not find linked mod:" + v3);
                v5 = v13.bW.c;
            }
            v9 = true;
        } else {
            v9 = false;
            v5 = p3;
        }

        if (v3.toLowerCase(Locale.ENGLISH).endsWith(".ini") && !v8) {
            String v2 = p0 + "/" + v3;
            if (ag500.r != v5 && v5 != null) {
                ag500.r = v5;
                ag500.i();
                k1104.d("Loading units from mod: " + v5.c);
            }
            if (v3.equalsIgnoreCase("desktop.ini")) {
                k1104.d("Skipping possible system file: " + v2);
            } else {
                long v10 = cf910.a();
                ag500.a(v2, v5, p4, v7);
                ag500.a(v10, ah501.f);
            }
        } else if (v3.toLowerCase(Locale.ENGLISH).endsWith(".tmx")) {
            String v2 = p0 + "/" + v3;
            k1104.d("Found map: " + v2);
            if (v5 != null && v5.z) {
                v13.bW.a(v2, v5);
            } else {
                k1104.d("Skipping map due to mod settings");
            }
        } else {
            String v2 = p0 + "/" + v3;
            if (p1 < 10) {
                if (a926.f(v2)) {
                    String v6 = (p4 == null) ? v2 : p4;
                    long v10 = -1L;
                    if (v9) {
                        v10 = cf910.a();
                        k1104.d("============");
                        k1104.d(">>> Mod '" + v5.c() + "'" + (v5.i() ? "" : " (disabled)"));
                    }
                    ag500.a(v2, p1 + 1, p2, v5, v6, v7);
                    if (v9 && v5 != null && v5.i()) {
                        float v2tmp = cf910.a(v10);
                        double v3tmp = v2tmp;
                        k1104.d("Mod '" + v5.c() + "' load took:" + cf910.a(v3tmp));
                    }
                }
            } else {
                k1104.d("Too many levels:" + v2);
            }
        }
    }
}
