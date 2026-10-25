package com.corrodinggames.rts.gameFramework;

import com.corrodinggames.rts.game.a.a296;
import com.corrodinggames.rts.game.p352;
import com.corrodinggames.rts.game.units.a.s376;
import com.corrodinggames.rts.game.units.bp437;
import com.corrodinggames.rts.game.units.custom.d.b579;
import com.corrodinggames.rts.game.units.custom.logicBooleans.VariableScope;
import com.corrodinggames.rts.gameFramework.e.a926;
import com.corrodinggames.rts.gameFramework.j.ae1028;
import com.corrodinggames.rts.gameFramework.j.as1042;
import com.corrodinggames.rts.gameFramework.j.ay1048;
import com.corrodinggames.rts.gameFramework.j.az1049;
import com.corrodinggames.rts.gameFramework.j.bg1057;
import com.corrodinggames.rts.gameFramework.j.j1071;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class bp890 {
    public static boolean b = true;
    public static boolean c = true;
    public static boolean d = false;
    public static boolean e = true;
    public static boolean f = false;
    int A;
    int B;
    int C;
    InputStream D;
    BufferedInputStream E;
    DataInputStream F;
    j1071 G;
    OutputStream H;
    BufferedOutputStream I;
    DataOutputStream J;
    bg1057 K;
    public bq891 L;
    Thread M;
    public boolean P;
    public boolean h;
    int i;
    int j;
    boolean k;
    int l;
    boolean m;
    public int o;
    public int p;
    public int q;
    public String r;
    boolean s;
    public volatile boolean t;
    String u;
    public boolean v;
    bs893 x;
    bs893 y;
    int z;
    public String a = "replays/";
    public ay1048 g = new ay1048();
    public boolean n = false;
    public int w = 1;
    Object N = new Object();
    public boolean O = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean b(bp890 bp890Var) {
        bp890Var.t = false;
        return false;
    }

    public static void a(String str) {
        k1104.d("Replay: ".concat(String.valueOf(str)));
    }

    private static void d(String str) {
        k1104.b("Replay: ".concat(String.valueOf(str)));
    }

    private static void a(String str, Exception exc) {
        k1104.a("Replay: ".concat(String.valueOf(str)), (Throwable) exc);
    }

    public final File a(String str, boolean z) {
        return a926.a(str, this.a, z);
    }

    public static void a() {
        k1104 t = k1104.t();
        if (t.bq != 0.0f) {
            t.bq = 0.0f;
        } else {
            t.bq = 1.0f;
        }
    }

    public static void b() {
        k1104 t = k1104.t();
        if (t.bq == 1.0f) {
            t.bq = 2.0f;
        } else if (t.bq == 2.0f) {
            t.bq = 4.0f;
        } else if (t.bq == 4.0f) {
            t.bq = 8.0f;
        } else if (t.bq == 8.0f) {
            t.bq = 16.0f;
        } else if (t.bq == 16.0f) {
            t.bq = 32.0f;
        } else if (t.bq == 32.0f) {
            t.bq = 64.0f;
        } else {
            t.bq = 1.0f;
        }
    }

    public final void c() {
        if (f) {
            i();
        }
    }

    public final void a(e934 e934Var, int i) {
        bq891 bq891Var = this.L;
        if (this.t && !this.v) {
            if (bq891Var == null) {
                k1104.f("Failed to record command, replay might have already stopped");
                return;
            }
            bs893 bs893Var = new bs893();
            bs893Var.e = e934Var.e();
            bs893Var.a = i;
            bq891Var.a(bs893Var);
            this.j++;
            if (this.j > 5) {
                this.j = 0;
                k1104 t = k1104.t();
                bs893 bs893Var2 = new bs893();
                bs893Var2.c = Long.valueOf(j());
                bs893Var2.a = t.bu;
                bq891Var.a(bs893Var2);
            }
        }
    }

    private void i() {
        if (this.t && !this.v) {
            this.g.b();
            a(this.g, true);
        }
    }

    public final void a(ay1048 ay1048Var, boolean z) {
        if (this.t && !this.v) {
            k1104 t = k1104.t();
            bs893 bs893Var = new bs893();
            bg1057 bg1057Var = new bg1057();
            try {
                bg1057Var.b(z ? 1 : 0);
                bg1057Var.c(ay1048Var.b.size());
                Iterator it = ay1048Var.b.iterator();
                while (it.hasNext()) {
                    bg1057Var.a(((az1049) it.next()).b);
                }
                bs893Var.d = bg1057Var.d();
                bs893Var.a = t.bu;
                this.L.a(bs893Var);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public final void d() {
        synchronized (this.N) {
            try {
                if (this.L != null) {
                    this.L.a();
                    try {
                        this.M.join();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    this.t = false;
                    this.L = null;
                    this.M = null;
                }
                if (this.H != null) {
                    this.J.flush();
                    this.J.close();
                    this.I.flush();
                    this.I.close();
                    this.H.flush();
                    this.H.close();
                }
                this.H = null;
                this.I = null;
                this.J = null;
                this.K = null;
            } catch (IOException e3) {
                e3.printStackTrace();
                this.H = null;
                this.I = null;
                this.J = null;
                this.K = null;
            }
            this.s = false;
            this.t = false;
            this.v = false;
            this.u = null;
            this.i = 0;
            this.j = 0;
            this.k = false;
            this.l = 0;
            this.m = false;
            this.z = 0;
            this.w = 1;
            this.A = 0;
            this.B = 0;
            this.C = 0;
            this.o = -1;
            this.p = 0;
            this.q = -1;
            this.r = null;
            try {
                if (this.D != null) {
                    this.F.close();
                    this.E.close();
                    this.D.close();
                }
                this.D = null;
                this.E = null;
                this.F = null;
                this.G = null;
            } catch (IOException e4) {
                e4.printStackTrace();
                this.D = null;
                this.E = null;
                this.F = null;
                this.G = null;
            }
        }
    }

    private static long j() {
        Iterator it = ah801.et.iterator();
        long j = 0;
        while (true) {
            long j2 = j;
            if (!it.hasNext()) {
                return j2;
            }
            ah801 ah801Var = (ah801) it.next();
            if (ah801Var instanceof bp437) {
                bp437 bp437Var = (bp437) ah801Var;
                j = (long) (bp437Var.ej + ((float) j2) + (bp437Var.eq * 1000.0f) + (bp437Var.er * 1000.0f) + (bp437Var.cw * 1.0f));
            } else {
                j = j2;
            }
        }
    }

    public final void e() {
        if (!this.O) {
            d();
        }
    }

    public final boolean b(String str) {
        return a(str, a(str, false));
    }

    private static void k() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < p352.c) {
                p352 i3 = p352.i(i2);
                if (i3 != null && (i3 instanceof a296)) {
                    ((a296) i3).ba = true;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private boolean a(String str, File file) {
        if (this.t) {
            if (this.v) {
                k1104.b("startReplayingFile: A replay is already playing");
            } else {
                k1104.b("startReplayingFile: A replay is already saving");
            }
        }
        d();
        k1104 t = k1104.t();
        t.f();
        t.bU.a(false);
        this.x = null;
        this.s = false;
        this.t = true;
        this.v = true;
        this.u = str;
        try {
            if (file.isDirectory()) {
                k1104.d("File is a directory: " + file.getAbsolutePath());
                k1104.d("Cannot load replay: Target is a folder, instead of a file");
                t.g("Cannot load replay: Target is a folder, instead of a file");
                return false;
            }
            this.D = a926.a(file);
            if (this.D == null) {
                k1104.d("Cannot load replay: Failed to read replay file");
                t.g("Cannot load replay: Failed to read replay file");
                return false;
            }
            this.E = new BufferedInputStream(this.D);
            this.F = new DataInputStream(this.E);
            this.G = new j1071(this.F);
            String readUTF = this.G.b.readUTF();
            if (!readUTF.equals("rustedWarfareReplay")) {
                k1104.d("Header is not correct:".concat(String.valueOf(readUTF)));
                k1104.d("Cannot load replay: File is missing header (check if this file is a replay)");
                t.g("Cannot load replay: File is missing header (check if this file is a replay)");
                return false;
            }
            int readInt = this.G.b.readInt();
            int readInt2 = this.G.b.readInt();
            a("Loading save from version: ".concat(String.valueOf(readInt2)));
            this.G.c = readInt2;
            String readUTF2 = this.G.b.readUTF();
            if ((readInt2 != 96 || readInt != t.a(true)) && !this.n) {
                String concat = "Cannot load replay: This replay was recording with a different version: ".concat(String.valueOf(readUTF2));
                if (k1104.Z()) {
                    concat = concat + " (You can use the beta tab in steam to switch to old versions)";
                }
                t.g(concat);
                a("Replay version: " + readInt2 + " (" + readInt + ")");
                a("GameSaver.thisSaveVersion: 96 (" + t.a(true) + ")");
                if (!k1104.aD) {
                    this.t = false;
                    return false;
                }
            }
            this.q = readInt2;
            this.r = readUTF2;
            this.G.b.readBoolean();
            this.G.a("gamesave", false);
            this.P = false;
            this.O = true;
            a("Loading replay initial save");
            t.bX.a(this.G, false, false);
            this.O = false;
            this.G.c("gamesave");
            if (!this.P) {
                a("ReplayEngine: --- No game setup read ----");
                t.bU.aA.i = true;
                t.bz = t.bN.teamUnitCapHostedGame;
                t.by = t.bz;
            }
            if (!this.h) {
                k();
            }
            a("--- Reply settings ---");
            a("Unit cap: " + t.bz);
            as1042 as1042Var = t.bU.aA;
            a(((((((((((VariableScope.nullOrMissingString + "startingCredits: " + as1042Var.c + "\n") + "fogMode: " + as1042Var.d + "\n") + "revealedMap: " + as1042Var.e + "\n") + "aiDifficulty: " + as1042Var.f + "\n") + "startingUnits: " + as1042Var.g + "\n") + "incomeMultiplier: " + as1042Var.h + "\n") + "noNukes: " + as1042Var.i + "\n") + "sharedControl: " + as1042Var.l + "\n") + "allowSpectators: " + as1042Var.o + "\n") + "lockedRoom: " + as1042Var.p + "\n") + "randomSeed: " + as1042Var.q + "\n");
            a("Starting frame:" + t.bu);
            if (!this.h) {
                for (int i = 0; i < p352.c; i++) {
                    p352 i2 = p352.i(i);
                    if (i2 != null && i2.w != null) {
                        t.bP.h.a(VariableScope.nullOrMissingString, "Player '" + i2.w + "' playing as " + i2.D().toLowerCase() + " (team:" + p352.a(i2.s) + ")");
                    }
                }
            }
            if (k1104.av) {
                ae1028.e("Warning: editor will desync checksums.");
                t.bs = true;
                t.bi = true;
                t.bk = true;
            }
            return true;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void a(boolean z) {
        if (k1104.aT) {
            if (!k1104.ba) {
                return;
            }
        } else if (!k1104.aZ) {
            return;
        }
        k1104 t = k1104.t();
        if (t.bU.C && !z && !this.O && t.bN.saveMultiplayerReplays) {
            c(t.V() + " [v" + t.p() + "] (" + f1006.a("d MMM yyyy HH.mm.ss") + ").replay");
        }
    }

    public final void c(String str) {
        a("Recording replay to: ".concat(String.valueOf(str)));
        if (this.t) {
            if (this.v) {
                d("startSaving: A replay is already playing");
            } else {
                d("startSaving: A replay is already saving");
            }
        }
        d();
        k1104 t = k1104.t();
        boolean z = t.bN.replayTracing;
        f = z;
        if (z) {
            t.bU.h("Warning traceChecksumsWriting is on. Large replay file size will be created.");
        }
        this.s = false;
        this.t = true;
        this.v = false;
        this.u = str;
        try {
            File a = a(str, true);
            this.H = a926.a(a, false);
            if (this.H == null) {
                d("Failed to create replay file at:" + a.getAbsolutePath());
                k1104.t().g("Failed to create replay file (Replay recording will be disabled)");
                d();
            } else {
                this.I = new BufferedOutputStream(this.H);
                this.J = new DataOutputStream(this.I);
                this.K = new bg1057(this.J);
                this.K.b("rustedWarfareReplay");
                this.K.c(t.a(true));
                this.K.c(96);
                this.K.b(t.p());
                this.K.a(t.aq);
                this.K.d("gamesave");
                aj803.a(this.K);
                this.K.e("gamesave");
                this.J.flush();
                this.L = new bq891(this);
                this.M = new Thread(this.L);
                this.M.start();
            }
        } catch (IOException e2) {
            a("Failed to start recording replay", e2);
            k1104.t().g("Failed to start recording replay: " + e2.getMessage());
            d();
        } catch (Exception e3) {
            a("Failed to start recording replay (Non IOException)", e3);
            k1104.t().g("Failed to start recording replay (Non IOException): " + e3.getMessage());
            d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:206:0x000d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final strictfp void f() {
        final float REPLAY_SPEED = 0.25f;

        k1104 game = k1104.t();

        if (this.s) {
            return;
        }
        if (!this.t || !this.v) {
            return;
        }

        while (true) {
            // 如果没有待处理命令，则从 replay 流中读取一个命令块
            if (this.x == null) {
                boolean continueAfterRead = true;

                try {
                    k1104 v4 = k1104.t();
                    String block = this.G.a(false);

                    if ("rc".equals(block)) {
                        this.z++;

                        bs893 cmd = new bs893();
                        cmd.a = this.G.b.readInt();

                        e934 command = v4.cc.b();
                        command.a(this.G);
                        command.a = true;
                        cmd.e = command;

                        this.G.c("rc");
                        this.x = cmd;

                        this.p++;
                        this.o = cmd.a;

                        if (bp890.c) {
                            bp890.a("updateGameFrame: Command: "
                                    + command.i.w
                                    + " ("
                                    + command.i.l
                                    + ") count:"
                                    + command.c()
                                    + " id:"
                                    + this.z);

                            if (command.j != null) {
                                bp890.a("updateGameFrame: Waypoint: " + command.j.a.name());

                                if (command.j.b != null) {
                                    bp890.a("updateGameFrame: Build Type: " + command.j.b.i());
                                }
                            }

                            if (s376.b(command.k)) {
                                bp890.a("updateGameFrame: SpecialAction: " + command.k.b);
                            }

                            if (command.n != null) {
                                bp890.a("updateGameFrame: SetAttackMode: " + command.n);
                            }

                            if (command.g) {
                                bp890.a("updateGameFrame: stopOrUndo is set");
                            }

                            if (command.s) {
                                if (command.t != 0.0f) {
                                    bp890.a("updateGameFrame: changeStepRate:" + command.t);
                                }
                                if (command.v != 0) {
                                    bp890.a("updateGameFrame: systemAction_action:" + command.v);
                                }
                            }

                            bp890.a("updateGameFrame: ------");
                        }

                    } else if ("wait".equals(block)) {
                        bs893 cmd = new bs893();
                        cmd.a = this.G.b.readInt();
                        cmd.b = true;

                        this.x = cmd;
                        this.G.c("wait");

                    } else if ("cs".equals(block)) {
                        int frame = this.G.b.readInt();
                        long checksum = this.G.b.readLong();

                        if (!this.n) {
                            if (v4.bu != frame) {
                                k1104.a("replay:updateGameFrame",
                                        "expected:" + frame + " got:" + v4.bu);
                            }

                            if (bp890.j() != checksum) {
                                bp890.d("checksum: checksums don't match!!");
                                bp890.d("checksum: game frameNumber:" + v4.bu);
                                bp890.d("checksum: Replay checksum:" + checksum);
                                bp890.d("checksum: Game checksum  :" + bp890.j());

                                this.l++;

                                if (!this.k) {
                                    this.k = true;
                                    v4.bP.h.a("", "Error: This replay might be out of sync");
                                }
                            } else {
                                bp890.a("checksum: checksums are matching frameNumber:" + v4.bu);
                            }
                        }

                        this.G.c("cs");

                    } else if ("es".equals(block)) {
                        int frame = this.G.b.readInt();

                        if (!this.n) {
                            if (v4.bu != frame) {
                                k1104.b("replay.updateGameFrame: expected:"
                                        + frame + " got:" + v4.bu);
                            }

                            j1071 v6 = new j1071(this.G.f());
                            byte checksumType = v6.b.readByte();

                            if (b579.a(checksumType, 1)) {
                                k1104.d("replay: -trace checksum-");
                            } else {
                                k1104.d("replay: -long checksum-");
                            }

                            v4.bU.a();
                            v6.b.readInt(); // skip

                            for (Object obj : v4.bU.ao.b) {
                                az1049 az = (az1049) obj;
                                long value = v6.b.readLong();

                                if (!this.m && value == az.b) {
                                    bp890.a("extraChecksum: "
                                            + az.a
                                            + " Checksum ["
                                            + frame
                                            + "]. "
                                            + value
                                            + " == "
                                            + az.b
                                            + " (ok)");
                                }

                                if (value != az.b) {
                                    if (this.l < 150) {
                                        bp890.d("extraChecksum: "
                                                + az.a
                                                + " Checksum ["
                                                + frame
                                                + "]. "
                                                + value
                                                + " != "
                                                + az.b
                                                + " (failed)");
                                    }
                                    this.l++;
                                }
                            }
                        }

                        this.m = true;
                        this.G.c("es");

                    } else if ("resync".equals(block)) {
                        int frame = this.G.b.readInt();

                        k1104.d("Loading resync from replay");

                        if (v4.bu != frame) {
                            k1104.a("replay:resync",
                                    "expected:" + frame + " got:" + v4.bu);
                        }

                        int newFrame = this.G.b.readInt();
                        int newBv = this.G.b.readInt();
                        float newStepRate = this.G.b.readFloat();
                        float newRateL = this.G.b.readFloat();

                        j1071 payload = new j1071(this.G.f());

                        v4.bX.a(payload, true, true);
                        bp890.k();

                        v4.bu = newFrame;
                        v4.bv = newBv;
                        v4.bU.ao.a = 0L;

                        if (newStepRate < 0.1) {
                            ae1028.a("replay setCurrentStepRate:"
                                    + newStepRate + " is too small", true);
                        }

                        v4.bU.a(newStepRate, "replay");
                        v4.bU.L = newRateL;

                        this.G.c("resync");

                    } else if ("chat".equals(block)) {
                        bs893 cmd = new bs893();
                        cmd.a = this.G.b.readInt();

                        cmd.g = new br892();
                        cmd.g.a = this.G.b.readInt();
                        cmd.g.b = this.G.a();
                        cmd.g.c = this.G.a();

                        this.x = cmd;
                        this.G.c("chat");

                    } else if ("end".equals(block)) {
                        k1104.a("replay:updateGameFrame", "end of replay block found");
                        v4.bP.h.a("", "Replay has ended");

                        if (!v4.bs) {
                            this.s = true;
                            v4.bq = REPLAY_SPEED;
                            k1104.t().bP.j();
                        } else {
                            this.s = false;
                            this.t = false;
                            this.v = false;

                            if (v4.bP.f != null) {
                                v4.bp = v4.bP.f.bZ;
                            }
                        }

                        this.G.c("end");
                        k1104.d("number of replay commands issued:" + this.A);

                        // 对应 smali 中 v0 = false，随后 :goto_3 直接 return
                        return;

                    } else if ("endReplayMetaData".equals(block)) {
                        this.G.c("endReplayMetaData");

                    } else {
                        k1104.a("updateGameFrame", "Unknown command block:" + block);
                        this.G.c(block);
                    }

                } catch (IOException e) {
                    k1104.a("updateGameFrame", "IOException, read of replay?");
                    e.printStackTrace();

                    game.bq = REPLAY_SPEED;

                    if (!this.s && this.t) {
                        game.bP.h.a("", "Replay ended (unexpected)");
                    }

                    this.s = true;
                    return;
                }

                if (!continueAfterRead) {
                    return;
                }

                // endReplayMetaData / unknown block 可能没有设置 this.x，继续读下一条
                if (this.x == null) {
                    continue;
                }
            }

            // 有命令待处理
            if (this.x == null) {
                continue;
            }

            // this.n 为 true 时丢弃当前命令
            if (this.n) {
                this.x = null;
                continue;
            }

            // 调试：输出下一条 replay 命令距离当前帧的信息
            if (bp890.b && this.x != null && this.y != this.x) {
                this.y = this.x;
                k1104.d("replay: upcoming in "
                        + (this.x.a - game.bu)
                        + " command:"
                        + (this.x.e != null));
            }

            // 第一次 resync 且尚未发出命令时，跳过 wait，避免延迟
            if (this.x.b && this.A == 0) {
                k1104.d("updateGameFrame: replay: Skipping wait on first resync without commands to avoid delay");
                this.x = null;
                continue;
            }

            // 命令尚未到执行帧，保留 this.x 并返回
            if (game.bu < this.x.a) {
                return;
            }

            // 普通命令
            if (this.x.e != null) {
                if (game.bu > this.x.a) {
                    k1104.b("updateGameFrame: replay incorrect frameNumber, skipping command:"
                            + game.bu + " vs " + this.x.a);
                    this.x = null;
                    continue;
                }

                if (bp890.d) {
                    p352 commandingPlayer = this.x.e.q;

                    if (commandingPlayer == null) {
                        k1104.d("Precommand Team: commandingPlayer==null");

                        if (this.x.e.i != null) {
                            k1104.d("Precommand Team id:"
                                    + this.x.e.i.l
                                    + " credits:"
                                    + this.x.e.i.p);
                        }
                    } else {
                        k1104.d("Precommand Team id:"
                                + commandingPlayer.l
                                + " credits:"
                                + commandingPlayer.p
                                + " count:"
                                + commandingPlayer.W.b
                                + " max:"
                                + commandingPlayer.W.a);
                    }
                }

                if (this.x.e.s && this.x.e.v != 0) {
                    k1104.a("replay:issueCommand",
                            "systemAction_action:" + this.x.e.v);
                }

                this.x.e.h();

                if (bp890.d) {
                    p352 commandingPlayer = this.x.e.q;

                    if (commandingPlayer != null) {
                        k1104.d("Postcommand credits:"
                                + commandingPlayer.p
                                + " count:"
                                + commandingPlayer.W.b
                                + " max:"
                                + commandingPlayer.W.a);
                    } else if (this.x.e.i != null) {
                        k1104.d("Postcommand Team id:"
                                + this.x.e.i.l
                                + " credits:"
                                + this.x.e.i.p);
                    }
                }

                this.A++;
                this.x = null;
                continue;
            }

            // 聊天消息
            if (this.x.g != null) {
                br892 chat = this.x.g;
                boolean skip;

                if (chat.c == null) {
                    skip = true;
                } else {
                    skip = chat.c.startsWith("-i ");

                    if (chat.c.equals("<All players ready>")) {
                        skip = true;
                    }
                    if (chat.c.equals("--too many desync errors, suppressing output--")) {
                        skip = true;
                    }
                    if (chat.c.startsWith("desync:")) {
                        skip = true;
                    }
                }

                if (!game.bN.replaysShowRecordedChat) {
                    skip = true;
                }

                if (skip) {
                    k1104.a("replay:updateGameFrame",
                            "Skipping message: " + chat.b + ":" + chat.c);
                } else {
                    k1104.a("replay:updateGameFrame",
                            "message: " + chat.b + ":" + chat.c);
                    game.bP.h.a(chat.b, chat.c);
                }

                this.x = null;
                continue;
            }

            // wait 命令：直接清除
            if (this.x.b) {
                this.x = null;
                continue;
            }

            k1104.a("updateGameFrame", "error: lastReadCommand null action");
            this.x = null;
            continue;
        }
    }
    public final boolean g() {
        return this.t && this.v;
    }

    public final boolean h() {
        return this.t && !this.v;
    }
}
