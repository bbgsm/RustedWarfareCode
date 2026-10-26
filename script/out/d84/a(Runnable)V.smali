.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 329
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/corrodinggames/rts/appFramework/d84;->a:Landroid/os/Handler;

    .line 333
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/appFramework/d84;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method
