private static void m() {
    l609.g.clear();
    l609.f.clear();
    for (l609 item : l609.d) {
        b1019 b = item.J;
        if (b != null) {
            String str = b.P;
            if (str != null) {
                k1104.b(item.M + "(mod:" + item.t() + "): Getting setup while mod has error: " + str);
            }
        }
        for (p613 p : item.gg) {
            p.e = false;
        }
        item.fL.clear();
    }

    for (l609 item : l609.d) {
        try {
            if (item.Q != null) {
                String[] split = item.Q.split(",");
                for (String part : split) {
                    String trimmed = part.trim();
                    el732 target = l609.a(trimmed, false);
                    if (target == null) {
                        throw new ch575("Could not find overrideAndReplace target:" + trimmed);
                    }
                    if (target instanceof l609) {
                        k1104.d("Replacing:" + target.i() + " with " + item.M);
                    }
                    l609.f.put(target, item);
                }
            }
        } catch (ch575 e) {
            ag500.a(item.M, e, item);
        }
    }

    for (cj459 value : cj459.values()) {
        ag500.a(value);
    }

    for (l609 item : l609.d) {
        ag500.a(item);
    }

    for (l609 item : l609.d) {
        for (p613 p : item.gg) {
            if (!p.e) {
                String errorMsg = p.d + " failed to find target:" + p.a;
                item.n(errorMsg);
                if (item.R > 0) {
                    k1104.d("Converting warning to error (meta.strictLevel=" + item.R + ")");
                    item.m(errorMsg);
                }
            }
        }
        if (item.gp != null && item.gp.size() > 0) {
            for (u618 u : item.gp) {
                try {
                    u.a(item);
                } catch (ch575 e) {
                    ag500.a(item.M, e, item);
                }
            }
        }
    }

    for (l609 item : l609.d) {
        item.r();
    }

    java.util.Collections.sort(l609.g, new q614());
}
