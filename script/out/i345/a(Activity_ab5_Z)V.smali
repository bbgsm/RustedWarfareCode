.method public final strictfp a(Landroid/app/Activity;Lcom/corrodinggames/rts/appFramework/ab5;Z)V
    .locals 3

    .line 5094
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ac:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5096
    :try_start_1
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aR:Z

    if-nez v0, :cond_0

    .line 5098
    invoke-interface {p2}, Lcom/corrodinggames/rts/appFramework/ab5;->onParentResume()V

    .line 5101
    :cond_0
    iput-object p1, p0, Lcom/corrodinggames/rts/game/i345;->am:Landroid/content/Context;

    .line 5102
    iput-boolean p3, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    .line 5104
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    .line 5109
    if-eqz p3, :cond_1

    .line 5111
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bF:Z

    if-nez v0, :cond_1

    .line 5114
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ax:Z

    if-nez v0, :cond_1

    .line 5117
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v0, :cond_1

    .line 5122
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->q()V

    .line 5132
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ao:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 5134
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    if-nez v2, :cond_2

    .line 5136
    iput-object p2, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 5139
    :cond_2
    iput-object p2, p0, Lcom/corrodinggames/rts/game/i345;->ao:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 5142
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    .line 5144
    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->onReplacedByAnotherView()V

    .line 5148
    :cond_3
    if-eqz p2, :cond_4

    .line 5150
    invoke-interface {p2}, Lcom/corrodinggames/rts/appFramework/ab5;->updateResolution()V

    .line 5153
    :cond_4
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    if-eqz v0, :cond_5

    .line 5155
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->b()V

    .line 5158
    :cond_5
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->ap()V

    .line 5159
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->A()V

    .line 5161
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

    .line 5094
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
