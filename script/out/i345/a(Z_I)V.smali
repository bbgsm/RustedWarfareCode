.method public final strictfp a(ZI)V
    .locals 1

    .line 1079
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->B()V

    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/corrodinggames/rts/game/i345;->a(ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    monitor-exit p0

    return-void

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
