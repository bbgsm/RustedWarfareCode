.method private static l()V
    .locals 2

    .line 1984
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 1986
    :try_start_0
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->m()V

    .line 1987
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
