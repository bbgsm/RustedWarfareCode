public final strictfp void q() {
    synchronized(this) {
        if (this.ad > 20) {
            return;
        }
        int v1 = this.bN.nextBackgroundMap;
        com.corrodinggames.rts.gameFramework.SettingsEngine v2 = this.bN;
        v2.nextBackgroundMap = v2.nextBackgroundMap + 1;
        com.corrodinggames.rts.gameFramework.SettingsEngine v3 = this.bN;
        if (v3.nextBackgroundMap > 3) {
            com.corrodinggames.rts.gameFramework.SettingsEngine v4 = this.bN;
            v4.nextBackgroundMap = 1;
        }
        this.bN.save();
        v1 = com.corrodinggames.rts.gameFramework.f1006.b(v1, 1, 3);
        this.dj = null;
        this.di = "maps/menu_background/menu" + v1 + ".tmx";
        try {
            com.corrodinggames.rts.game.p352.b(10, true);
        } catch (java.io.IOException e) {
            throw new RuntimeException(e);
        }
        int i = 0;
        while (i < com.corrodinggames.rts.game.p352.c) {
            com.corrodinggames.rts.game.a.a296 a = new com.corrodinggames.rts.game.a.a296(i);
            if (i == 0) {
                this.bp = a;
            }
            i++;
        }
        this.a(false, com.corrodinggames.rts.gameFramework.ac796.a);
        this.bE = true;
        this.bP.h();
        if (!this.bD) {
            com.corrodinggames.rts.gameFramework.k1104.f("Menu load failed");
            this.ad = this.ad + 1;
        }
    }
}
