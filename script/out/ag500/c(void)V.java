package com.corrodinggames.rts.game.units.custom;

public class l609 {
    public static java.util.ArrayList e;
    public static java.util.ArrayList d;

    public static void c() {
        if (l609.e != null) {
            com.corrodinggames.rts.gameFramework.k1104.d("applyPendingNetworkUnits: Applying new network units from server (" + l609.e.size() + " units)");
            l609.d = l609.e;
            l609.e = null;
            com.corrodinggames.rts.game.units.custom.ag500.d();
        } else {
            com.corrodinggames.rts.gameFramework.k1104.d("applyPendingNetworkUnits: no server units list found");
        }
    }
}
