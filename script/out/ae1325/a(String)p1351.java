package com.corrodinggames.rts.gameFramework.utility;

public final class ae1325 {
    private java.util.LinkedHashMap a;

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
}
