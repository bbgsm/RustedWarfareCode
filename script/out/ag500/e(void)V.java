import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.i.a1018;
import com.corrodinggames.rts.gameFramework.i.b1019;
import com.corrodinggames.rts.gameFramework.m.e1216;
import com.corrodinggames.rts.gameFramework.a.i792;
import com.corrodinggames.rts.game.units.custom.ag500;
import com.corrodinggames.rts.game.units.custom.l609;
import com.corrodinggames.rts.gameFramework.e.a926;
import com.corrodinggames.rts.gameFramework.cf910;
import java.util.ArrayList;
import java.util.Iterator;
import java.nio.ByteBuffer;

public class e {
    public static void e() {
        k1104 v9 = k1104.t();
        ArrayList v10 = v9.bW.j();
        ag500.j = 0;
        ag500.i = 0;
        ag500.l = 0;
        ag500.k = false;
        long v12 = cf910.a();

        Iterator iter1 = ag500.g.values().iterator();
        while (iter1.hasNext()) {
            e1216 e1216Obj = (e1216) iter1.next();
            e1216Obj.v = false;
            if (e1216Obj.a != null) {
                for (e1216 child : e1216Obj.a) {
                    child.v = false;
                }
            }
            if (e1216Obj.b != null) {
                for (e1216 child : e1216Obj.b) {
                    child.v = false;
                }
            }
            if (e1216Obj.c != null) {
                for (e1216 child : e1216Obj.c) {
                    child.v = false;
                }
            }
        }

        Iterator iter2 = ag500.h.values().iterator();
        while (iter2.hasNext()) {
            i792 i792Obj = (i792) iter2.next();
            i792Obj.g = false;
        }

        byte[] v1 = null;
        byte[][] v2 = null;
        ByteBuffer[] v0 = null;
        ByteBuffer[] v6 = null;
        byte[] v7 = null;
        byte[][] v8 = null;
        try {
            v1 = new byte[0x7a1200];
            v1[0] = v9.eb;
            v9.ec = v1[1];
            v2 = new byte[2][];
            v2[0] = new byte[0x2dc6c0];
            v2[1] = new byte[0x2dc6c0];
            v2[0][0] = v9.eb;
            v2[1][0] = v9.eb;
            v0 = null;
            if (!k1104.X()) {
                v0 = new ByteBuffer[4];
                v0[0] = ByteBuffer.allocateDirect(0x4c4b40);
                v0[1] = ByteBuffer.allocateDirect(0x4c4b40);
                v0[2] = ByteBuffer.allocateDirect(0x4c4b40);
                v0[3] = ByteBuffer.allocateDirect(0x4c4b40);
            }
            v6 = v0;
            v7 = v1;
            v8 = v2;
        } catch (OutOfMemoryError e) {
            System.gc();
            k1104.d("Failed to reserve memory pre-mod load");
            v6 = null;
            v7 = v1;
            v8 = v2;
        }

        synchronized (l609.c) {
            l609.c.clear();
        }
        l609.d.clear();
        l609.e = null;
        l609.f.clear();
        v9.bW.f.clear();
        ag500.b = 0;
        ag500.c = 0;
        synchronized (ag500.n) {
            ag500.n.clear();
        }

        String v0str = a926.r("units");
        ag500.a(v0str, 1, false, null, a926.r("units"), null);

        if (!k1104.aG && !v9.aq) {
            String v0path = ag500.h();
            if (!a926.f(v0path)) {
                k1104.d("Modded Custom '" + v0path + "' directory not found");
            }

            Iterator<b1019> iter3 = v10.iterator();
            while (iter3.hasNext()) {
                b1019 v3 = iter3.next();
                if (!v3.w && v3.o != null) {
                    String v0mod = v3.o;
                    if (v3.k) {
                        v0mod = a926.r(v0mod);
                    }
                    if (v3.f) {
                        k1104.d("Disabled mod at:" + v0mod + " (name:" + v3.a() + ")");
                    } else {
                        k1104.d("Loading mod at:" + v0mod + " (name:" + v3.a() + ")");
                    }
                    ag500.a(v0mod, 2, true, v3, null, null);
                }
            }

            Iterator<b1019> iter4 = v10.iterator();
            while (iter4.hasNext()) {
                b1019 v3 = iter4.next();
                if (v3.w && v3.o != null) {
                    String v0mod = v3.f();
                    if (v3.f) {
                        k1104.d("Disabled workshop mod at:" + v0mod + " (name:" + v3.a() + ")");
                    } else {
                        k1104.d("Loading workshop mod at:" + v0mod + " (name:" + v3.a() + ")");
                    }
                    ag500.a(v0mod, 2, true, v3, null, null);
                }
            }
        }

        ag500.i();
        ag500.a(true);
        k1104.d("Done loading custom units. image cacheHits:" + ag500.j + " image cacheMisses:" + ag500.i + " (in: " + cf910.a(v12) + "ms)");
        k1104.d("========= Mods data loaded ===========");
        k1104.d("Number of mods:" + v10.size());
        Iterator<b1019> iter5 = v10.iterator();
        while (iter5.hasNext()) {
            b1019 v0mod = iter5.next();
            String v2msg = "Mod: '" + v0mod.a() + "' - Memory use:" + v0mod.k() + " " + (v0mod.i() ? "" : " (disabled)");
            k1104.d(v2msg);
        }
        k1104.d("================================");
        if (v6 != null) {
            v6[0] = null;
            v6[1] = null;
            v6[2] = null;
            v6[3] = null;
        }
        if (v8 != null) {
            v8[0] = null;
            v8[1] = null;
        }
        if (v7 != null) {
            v7[1] = v9.eb;
            v9.ec = v7[1];
            System.gc();
            System.gc();
        }
    }
}
