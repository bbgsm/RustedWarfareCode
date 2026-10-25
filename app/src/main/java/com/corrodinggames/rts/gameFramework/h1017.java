package com.corrodinggames.rts.gameFramework;

import com.corrodinggames.rts.game.b.b326;
import com.corrodinggames.rts.gameFramework.j.ae1028;
import com.corrodinggames.rts.gameFramework.j.m1074;
import java.lang.Thread;

/* loaded from: classes.dex */
public final class h1017 implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1017(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = uncaughtExceptionHandler;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b9 A[Catch: Throwable -> 0x00e6, TryCatch #5 {all -> 0x00fd, blocks: (B:6:0x000f, B:8:0x001a, B:10:0x001e, B:53:0x00d1, B:25:0x0063, B:27:0x006e, B:29:0x0072, B:30:0x0074, B:32:0x0078, B:33:0x007e, B:35:0x0083, B:36:0x0097, B:69:0x0111, B:66:0x0100, B:67:0x0108, B:5:0x0004, B:39:0x009f, B:41:0x00a3, B:43:0x00a9, B:44:0x00b5, B:46:0x00b9, B:48:0x00bd, B:74:0x0124, B:49:0x00cc, B:57:0x00dc), top: B:82:0x0004 }] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void uncaughtException(Thread thread, Throwable throwable) {
        synchronized (this) {
            k1104 game = null;
            try {
                try {
                    k1104.dS = null;
                    k1104.dT = null;
                    k1104.dR = null;
                    System.gc();

                    k1104.d("uncaughtException start");
                    game = k1104.t();

                    if (game != null && throwable instanceof OutOfMemoryError) {
                        k1104.d("Freeing memory");
                        try {
                            b326.am = null;
                            if (game.bI != null) {
                                game.bI = null;
                            }
                            if (game.bK != null) {
                                ax817 bK = game.bK;
                                if (bK.B) {
                                    bK.A.d();
                                    bK.A.e();
                                }
                                if (bK.k != null) {
                                    bK.k.d();
                                    bK.k.e();
                                }
                                bK.k = null;
                                bK.m = null;
                                bK.l = false;
                                game.bK = null;
                            }
                            System.gc();
                            k1104.d("uncaughtException: Memory freed");
                        } catch (Throwable t) {
                            k1104.d("exception freeing memory");
                            t.printStackTrace();
                        }
                    }

                    k1104.a("gameEngine:uncaughtExceptionHandler", throwable);
                    String crashMsg = k1104.a(throwable);

                    boolean sendReport;
                    if (game != null) {
                        SettingsEngine settings = game.bN;
                        if (settings != null) {
                            sendReport = settings.sendReports;
                        } else {
                            k1104.d("CustomExceptionHandler: no settings");
                            sendReport = false;
                        }
                    } else {
                        k1104.d("CustomExceptionHandler: no game");
                        sendReport = false;
                    }

                    boolean doReport;
                    if (k1104.dQ) {
                        k1104.d("CustomExceptionHandler: a crash was already sent");
                        doReport = false;
                    } else {
                        doReport = sendReport;
                    }
                    k1104.dQ = true;

                    if (doReport) {
                        try {
                            k1104.d("Starting errorReport");
                            m1074.a("uncaughtException", crashMsg);
                            k1104.d("waiting");
                            Thread.sleep(800L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }

                    k1104.d("fatal", crashMsg);
                } catch (Exception e) {
                    k1104.d("exception sending crash");
                    e.printStackTrace();
                }

                if (game != null) {
                    ae1028 bU = game.bU;
                    if (bU != null && bU.C) {
                        k1104.d("Sending disconnect");
                        game.bU.c("Game crash");
                    }
                }

                if (!k1104.ay) {
                    if (this.a != null) {
                        k1104.d("CustomExceptionHandler: sending to: defaultUEH.uncaughtException");
                        this.a.uncaughtException(thread, throwable);
                        k1104.d("CustomExceptionHandler: back from: defaultUEH.uncaughtException");
                    } else {
                        k1104.d("CustomExceptionHandler: defaultUEH==null");
                        System.exit(2);
                    }
                }

                k1104.au = throwable;
            } catch (Throwable t) {
                k1104.d("Exception in uncaughtException");
                t.printStackTrace();
                k1104.d("Crash was not handled, exiting");
                Runtime.getRuntime().halt(1);
            }
        }
    }
}
