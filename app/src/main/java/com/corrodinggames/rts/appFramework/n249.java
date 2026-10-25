package com.corrodinggames.rts.appFramework;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class n249 implements r253 {
    protected int[] a;
    final GLSurfaceViewShared b;

    abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);

    public n249(GLSurfaceViewShared gLSurfaceViewShared, int[] iArr) {
        super();
        this.b = gLSurfaceViewShared;
        int i = this.b.mEGLContextClientVersion;
        if (i == 2 || i == 3) {
            int[] iArr2 = new int[15];
            System.arraycopy(iArr, 0, iArr2, 0, 12);
            iArr2[12] = 12352;
            iArr2[13] = this.b.mEGLContextClientVersion == 2 ? 4 : 64;
            iArr2[14] = 12344;
            iArr = iArr2;
        }
        this.a = iArr;
    }

    @Override // com.corrodinggames.rts.appFramework.r253
    public final EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, this.a, null, 0, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig failed");
        }
        int i = iArr[0];
        if (i <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i];
        if (!egl10.eglChooseConfig(eGLDisplay, this.a, eGLConfigArr, i, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig#2 failed");
        }
        EGLConfig a = a(egl10, eGLDisplay, eGLConfigArr);
        if (a == null) {
            throw new IllegalArgumentException("No config chosen");
        }
        return a;
    }
}
