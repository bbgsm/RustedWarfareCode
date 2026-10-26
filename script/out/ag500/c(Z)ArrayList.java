import java.util.ArrayList;
import java.util.Iterator;
import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.gameFramework.i.b1019;

private static ArrayList c(boolean p0) {
    ArrayList v1 = new ArrayList();
    synchronized (l609.c) {
        Iterator v3 = l609.c.iterator();
        while (v3.hasNext()) {
            l609 v0 = (l609) v3.next();
            b1019 v4 = v0.J;
            if (v4 != null && v4.i() && p0) {
                continue;
            }
            v1.add(v0);
        }
    }
    return v1;
}
