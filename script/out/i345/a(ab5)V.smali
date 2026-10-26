.method public final strictfp a(Lcom/corrodinggames/rts/appFramework/ab5;)V
    .locals 2

    .line 5029
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    monitor-enter v1

    .line 5038
    :try_start_0
    invoke-interface {p1}, Lcom/corrodinggames/rts/appFramework/ab5;->onParentStart()V

    .line 5039
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
