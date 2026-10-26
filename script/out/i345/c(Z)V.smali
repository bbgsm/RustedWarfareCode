.method private strictfp c(Z)V
    .locals 3

    .line 2085
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->ai:Ljava/lang/Object;

    monitor-enter v1

    .line 2096
    :try_start_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v0}, Lcom/corrodinggames/rts/appFramework/ab5;->flushCanvas()V

    .line 2101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bn:Z

    .line 2103
    if-nez p1, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/bp890;->e()V

    .line 2108
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->b()V

    .line 2110
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->g()V

    .line 2116
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2118
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/ax817;->d()V

    .line 2121
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(Z)V

    .line 2124
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    if-eqz v0, :cond_3

    .line 2126
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/b326;->e()V

    .line 2127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 2130
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    if-eqz v0, :cond_4

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    .line 2136
    :cond_4
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    if-eqz v0, :cond_5

    .line 2138
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    .line 50817
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/corrodinggames/rts/game/units/f/c738;->e:[[Lcom/corrodinggames/rts/game/units/f/a736;

    .line 2142
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ae:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->af:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2146
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    .line 2149
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->N()V

    .line 2150
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/g/g1013;->a:Lcom/corrodinggames/rts/gameFramework/g/g1013;

    sget v2, Lcom/corrodinggames/rts/gameFramework/g/d1010;->a:I

    invoke-virtual {p0, v0, v2}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/gameFramework/g/g1013;I)V

    .line 2151
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
