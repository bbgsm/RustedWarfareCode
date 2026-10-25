package com.corrodinggames.rts.gameFramework;

import android.os.Process;

public final strictfp class ak804 extends Thread {
    static int a = 0;

    public boolean b = true;
    public long c;

    public ak804() {
        super("GameThread" + a);
        a++;
    }

    public final synchronized void a(boolean running) {
        this.b = running;
    }

    @Override
    public final void run() {
        k1104.W();

        if (!k1104.aR) {
            Process.setThreadPriority(-4);
        }

        this.c = System.currentTimeMillis();
        k1104 game = k1104.t();

        while (this.b) {
            long frameStart = System.nanoTime();

            long previousTime = this.c;
            this.c = System.currentTimeMillis();

            float deltaMillis = (float) (this.c - previousTime);
            int deltaMillisInt = (int) (this.c - previousTime);

            game.a(0.06f * deltaMillis, deltaMillisInt);

            long targetFrameNanos;

            if (game.bN.batterySaving) {
                targetFrameNanos = 0x1ec3810L;       // 32258064 ns
            } else if (game.bN.highRefreshRate) {
                targetFrameNanos = 0x32dcd5L;        // 3333333 ns
            } else {
                targetFrameNanos = 0xfa24e2L;        // 16393442 ns
            }

            long workNanos = System.nanoTime() - frameStart;
            long remainingNanos = Math.round(
                    (float) (targetFrameNanos - workNanos)
            );

            if (remainingNanos > 0) {
                long waitStart = System.nanoTime();

                while (true) {
                    long waitedNanos = System.nanoTime() - waitStart;

                    if (waitedNanos > remainingNanos || waitedNanos < 0) {
                        break;
                    }

                    long sleepMillis = (long) (
                            (double) (remainingNanos - waitedNanos) / 1000000.0
                    );

                    if (sleepMillis <= 1) {
                        break;
                    }

                    try {
                        Thread.sleep(sleepMillis);
                    } catch (Exception ignored) {
                        // 原代码忽略异常并继续循环
                    }
                }
            }
        }
    }
}
