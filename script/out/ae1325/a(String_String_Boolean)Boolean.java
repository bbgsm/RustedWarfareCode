package com.corrodinggames.rts.gameFramework.utility;

public class ae1325 {
    public final Boolean a(String p1, String p2, Boolean p3) {
        String v0 = this.a(p1, p2, null);
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
}
