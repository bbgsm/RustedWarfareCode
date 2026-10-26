    private static void k() {
        java.util.ArrayList<com.corrodinggames.rts.game.units.custom.l609> list = com.corrodinggames.rts.game.units.custom.l609.d;
        java.util.Iterator<com.corrodinggames.rts.game.units.custom.l609> it = list.iterator();
        float v1 = 50.0f;
        float v2 = 50.0f;
        while (it.hasNext()) {
            com.corrodinggames.rts.game.units.custom.l609 item = it.next();
            float v3 = (float) item.cW;
            if (v3 > 250.0f) {
                v3 = 250.0f;
            }
            if (v1 < v3) {
                v1 = v3;
            }
            if (item.aH && v2 < v3) {
                v2 = v3;
            }
        }
        com.corrodinggames.rts.game.units.custom.ag500.p = v1;
        com.corrodinggames.rts.game.units.custom.ag500.q = v2;
    }
