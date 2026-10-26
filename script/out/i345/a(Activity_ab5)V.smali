.method public final strictfp a(Landroid/app/Activity;Lcom/corrodinggames/rts/appFramework/ab5;)V
    .locals 2

    .line 5047
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    monitor-enter v1

    .line 5049
    :try_start_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->am:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 5051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->d(Z)V

    .line 5054
    :cond_0
    invoke-interface {p2}, Lcom/corrodinggames/rts/appFramework/ab5;->onParentStop()V

    .line 5055
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
