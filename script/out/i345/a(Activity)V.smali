.method public final strictfp a(Landroid/app/Activity;)V
    .locals 2

    .line 5080
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5084
    :try_start_1
    iput-object p1, p0, Lcom/corrodinggames/rts/game/i345;->am:Landroid/content/Context;

    .line 5086
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->d(Z)V

    .line 5088
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5080
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
