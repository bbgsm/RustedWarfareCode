package com.corrodinggames.rts.gameFramework.b;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.corrodinggames.rts.gameFramework.k1104;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ao844 extends c850 {
    private static HashMap m = new HashMap();
    private static ap845 p = new ap845((byte) 0);
    private static int v;
    protected Bitmap n;
    int o;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int w;

    protected abstract Bitmap j();

    protected ao844() {
        this((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ao844(byte b) {
        this.q = true;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.o = 9729;
    }

    private static Bitmap a(boolean z, Bitmap.Config config, int i) {
        ap845 ap845Var = p;
        ap845Var.a = z;
        ap845Var.b = config;
        ap845Var.c = i;
        Bitmap bitmap = (Bitmap) m.get(ap845Var);
        if (bitmap == null) {
            if (z) {
                bitmap = Bitmap.createBitmap(1, i, config);
            } else {
                bitmap = Bitmap.createBitmap(i, 1, config);
            }
            m.put(ap845Var.clone(), bitmap);
        }
        return bitmap;
    }

    private Bitmap l() {
        if (this.n == null) {
            this.n = j();
            int width = this.n.getWidth();
            int i = this.w;
            int height = this.n.getHeight();
            int i2 = this.w;
            if (this.c == -1) {
                a(width + (i * 2), (i2 * 2) + height);
            }
        }
        return this.n;
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final int b() {
        if (this.c == -1) {
            l();
        }
        return this.c;
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final int c() {
        if (this.c == -1) {
            l();
        }
        return this.d;
    }

    public final void k() {
        if (this.n != null) {
            this.n = null;
        }
        this.q = false;
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final void a(int i) {
        if (this.o != i) {
            if (this.q) {
                GLES20.glTexParameterf(3553, 10241, i);
                GLES20.glTexParameterf(3553, 10240, i);
            }
            this.o = i;
        }
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final int g() {
        return this.o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
        if (r0 <= 100) goto L14;
     */
    /* JADX WARN: Finally extract failed */
    @Override // com.corrodinggames.rts.gameFramework.b.c850
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(p863 canvas) {
        if (!h()) {
            if (this.u && ++v > 100) {
                // Too many failed upload attempts; skip uploading this frame.
            } else {
                Bitmap bitmap = l();
                if (bitmap == null) {
                    this.b = -1;
                    throw new RuntimeException("Texture load fail, no bitmap");
                }
                try {
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    int d = d();
                    int e = e();
                    this.a = canvas.a().a();
                    this.q = true;
                    canvas.d(this);
                    if (width == d && height == e) {
                        canvas.a(this, bitmap);
                        t867.j();
                    } else {
                        int internalFormat = GLUtils.getInternalFormat(bitmap);
                        int type;
                        try {
                            type = GLUtils.getType(bitmap);
                        } catch (IllegalArgumentException ex) {
                            k1104.a("uploadToCanvas: GLUtils.getType failed, defaulting to GL_UNSIGNED_BYTE", ex);
                            type = 0x1401;
                        }
                        Bitmap.Config config = bitmap.getConfig();
                        canvas.a(this, internalFormat, type, internalFormat);
                        t867.j();
                        canvas.a(this, this.w, this.w, bitmap, internalFormat, type);
                        t867.j();
                        if (this.w > 0) {
                            bitmap = a(true, config, e);
                            canvas.a(this, 0, 0, bitmap, internalFormat, type);
                            bitmap = a(false, config, d);
                            canvas.a(this, 0, 0, bitmap, internalFormat, type);
                        }
                        if (this.w > 0) {
                            if (this.w + width < d) {
                                bitmap = a(true, config, e);
                                canvas.a(this, this.w + width, 0, bitmap, internalFormat, type);
                            }
                            if (this.w + height < e) {
                                bitmap = a(false, config, d);
                                canvas.a(this, 0, this.w + height, bitmap, internalFormat, type);
                            }
                        }
                    }
                } catch (Throwable t) {
                    this.n = null;
                    throw t;
                }
                this.n = null;
                a(canvas);
                this.b = 1;
                this.q = true;
            }
        } else if (!this.q) {
            Bitmap bitmap = l();
            int internalFormat = GLUtils.getInternalFormat(bitmap);
            int type;
            try {
                type = GLUtils.getType(bitmap);
            } catch (IllegalArgumentException ex) {
                k1104.a("updateContent: GLUtils.getType failed, defaulting to GL_UNSIGNED_BYTE", ex);
                type = 0x1401;
            }
            canvas.a(this, this.w, this.w, bitmap, internalFormat, type);
            this.n = null;
            this.q = true;
        }
        this.j++;
        return h() && this.q;
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final void b(p863 p863Var) {
        this.a = p863Var.a().a();
        p863Var.a(this, 6408, 5121, 6408);
        p863Var.d(this);
        this.b = 1;
        a(p863Var);
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final int f() {
        return 3553;
    }

    @Override // com.corrodinggames.rts.gameFramework.b.c850
    public final void i() {
        super.i();
        if (this.n == null) {
            return;
        }
        this.n = null;
    }
}
