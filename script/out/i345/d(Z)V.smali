.method private strictfp d(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 4983
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    monitor-enter v1

    .line 4996
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/i345;->ab:Z

    .line 4997
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 4999
    if-eqz p1, :cond_1

    .line 5005
    :goto_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;

    .line 5006
    new-instance v2, Lcom/corrodinggames/rts/game/j346;

    invoke-direct {v2, p0}, Lcom/corrodinggames/rts/game/j346;-><init>(Lcom/corrodinggames/rts/game/i345;)V

    .line 5007
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->aa:Ljava/util/Timer;

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5009
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/16 v0, 0x2bc

    goto :goto_0
.end method
