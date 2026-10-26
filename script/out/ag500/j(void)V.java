import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.game.units.cj459;
import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.game.units.ce454;
import com.corrodinggames.rts.game.units.custom.ag500;
import com.corrodinggames.rts.game.units.custom.e.a589;
import java.util.ArrayList;
import java.util.Iterator;

class OriginalClass {
    private static void j() {
        l609 v1 = null;
        ArrayList v2 = new ArrayList();
        k1104.t();
        cj459[] v3 = cj459.values();
        for (int v0 = 0; v0 < v3.length; v0++) {
            cj459 v5 = v3[v0];
            v2.add(v5);
        }
        Iterator iterator = l609.d.iterator();
        while (iterator.hasNext()) {
            l609 v0 = (l609) iterator.next();
            v2.add(v0);
            if (v0.M.equals("missing") && v0.J == null) {
                v1 = v0;
            }
        }
        cj459.ae = v2;
        ce454.bs();
        ag500.l();
        ag500.k();
        a589.c();
        if (v1 == null) {
            k1104.d("missingPlaceHolder is not an active unit, searching for new target");
            Iterator iterator2 = l609.d.iterator();
            while (iterator2.hasNext()) {
                l609 v0 = (l609) iterator2.next();
                if (v0.M.equals("missing")) {
                    k1104.d("Found a missing placeholder");
                    v1 = v0;
                }
            }
        }
        l609.b = v1;
    }
}
