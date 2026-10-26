package com.corrodinggames.rts.gameFramework.utility;

public class ae1325 {
    public final Integer a(String p1, String p2, Integer p3) {
        String v0 = this.a(p1, p2, null);
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
}
