.method private strictfp ap()V
    .locals 1

    .line 5014
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ab:Z

    .line 5015
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 5017
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5020
    :cond_0
    monitor-exit p0

    return-void

    .line 5014
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
