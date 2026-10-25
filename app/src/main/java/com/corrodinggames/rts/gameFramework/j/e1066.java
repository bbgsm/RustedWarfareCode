package com.corrodinggames.rts.gameFramework.j;

import com.corrodinggames.rts.export.sub.h278;
import com.corrodinggames.rts.gameFramework.k1104;
import com.corrodinggames.rts.gameFramework.utility.z1361;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e1066 implements Runnable {
    OutputStream b;
    BufferedOutputStream c;
    DataOutputStream d;
    final c1064 f;
    Boolean a = Boolean.TRUE;
    z1361 e = new z1361();

    public final void a(bi1059 bi1059Var) {
        synchronized (this) {
            if (!this.f.b) {
                this.f.g.add(bi1059Var);
                notifyAll();
            }
        }
    }

    public final void a() {
        synchronized (this) {
            notifyAll();
        }
    }

    private void b() {
        synchronized (this) {
            try {
                if (this.f.g.isEmpty() && !this.f.b && !this.f.c) {
                    wait(10000L);
                }
            } catch (InterruptedException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1066(c1064 c1064Var) {
        this.f = c1064Var;
        try {
            this.b = c1064Var.e.getOutputStream();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        this.c = new BufferedOutputStream(this.b);
        this.d = new DataOutputStream(this.c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0153, code lost:
        r9.f.b = true;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        k1104.W();
        Thread.currentThread().setName("SendWorker-" + this.f.f());
        try {
            while (this.a.booleanValue() && !this.f.b) {
                while (!this.f.g.isEmpty() && !this.f.b) {
                    bi1059 removed = (bi1059) this.f.g.remove();
                    bi1059 v5;

                    if (removed instanceof bm1063) {
                        bm1063 bm = (bm1063) removed;
                        bg1057 ack = new bg1057();
                        ack.c(bm.g);
                        if (this.f.m == bm.f && this.f.s) {
                            v5 = ack.a(176);
                        } else {
                            ack.c(bm.f.b);
                            ack.a(bm.f.c);
                            v5 = ack.a(175);
                        }
                        this.f.m = bm.f;
                    } else {
                        if (this.f.r) {
                            this.f.m = removed;
                        }
                        v5 = removed;
                    }

                    if (this.f.e instanceof g1068) {
                        g1068 relay = (g1068) this.f.e;
                        relay.a.a(new bm1063(relay.b, v5));
                    } else if (this.f.e instanceof h278) {
                        boolean needClose;
                        z1361 buffer;
                        if (v5.c.length > 500) {
                            buffer = new z1361(v5.c.length + 8);
                            needClose = true;
                        } else {
                            buffer = this.e;
                            buffer.a();
                            needClose = false;
                        }
                        boolean flag = v5.e;
                        DataOutputStream out = new DataOutputStream(buffer);
                        out.writeInt(v5.c.length);
                        out.writeInt(v5.b);
                        out.write(v5.c);
                        out.flush();
                        out.close();
                        ((h278) this.f.e).a(buffer.a, buffer.b(), flag);
                        if (needClose) {
                            buffer.close();
                        }
                    } else {
                        this.d.writeInt(v5.c.length);
                        this.d.writeInt(v5.b);
                        this.d.write(v5.c);
                        this.d.flush();
                    }

                    if (v5.d != -1) {
                        try {
                            Thread.sleep(v5.d);
                        } catch (InterruptedException e) {
                        }
                    }
                }
                if (this.f.c) {
                    this.f.b = true;
                    break;
                }
                b();
            }
            this.f.a(false, true);
        } catch (IOException ex) {
            ex.printStackTrace();
            k1104.a("network:SendWorker", ex.getMessage());
            this.f.a(false, true);
        }
    }
}
