package com.corrodinggames.rts.gameFramework.utility;

import android.graphics.Rect;

public class ae1325 {
    public final Rect a(String p1, String p2, Rect p3) {
        String v0 = a(p1, p2, null);
        if (v0 == null) {
            return p3;
        }
        String[] parts = v0.split(",");
        if (parts.length != 4) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": getRect: expected 4 ints, not:" + parts.length);
        }
        try {
            int left = Integer.parseInt(parts[0].trim());
            int top = Integer.parseInt(parts[1].trim());
            int right = Integer.parseInt(parts[2].trim());
            int bottom = Integer.parseInt(parts[3].trim());
            return new Rect(left, top, right, bottom);
        } catch (NumberFormatException e) {
            throw new RuntimeException("[" + p1 + "]" + p2 + ": getRect expected ints got: " + v0);
        }
    }
}
