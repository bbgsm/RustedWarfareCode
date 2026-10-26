private static strictfp void e(float p0) {
    com.corrodinggames.rts.game.b.e329 r17 = com.corrodinggames.rts.game.b.b326.am;
    com.corrodinggames.rts.gameFramework.k1104 r18 = com.corrodinggames.rts.gameFramework.k1104.t();
    com.corrodinggames.rts.game.b.b326 r19 = r18.bI;
    float f10 = com.corrodinggames.rts.game.b.e329.e();
    int r7 = 0;
    int r8 = 0;
    float f6 = f10 / r17.m;
    float f9;
    if (Math.abs(f6 - 1.0f) < 0.01f) {
        f9 = f6;
    } else {
        f6 = 1.0f;
        f9 = 1.0f;
    }
    if ((double) f10 > 0.6) {
        float f6_2 = 0.3f;
        if (com.corrodinggames.rts.gameFramework.k1104.Z()) {
            f6_2 = 0.1f;
        }
        if (f10 - r17.m > f6_2) {
            r7 = 1;
        }
        if (f10 == 1.0f && r17.m != 1.0f) {
            r7 = 1;
        }
    }
    int r6;
    if (f9 != 1.0f) {
        int r6_i = 10;
        float r8_f = 0.03f;
        if (f10 < 0.3f) {
            r6_i = 20;
            r8_f = 0.09f;
        } else if (f10 >= 0.5f && f10 <= 1.3f) {
            r6_i = 7;
        }
        if (!com.corrodinggames.rts.gameFramework.k1104.Z()) {
            r6_i += 10;
        }
        if (Math.abs(r19.ak - f10) > 0.03f) {
            r19.ak = r18.cU;
            r19.al = 0;
        } else {
            r19.al++;
        }
        if (r19.al < 3) {
            r19.aj = 0.0f;
        } else {
            if (Math.abs(f10 - r17.m) > r8_f) {
                r19.aj += 1.0f;
            }
        }
        if (r19.aj > (float) r6_i) {
            r19.aj = 0.0f;
            r6 = 1;
        } else {
            r6 = r7;
        }
    } else {
        r6 = r7;
    }
    int r7_i1 = r18.cr;
    float r7_f1 = (float) r7_i1 + r18.cx + 4.0f;
    int r8_i1 = r17.f;
    int r9_i1 = r17.a;
    int r10_i1 = r17.k;
    r8_i1 += r9_i1 * r10_i1;
    if (r7_f1 > (float) r8_i1) {
        r17.f += r17.k;
        r17.b(1);
    }
    if (r18.cr - 1 < r17.f) {
        r17.f -= r17.k;
        r17.b(-1);
    }
    int r7_i2 = r18.cs;
    float r7_f2 = (float) r7_i2 + r18.cy + 4.0f;
    int r8_i2 = r17.g;
    int r9_i2 = r17.a;
    int r10_i2 = r17.k;
    r8_i2 += r9_i2 * r10_i2;
    if (r7_f2 > (float) r8_i2) {
        r17.g += r17.k;
        r17.a(1);
    }
    if (r18.cs - 1 < r17.g) {
        r17.g -= r17.k;
        r17.a(-1);
    }
    if ((float) r18.cr + r18.cx + 4.0f > (float) (r17.f + r17.a * r17.k)) {
        r6 = 1;
    }
    if (r18.cr - 1 < r17.f) {
        r6 = 1;
    }
    if ((float) r18.cs + r18.cy + 4.0f > (float) (r17.g + r17.a * r17.k)) {
        r6 = 1;
    }
    if (r18.cs - 1 < r17.g) {
        r6 = 1;
    }
    if (r6 != 0) {
        r17.a();
    }
    float f14 = r18.cU / r17.m;
    if (Math.abs(f14 - 1.0f) < 1.0E-4f) {
        f14 = 1.0f;
    }
    float f20 = r18.cC / f14 + 2.0f;
    float f21 = r18.cE / f14 + 2.0f;
    if (f14 != 1.0f) {
        r18.bL.i();
        r18.bL.a(f14, f14);
        r19.ap.set(r18.cH);
        r19.ap.right = (int) ((float) r19.ap.left + (float) r19.ap.width() / f14) + 2;
        r19.ap.bottom = (int) ((float) r19.ap.top + (float) r19.ap.height() / f14) + 2;
        r18.bL.a(r19.ap);
    }
    float f22 = ((float) r17.f - r18.ct) * r17.m;
    float f23 = ((float) r17.g - r18.cu) * r17.m;
    float f24 = (float) ((int) f22);
    float f25 = (float) ((int) f23);
    boolean r15 = false;
    if (com.corrodinggames.rts.gameFramework.k1104.Z() && (double) r18.cU < 0.3) {
        r15 = true;
    }
    r17.e.setAntiAlias(r15);
    r17.e.setFilterBitmap(r15);
    r17.e.setDither(r15);
    int r6_lock = 0;
    Long r7_long = null;
    int r8_flag = 0;
    int r9_count = 0;
    int r16 = 0;
    try {
        while (r16 < r17.a) {
            int r10 = 0;
            while (r10 < r17.a) {
                com.corrodinggames.rts.game.b.f330 tile = r17.d[r16][r10];
                if (tile.l && !r17.n) {
                    tile.m++;
                }
                int r27 = (int) (((float) (r16 * r17.k) * r17.m) + f24);
                int r28 = (int) (((float) (r10 * r17.k) * r17.m) + f25);
                tile.p.set(r27 + 1, r28 + 1, r27 + r17.h - 2, r28 + r17.h - 2);
                if ((float) tile.p.left <= f20 && (float) tile.p.top <= f21) {
                    if ((float) tile.p.right > f20) {
                        tile.p.right = (int) f20;
                    }
                    if ((float) tile.p.bottom > f21) {
                        tile.p.bottom = (int) f21;
                    }
                    int r11 = (int) ((0.0f - r18.ct) * r17.m);
                    int r12 = (int) ((0.0f - r18.cu) * r17.m);
                    int r13 = (int) ((r19.f() - r18.ct) * r17.m);
                    int r29 = (int) ((r19.g() - r18.cu) * r17.m);
                    if (tile.p.left < r11) {
                        tile.p.left = r11;
                    }
                    if (tile.p.top < r12) {
                        tile.p.top = r12;
                    }
                    if (tile.p.right > r13) {
                        tile.p.right = r13;
                    }
                    if (tile.p.bottom > r29) {
                        tile.p.bottom = r29;
                    }
                    if (!tile.p.isEmpty()) {
                        boolean r11_bool = false;
                        boolean r12_bool;
                        if (tile.k) {
                            r11_bool = true;
                            r12_bool = false;
                        } else {
                            r12_bool = true;
                        }
                        if (tile.l) {
                            int fadeThresh = 10;
                            if (r9_count > 3) {
                                fadeThresh = 12;
                            }
                            if (r9_count > 6) {
                                fadeThresh += 2;
                            }
                            if (tile.m > fadeThresh) {
                                r11_bool = false;
                                tile.m = 0;
                                r11_bool = true;
                                r9_count++;
                            }
                        }
                        if (r11_bool) {
                            long now = com.corrodinggames.rts.gameFramework.cf910.a();
                            if (r7_long == null) {
                                r7_long = Long.valueOf(now);
                                r8_flag = 0;
                            } else {
                                int timeThresh = 200;
                                if (r17.n) {
                                    timeThresh = 30;
                                }
                                double elapsed = com.corrodinggames.rts.gameFramework.cf910.a(r7_long.longValue(), now);
                                if (elapsed > (double) timeThresh) {
                                    r8_flag = 1;
                                    r17.n = true;
                                }
                            }
                            if (r8_flag != 0 && tile.k && !tile.n) {
                                com.corrodinggames.rts.game.b.f330 tile2 = r17.d[r16][r10];
                                com.corrodinggames.rts.gameFramework.k1104 game2 = com.corrodinggames.rts.gameFramework.k1104.t();
                                com.corrodinggames.rts.game.b.b326 gs2 = game2.bI;
                                tile2.n = true;
                                r17.c.b(-16777216);
                                com.corrodinggames.rts.gameFramework.f.q996 q = game2.bT;
                                if (q.J != null) {
                                    android.graphics.Rect rect = new android.graphics.Rect();
                                    android.graphics.RectF rectF = new android.graphics.RectF();
                                    float left = ((float) (r17.f + r16 * r17.k) / (float) (gs2.n * gs2.D));
                                    float top = ((float) (r17.g + r10 * r17.k) / (float) (gs2.o * gs2.E));
                                    float right = ((float) (r17.f + (r16 + 1) * r17.k) / (float) (gs2.n * gs2.D));
                                    float bottom = ((float) (r17.g + (r10 + 1) * r17.k) / (float) (gs2.o * gs2.E));
                                    rect.set((int) (left * (float) q.J.p), (int) (top * (float) q.J.q), (int) (right * (float) q.J.p), (int) (bottom * (float) q.J.q));
                                    rectF.set(0.0f, 0.0f, (float) r17.h, (float) r17.h);
                                    r17.c.a(q.J, rect, rectF, r17.e);
                                }
                                r17.c.n();
                                if (com.corrodinggames.rts.gameFramework.k1104.aT) {
                                    tile2.a.a(android.graphics.PorterDuff.Mode.CLEAR);
                                }
                                tile2.a.b(r17.b, 0.0f, 0.0f, null);
                                tile2.d.j();
                            }
                            if (r8_flag == 0) {
                                if (com.corrodinggames.rts.game.b.b326.J) {
                                    if (tile.e != null && tile.e.p != tile.d.p) {
                                        com.corrodinggames.rts.gameFramework.k1104.d("wrong sized fadeOutBitmap width:" + tile.e.p + " vs " + tile.d.p);
                                        tile.e.i();
                                        tile.e = null;
                                    }
                                    if (tile.e == null) {
                                        try {
                                            tile.a();
                                        } catch (OutOfMemoryError e) {
                                            e.printStackTrace();
                                            com.corrodinggames.rts.gameFramework.k1104.a(com.corrodinggames.rts.gameFramework.ae798.b, e);
                                            r17.c();
                                            com.corrodinggames.rts.gameFramework.k1104.b("Not enough free memory to keep smooth fog fading");
                                            System.gc();
                                        }
                                    }
                                }
                                if (com.corrodinggames.rts.game.b.b326.J) {
                                    com.corrodinggames.rts.gameFramework.m.e1216 tmp = tile.d;
                                    tile.d = tile.e;
                                    tile.e = tmp;
                                    com.corrodinggames.rts.gameFramework.m.fi1252 tmpCanvas = tile.a;
                                    tile.a = tile.f;
                                    tile.f = tmpCanvas;
                                    if (r12_bool) {
                                        tile.g = 1.0f;
                                    } else {
                                        tile.g = 0.0f;
                                    }
                                    if (com.corrodinggames.rts.gameFramework.k1104.X() && r6_lock == 0) {
                                        if (!com.corrodinggames.rts.game.b.b326.f) {
                                            com.corrodinggames.rts.game.b.b326.e.lock();
                                        }
                                        r6_lock = 1;
                                    }
                                    r18.bL.g();
                                    r17.a(r16, r10, r17.c);
                                    r18.bL.h();
                                    if (com.corrodinggames.rts.game.b.b326.a) {
                                        com.corrodinggames.rts.gameFramework.cf910.a("re-drawTile", now);
                                    }
                                }
                                r8_flag = 1;
                            }
                        }
                        tile.o.set(tile.p);
                        tile.o.offset(-r27, -r28);
                        tile.q.set(tile.p);
                        tile.q.offset(-f24, -f25);
                        tile.q.offset(f22, f23);
                        if (tile.g > 0.0f) {
                            tile.h.setAntiAlias(r15);
                            tile.h.setAlpha((int) ((1.0f - tile.g) * 255.0f));
                            r18.bL.a(tile.e, tile.o, tile.q, r17.e);
                            if ((double) tile.g < 0.98) {
                                r18.bL.a(tile.d, tile.o, tile.q, tile.h);
                            }
                            tile.g -= 0.1f * p0;
                        } else {
                            r18.bL.a(tile.d, tile.o, tile.q, r17.e);
                        }
                    }
                }
                r10++;
            }
            r16++;
        }
    } catch (Throwable e) {
        if (r6_lock != 0) {
            com.corrodinggames.rts.game.b.b326.i();
        }
        throw e;
    } finally {
        if (r6_lock != 0) {
            com.corrodinggames.rts.game.b.b326.i();
        }
    }
    if (f14 != 1.0f) {
        r18.bL.j();
    }
    if (r8_flag == 0) {
        r17.n = false;
    }
}
