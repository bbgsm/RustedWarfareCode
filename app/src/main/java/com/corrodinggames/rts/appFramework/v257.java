package com.corrodinggames.rts.appFramework;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v257 extends Thread {
    boolean a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean m;
    private boolean p;
    private boolean q;
    private u256 u;
    private WeakReference v;
    ArrayList n = new ArrayList();
    boolean o = true;
    private Runnable t = null;
    int j = 0;
    int k = 0;
    boolean l = true;
    private int r = 1;
    private boolean s = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(v257 v257Var) {
        v257Var.a = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v257(WeakReference weakReference) {
        this.v = weakReference;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        setName("GLThread " + getId());
        try {
            f();
        } catch (Exception e) {
        } finally {
            GLSurfaceViewShared.sGLThreadManager.a(this);
        }
    }

    private void d() {
        if (this.h) {
            this.h = false;
            this.u.a();
        }
    }

    private void e() {
        s254 s254Var;
        if (this.g) {
            u256 u256Var = this.u;
            if (u256Var.f != null) {
                GLSurfaceViewShared gLSurfaceViewShared = (GLSurfaceViewShared) u256Var.a.get();
                if (gLSurfaceViewShared != null) {
                    s254Var = gLSurfaceViewShared.mEGLContextFactory;
                    s254Var.a(u256Var.b, u256Var.c, u256Var.f);
                }
                u256Var.f = null;
            }
            if (u256Var.c != null) {
                u256Var.b.eglTerminate(u256Var.c);
                u256Var.c = null;
            }
            this.g = false;
            GLSurfaceViewShared.sGLThreadManager.notifyAll();
        }
    }

    // 已从 smali 反编译：本方法即 Android GLSurfaceView 的 GLThread.guardedRun()，
    // EGL 渲染线程主循环（混淆后字段名保留为 a/b/c...）。
    // 字段对照：u=mEglHelper, v=mViewRef, n=mEventQueue, p=mExitRequested, a=mExited,
    //          g=mHaveEglContext, h=mHaveEglSurface, q=mRecreateContext, c=已确认暂停,
    //          b=请求暂停, d=有窗口表面, l=mRequestRender, o=需创建EGL表面,
    //          j/k=宽高, r=渲染模式, t=待执行的Runnable(mGlFinisher类)。
    private void f() throws InterruptedException {
        this.u = new u256(this.v);   // mEglHelper = new EglHelper(mViewRef)
        this.g = false;              // mHaveEglContext = false
        this.h = false;              // mHaveEglSurface = false
        this.s = false;              // mGoodTime = false
        boolean createEglContext = false;
        boolean createEglSurface = false;
        boolean createGlInterface = false;
        boolean lostEglContext = false;
        boolean lostEglSurface = false;
        boolean sizeChanged = false;
        boolean wantRenderNotification = false;
        boolean doRenderNotification = false;
        boolean askedToReleaseEglContext = false;
        int w = 0;
        int h = 0;
        Runnable event = null;
        Runnable finishDrawingRunnable = null;
        GL10 gl = null;
        boolean wantSurfaceCreated = false;

        while (true) {
            synchronized (GLSurfaceViewShared.sGLThreadManager) {
                while (true) {
                    if (this.p) {                          // mExitRequested
                        synchronized (GLSurfaceViewShared.sGLThreadManager) {
                            d();                           // 释放 EGL 表面
                            e();                           // 释放 EGL 上下文
                        }
                        return;
                    }

                    if (!this.n.isEmpty()) {               // mEventQueue
                        event = (Runnable) this.n.remove(0);
                        break;
                    }

                    if (this.c != this.b) {                // 暂停请求变更
                        this.c = this.b;
                        GLSurfaceViewShared.sGLThreadManager.notifyAll();
                    }
                    boolean paused = this.b;

                    if (this.q) {                          // mRecreateContext
                        d();
                        e();
                        this.q = false;
                        createEglContext = true;
                        createEglSurface = true;
                        createGlInterface = true;
                        sizeChanged = true;
                    }

                    if (lostEglContext || (paused && this.h)) {   // 需释放 EGL 表面
                        d();
                        lostEglContext = false;
                    }

                    if (paused && this.g) {                // 暂停时释放 EGL 上下文
                        GLSurfaceViewShared view = (GLSurfaceViewShared) this.v.get();
                        if (view == null || !view.getPreserveEGLContextOnPause()) {
                            e();
                        }
                    }

                    if (!this.d && !this.f) {              // 无窗口表面且未在处理
                        if (this.h) {
                            d();
                        }
                        this.f = true;
                        this.e = false;
                        GLSurfaceViewShared.sGLThreadManager.notifyAll();
                    }
                    if (this.d && this.f) {
                        this.f = false;
                        GLSurfaceViewShared.sGLThreadManager.notifyAll();
                    }

                    if (doRenderNotification) {            // 需要通知绘制结束
                        this.s = false;
                        this.m = true;
                        GLSurfaceViewShared.sGLThreadManager.notifyAll();
                        doRenderNotification = false;
                    }

                    if (this.t != null) {                  // 取出待执行的 finishDrawing
                        finishDrawingRunnable = this.t;
                        this.t = null;
                    }

                    if (a()) {                             // readyToDraw()
                        if (!this.g) {                     // !mHaveEglContext
                            if (!paused && !askedToReleaseEglContext) {
                                createEglContext = true;
                            }
                        }
                        if (!this.h && !paused && !askedToReleaseEglContext) {
                            createEglSurface = true;       // 需要创建 EGL 表面
                        }
                        if (this.h && this.o) {            // mCreateEglSurface
                            w = this.j;
                            h = this.k;
                            sizeChanged = true;
                            this.o = false;
                            createEglSurface = true;
                        }
                        if (this.h) {
                            break;
                        }
                    } else if (wantRenderNotification) {
                        createEglSurface = false;
                        wantRenderNotification = false;
                    }

                    if (askedToReleaseEglContext) {
                        askedToReleaseEglContext = false;
                    }

                    try {
                        GLSurfaceViewShared.sGLThreadManager.wait();
                    } catch (InterruptedException ex) {
                        GLSurfaceViewShared.sGLThreadManager.notifyAll();
                        throw ex;
                    }
                }
            }

            // ------- 以下代码在锁外执行 -------

            if (event != null) {                           // 执行队列事件
                event.run();
                event = null;
                continue;
            }

            if (createEglContext) {                        // 初始化 EGL 上下文与配置
                u256 egl = this.u;
                try {
                    egl.b = (EGL10) EGLContext.getEGL();
                    egl.c = egl.b.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                    if (egl.c == EGL10.EGL_NO_DISPLAY) {
                        throw new RuntimeException("eglGetDisplay failed");
                    }
                    int[] version = new int[2];
                    if (!egl.b.eglInitialize(egl.c, version)) {
                        throw new RuntimeException("eglInitialize failed");
                    }
                    GLSurfaceViewShared view = (GLSurfaceViewShared) egl.a.get();
                    if (view == null) {
                        egl.e = null;
                        egl.f = null;
                    } else {
                        egl.e = view.mEGLConfigChooser.a(egl.b, egl.c);
                        egl.f = view.mEGLContextFactory.a(egl.b, egl.c, egl.e);
                    }
                    if (egl.f == null || egl.f == EGL10.EGL_NO_CONTEXT) {
                        egl.f = null;
                        u256.a("createContext", egl.b.eglGetError());
                    }
                    egl.d = null;
                } catch (RuntimeException ex) {
                    GLSurfaceViewShared.sGLThreadManager.notifyAll();
                    throw ex;
                }
                this.g = true;                             // mHaveEglContext = true
                createEglContext = false;
                GLSurfaceViewShared.sGLThreadManager.notifyAll();
            }

            if (createEglSurface) {                        // 创建 EGL 窗口表面
                createEglSurface = false;
                u256 egl = this.u;
                if (egl.b == null) {
                    throw new RuntimeException("egl not initialized");
                }
                if (egl.c == null) {
                    throw new RuntimeException("eglDisplay not initialized");
                }
                if (egl.e == null) {
                    throw new RuntimeException("mEglConfig not initialized");
                }
                egl.a();                                 // 先释放旧的窗口表面
                GLSurfaceViewShared view = (GLSurfaceViewShared) egl.a.get();
                if (view != null) {
                    egl.d = view.mEGLWindowSurfaceFactory.a(egl.b, egl.c, egl.e, view.getHolder());
                } else {
                    egl.d = null;
                }
                boolean surfaceOk = egl.d != null && egl.d != EGL10.EGL_NO_SURFACE;
                if (surfaceOk) {
                    surfaceOk = egl.b.eglMakeCurrent(egl.c, egl.d, egl.d, egl.f);
                    if (!surfaceOk) {
                        u256.a("EGLHelper", "eglMakeCurrent", egl.b.eglGetError());
                        surfaceOk = false;
                    }
                }
                if (surfaceOk) {
                    this.h = true;                       // mHaveEglSurface = true
                    this.s = true;                       // mGoodTime = true
                    wantRenderNotification = true;
                    createGlInterface = true;
                    wantSurfaceCreated = true;
                } else {
                    doRenderNotification = true;
                    this.i = true;
                    this.e = true;
                    GLSurfaceViewShared.sGLThreadManager.notifyAll();
                    continue;
                }
            }

            if (createGlInterface) {                       // 获取 GL 接口
                gl = (GL10) this.u.f.getGL();
                GLSurfaceViewShared view = (GLSurfaceViewShared) this.v.get();
                if (view != null) {
                    x259 wrapper = view.mGLWrapper;
                    if (wrapper != null) {
                        gl = (GL10) wrapper.a();
                    }
                    // getDebugFlags() 分支在混淆字节码中并不改变 gl（仅创建被丢弃的 y260）
                    view.getDebugFlags();
                }
                createGlInterface = false;
            }

            if (this.h) {                                  // 绘制一帧
                GLSurfaceViewShared view = (GLSurfaceViewShared) this.v.get();
                if (view != null && view.mRenderer != null) {
                    if (wantSurfaceCreated) {
                        view.mRenderer.onSurfaceCreated(gl, this.u.e);
                        wantSurfaceCreated = false;
                    }
                    if (sizeChanged) {
                        view.mRenderer.onSurfaceChanged(gl, w, h);
                        sizeChanged = false;
                    }
                    view.mRenderer.onDrawFrame(gl);
                    if (finishDrawingRunnable != null) {
                        finishDrawingRunnable.run();
                        finishDrawingRunnable = null;
                    }
                }

                boolean swapOk = this.u.b.eglSwapBuffers(this.u.c, this.u.d);
                int error = EGL10.EGL_SUCCESS;
                if (!swapOk) {
                    error = this.u.b.eglGetError();
                }
                switch (error) {
                    case EGL10.EGL_SUCCESS:
                        break;
                    case 0x300e: /* EGL_CONTEXT_LOST */
                        lostEglContext = true;
                        this.g = false;
                        this.h = false;
                        break;
                    default:
                        u256.a("GLThread", "eglSwapBuffers", error);
                        synchronized (GLSurfaceViewShared.sGLThreadManager) {
                            this.e = true;
                            GLSurfaceViewShared.sGLThreadManager.notifyAll();
                        }
                        lostEglSurface = true;
                        break;
                }
                if (lostEglSurface) {
                    this.h = false;
                    lostEglSurface = false;
                    createEglSurface = true;
                    wantRenderNotification = true;
                }
                continue;
            }

            this.i = false;
            this.m = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return !this.c && this.d && !this.e && this.j > 0 && this.k > 0 && (this.l || this.r == 1);
    }

    public final void a(int i) {
        if (i >= 0 && i <= 1) {
            synchronized (GLSurfaceViewShared.sGLThreadManager) {
                this.r = i;
                GLSurfaceViewShared.sGLThreadManager.notifyAll();
            }
            return;
        }
        throw new IllegalArgumentException("renderMode");
    }

    public final int b() {
        int i;
        synchronized (GLSurfaceViewShared.sGLThreadManager) {
            i = this.r;
        }
        return i;
    }

    public final void c() {
        synchronized (GLSurfaceViewShared.sGLThreadManager) {
            this.p = true;
            GLSurfaceViewShared.sGLThreadManager.notifyAll();
            while (!this.a) {
                try {
                    GLSurfaceViewShared.sGLThreadManager.wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
