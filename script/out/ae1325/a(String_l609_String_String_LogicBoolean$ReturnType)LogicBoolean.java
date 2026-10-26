package com.corrodinggames.rts.game.units.custom.logicBooleans;

import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.gameFramework.f1006;
import java.util.Locale;

public class LogicBoolean {
    private static LogicBoolean a(String p0, l609 p1, String p2, String p3, LogicBoolean.ReturnType p4) {
        if (p0 == null) {
            return null;
        }
        try {
            if (p4 == LogicBoolean.ReturnType.number && f1006.u(p0)) {
                return LogicBoolean.StaticValueBoolean.getStaticNumber(p0);
            }
            if (p0.toLowerCase(Locale.ROOT).startsWith("unitref ")) {
                p0 = p0.substring(8).trim();
            }
            LogicBoolean parsed = LogicBooleanLoader.parseBooleanBlock(p1, p0, false);
            if (parsed == null) {
                return null;
            }
            LogicBoolean.ReturnType actualType = parsed.getReturnType();
            if (actualType != p4) {
                throw new RuntimeException("Type mismatch. Expected type:" + p4 + " got:" + actualType);
            }
            return parsed;
        } catch (RuntimeException e) {
            throw new RuntimeException("[" + p2 + "]" + p3 + ": " + e.getMessage(), e);
        }
    }
}
