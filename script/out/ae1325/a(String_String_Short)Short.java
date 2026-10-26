package com.corrodinggames.rts.gameFramework.utility;

public class ae1325 {
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
}
