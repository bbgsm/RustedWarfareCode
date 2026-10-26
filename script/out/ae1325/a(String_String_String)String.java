package com.corroding.rts.gameFramework.utility;

public class ae1325 {
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
}
