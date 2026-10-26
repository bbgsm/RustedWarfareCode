package com.corrodinggames.rts.game.units.custom;

import com.corrodinggames.rts.gameFramework.utility.p1351;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.el732;
import com.corrodinggames.rts.game.units.custom.l609;
import java.util.Iterator;

public class ag500 {
    public static int b;
    public static int c;
    public static int d;

    public static void a() {
        p1351 v1 = new p1351();
        ag500.b = 0;
        ag500.c = 0;
        ag500.d = 0;
        Iterator iterator = ce454.bn().iterator();
        while (iterator.hasNext()) {
            ce454 ce454Instance = (ce454) iterator.next();
            el732 q = ce454Instance.q();
            if (q instanceof l609) {
                if (!v1.contains(q)) {
                    v1.add((l609) q);
                }
            }
        }
        if (v1.size() > 0) {
            ag500.a(v1);
        }
    }
}
