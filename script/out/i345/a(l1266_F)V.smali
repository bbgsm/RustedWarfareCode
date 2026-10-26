.method private strictfp a(Lcom/corrodinggames/rts/gameFramework/m/l1266;F)V
    .locals 2

    .line 3389
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->aj:Ljava/lang/Object;

    monitor-enter v1

    .line 3391
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/corrodinggames/rts/game/i345;->b(Lcom/corrodinggames/rts/gameFramework/m/l1266;F)V

    .line 3392
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
