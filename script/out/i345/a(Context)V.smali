.method public final strictfp a(Landroid/content/Context;)V
    .locals 9

    const/4 v1, 0x1

    .line 417
    monitor-enter p0

    :try_start_0
    const-string v0, "RustedWarfare"

    const-string v2, "--- ----------------- ----"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v0, "RustedWarfare"

    const-string v2, "--- GameEngine:init() ----"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "RustedWarfare"

    const-string v2, "--- ----------------- ----"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bf:Z

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "RustedWarfare"

    const-string v1, "GameEngine init has already been called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :goto_0
    monitor-exit p0

    return-void

    .line 427
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Version:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5882
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->n()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6247
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 6546
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bb:Z

    .line 430
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/corrodinggames/rts/game/i345;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inSpace but class is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 441
    const-string v0, "Asset Index"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/m1348;

    invoke-direct {v0, p1}, Lcom/corrodinggames/rts/gameFramework/utility/m1348;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bH:Lcom/corrodinggames/rts/gameFramework/utility/m1348;

    .line 447
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v2

    .line 450
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/cf910;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/gameFramework/cf910;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;)V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ca:Lcom/corrodinggames/rts/gameFramework/cf910;

    .line 451
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->C:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 456
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aR:Z

    if-eqz v0, :cond_1c

    .line 458
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    .line 475
    :cond_2
    :goto_1
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->d:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "densityScaleRaw*densityScaleMultiplier: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10247
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->aq:Z

    .line 507
    :cond_3
    new-instance v0, Lcom/corrodinggames/rts/game/b338;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/b338;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->D:Lcom/corrodinggames/rts/game/a324;

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bl:Z

    .line 510
    const-string v0, "InputController"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 512
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/an807;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/an807;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bQ:Lcom/corrodinggames/rts/gameFramework/an807;

    .line 513
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bQ:Lcom/corrodinggames/rts/gameFramework/an807;

    .line 11351
    const-string v4, "shoot"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->c:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11352
    const-string v4, "move up"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->d:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11353
    const-string v4, "move down"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->e:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11354
    const-string v4, "move left"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->f:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11355
    const-string v4, "move right"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->g:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11356
    const-string v4, "aim up"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->h:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11357
    const-string v4, "aim down"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->i:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11358
    const-string v4, "aim left"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->j:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11359
    const-string v4, "aim right"

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/an807;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/ao808;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->k:Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11363
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->c:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "enter"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11364
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->c:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "space"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11365
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->d:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "w"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11366
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->e:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "s"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11367
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->f:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "a"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11368
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->g:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "d"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11369
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->h:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "UP"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11370
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->i:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11371
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->j:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "LEFT"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11372
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->k:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const-string v6, "RIGHT"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(ILjava/lang/String;I)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11374
    const-string v4, "getControllerCount:0"

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 11378
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->d:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11379
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->e:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11380
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->f:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11381
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->g:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11383
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->h:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11384
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->i:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11385
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->j:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11386
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/an807;->k:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 11388
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/an807;->c:Lcom/corrodinggames/rts/gameFramework/ao808;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/corrodinggames/rts/gameFramework/ao808;->a(IZ)Lcom/corrodinggames/rts/gameFramework/ao808;

    .line 516
    const-string v0, "SettingsEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 518
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->getInstance(Landroid/content/Context;)Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    .line 521
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->loadMainExternalFolder(Z)Z

    .line 524
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/e/a926;->b()V

    .line 526
    const/4 v0, 0x3

    .line 528
    sget-boolean v4, Lcom/corrodinggames/rts/game/i345;->aW:Z

    if-eqz v4, :cond_4

    move v0, v1

    .line 533
    :cond_4
    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    if-gt v4, v1, :cond_5

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    if-le v1, v0, :cond_e

    .line 535
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    .line 537
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->forceEnglish:Z

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eh:Z

    .line 543
    :cond_7
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    .line 545
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->newRender:Z

    .line 548
    :cond_8
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_a

    .line 550
    :cond_9
    const-string v0, "Extra safe mode"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ej:Z

    .line 555
    :cond_a
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_b

    .line 557
    const-string v0, "Extra safe mode x2"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ek:Z

    .line 561
    :cond_b
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_c

    .line 563
    const-string v0, "Extra safe mode x3"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->newRender:Z

    .line 565
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->shaderEffects:Z

    .line 566
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->teamShaders:Z

    .line 569
    :cond_c
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->newRender:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_d

    .line 571
    const-string v0, "Disabling opengl mode"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->newRender:Z

    .line 575
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting game in safe mode, numIncompleteLoadAttempts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numLoadsSinceRunningGameOrNormalExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17247
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 578
    :cond_e
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aL:Z

    if-eqz v0, :cond_f

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    .line 581
    const-string v0, "<forced by command line>"

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ei:Ljava/lang/String;

    .line 584
    :cond_f
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aM:Z

    if-eqz v0, :cond_10

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ej:Z

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ek:Z

    .line 589
    const-string v0, "<forced by command line>"

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ei:Ljava/lang/String;

    .line 592
    :cond_10
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numLoadsSinceRunningGameOrNormalExit:I

    .line 593
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numIncompleteLoadAttempts:I

    .line 594
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    move-result v0

    .line 596
    if-nez v0, :cond_11

    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aW:Z

    if-eqz v0, :cond_11

    .line 598
    const-string v0, "starting game in safe mode, failed to save settings"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 600
    const-string v0, "failing to write preferences data"

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->ei:Ljava/lang/String;

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    .line 606
    :cond_11
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/c/a901;->a()V

    .line 613
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->N()F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cg:F

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "densityScale(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19247
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 621
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a()V

    .line 624
    const-string v4, "Locale.init took:"

    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 627
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->C()V

    .line 635
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->k:Landroid/graphics/Paint;

    .line 637
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    .line 638
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 640
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 641
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 644
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->m:Landroid/graphics/Paint;

    .line 645
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->m:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 647
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 648
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 652
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->n:Landroid/graphics/Paint;

    .line 653
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->n:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 654
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 656
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->o:Landroid/graphics/Paint;

    .line 657
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->o:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 658
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->o:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 661
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dk:Landroid/graphics/Paint;

    .line 663
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dl:Landroid/graphics/Paint;

    .line 664
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 670
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dl:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 673
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 675
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dl:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 678
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    .line 679
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v4, 0xe6

    const/16 v5, 0xff

    const/16 v6, 0xe6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 681
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 682
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 683
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Landroid/graphics/Paint;F)V

    .line 691
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->w:Landroid/graphics/Paint;

    .line 692
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->w:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->w:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 695
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->x:Landroid/graphics/Paint;

    .line 696
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->x:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->x:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 698
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 699
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->x:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 704
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 706
    const-string v4, "AudioEngine"

    iput-object v4, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 708
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a()V

    .line 711
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/a/e788;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/a/e788;-><init>()V

    iput-object v4, p0, Lcom/corrodinggames/rts/game/i345;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    .line 712
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Landroid/content/Context;)V

    .line 723
    const-string v4, "AudioEngine took:"

    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 726
    const-string v0, "MusicController"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 728
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/ax817;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/ax817;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    .line 729
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    .line 20719
    iput-object p1, v0, Lcom/corrodinggames/rts/gameFramework/ax817;->w:Landroid/content/Context;

    .line 20721
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->ab()Z

    move-result v1

    if-nez v1, :cond_12

    .line 20727
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/ax817;->a:Lcom/corrodinggames/rts/gameFramework/bf880;

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/bf880;->a(Lcom/corrodinggames/rts/gameFramework/ax817;)V

    .line 20730
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/ax817;->a:Lcom/corrodinggames/rts/gameFramework/bf880;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/bf880;->a()Lcom/corrodinggames/rts/gameFramework/bh882;

    move-result-object v1

    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/ax817;->k:Lcom/corrodinggames/rts/gameFramework/bh882;

    .line 20732
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/ax817;->a:Lcom/corrodinggames/rts/gameFramework/bf880;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/bf880;->a()Lcom/corrodinggames/rts/gameFramework/bh882;

    move-result-object v1

    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/ax817;->A:Lcom/corrodinggames/rts/gameFramework/bh882;

    .line 20738
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/bi883;->a()V

    .line 20752
    new-instance v1, Lcom/corrodinggames/rts/gameFramework/bm887;

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/gameFramework/bm887;-><init>(Lcom/corrodinggames/rts/gameFramework/ax817;)V

    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/ax817;->e:Lcom/corrodinggames/rts/gameFramework/bm887;

    .line 20753
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/ax817;->e:Lcom/corrodinggames/rts/gameFramework/bm887;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/bm887;->start()V

    .line 734
    :cond_12
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->be:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    if-eqz v0, :cond_21

    .line 736
    const-string v0, "init(): using Graphics instance"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 738
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->be:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 765
    :goto_2
    const-string v0, "graphics.init"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0, p1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/content/Context;)V

    .line 770
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b()V

    .line 772
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/i1022;->a()V

    .line 776
    const-string v0, "Fonts"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 777
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->P()V

    .line 780
    const-string v0, "effects.init"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 782
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/d/c919;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/d/c919;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    .line 783
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a()V

    .line 786
    const-string v0, "minimapHandler"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 787
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/f/q996;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    .line 788
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/q996;->a()V

    .line 791
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->ch:Landroid/graphics/Point;

    if-eqz v0, :cond_13

    .line 793
    const-string v0, "We have an initial screen size, can do early setup of image buffers"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 795
    const-string v0, "Map Buffers"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 798
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->ch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/corrodinggames/rts/game/i345;->ch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 26706
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v4}, Lcom/corrodinggames/rts/game/i345;->a(IIF)V

    .line 799
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->am()V

    .line 801
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->b()V

    .line 803
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->c()V

    .line 805
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/q996;->c()V

    .line 808
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->ae()Z

    move-result v0

    .line 809
    if-eqz v0, :cond_13

    .line 812
    const-string v0, "Setting up postprocessing"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 814
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->aj()Z

    move-result v0

    .line 815
    if-nez v0, :cond_13

    .line 817
    const-string v0, "Failed to setup postprocessing"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 823
    :cond_13
    const-string v0, "PathEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 824
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/k/k1099;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    .line 827
    const-string v0, "GroupController"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 828
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/al805;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/al805;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bS:Lcom/corrodinggames/rts/gameFramework/al805;

    .line 831
    const-string v0, "CollisionEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 832
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/a793;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/a793;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bM:Lcom/corrodinggames/rts/gameFramework/a793;

    .line 835
    const-string v0, "InterfaceEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 836
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    .line 837
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    .line 32579
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 33546
    sget-boolean v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bb:Z

    .line 32581
    if-eqz v4, :cond_14

    .line 32583
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bN:Z

    .line 32586
    :cond_14
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f/i988;->c()V

    .line 32589
    const-string v4, "gui.notAvailableInDemoText"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bG:Ljava/lang/String;

    .line 32590
    const-string v4, "Locked"

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bH:Ljava/lang/String;

    .line 32592
    const-string v4, "gui.notEnoughResources"

    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/custom/bu555;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bI:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 32595
    const-string v4, "gui.cannotPlace.general"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bJ:Ljava/lang/String;

    .line 32596
    const-string v4, "gui.cannotPlace.needsResourcePool"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bK:Ljava/lang/String;

    .line 32597
    const-string v4, "gui.cannotPlace.needsWater"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bL:Ljava/lang/String;

    .line 32602
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a950;

    invoke-direct {v4, v1, v0}, Lcom/corrodinggames/rts/gameFramework/f/a950;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;Lcom/corrodinggames/rts/gameFramework/f/i988;)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->g:Lcom/corrodinggames/rts/gameFramework/f/a950;

    .line 32603
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->b()V

    .line 32605
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/o994;

    invoke-direct {v4, v1, v0}, Lcom/corrodinggames/rts/gameFramework/f/o994;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;Lcom/corrodinggames/rts/gameFramework/f/i988;)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->h:Lcom/corrodinggames/rts/gameFramework/f/o994;

    .line 32606
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/ay975;

    invoke-direct {v4, v1}, Lcom/corrodinggames/rts/gameFramework/f/ay975;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->i:Lcom/corrodinggames/rts/gameFramework/f/ay975;

    .line 32607
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/m992;

    invoke-direct {v4, v1, v0}, Lcom/corrodinggames/rts/gameFramework/f/m992;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;Lcom/corrodinggames/rts/gameFramework/f/i988;)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->j:Lcom/corrodinggames/rts/gameFramework/f/m992;

    .line 32609
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/f985;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/f/f985;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->k:Lcom/corrodinggames/rts/gameFramework/f/f985;

    .line 32612
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Y()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 32614
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->b:Z

    .line 32619
    :cond_15
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->button_no:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ba:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32620
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->button_yes:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bb:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32621
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->button_more:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bc:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32626
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bf:Landroid/graphics/Paint;

    .line 32627
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bf:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32629
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bg:Landroid/graphics/Paint;

    .line 32630
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bg:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32631
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bg:Landroid/graphics/Paint;

    const/16 v5, 0x28

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32633
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->button_add:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bh:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32634
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->button_subtract:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bi:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32635
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->icon_rally:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bj:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32637
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->rounded_glow_button:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bn:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32638
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->rounded_white_button:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bo:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32640
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bn:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    const/16 v6, 0x20

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bp:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32641
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v6, Lcom/corrodinggames/rts/R$drawable;->rounded_glow_highlight_button:I

    invoke-interface {v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bq:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32643
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bp:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->a()Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->br:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32644
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->br:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bq:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iput-object v5, v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->v:Lcom/corrodinggames/rts/gameFramework/f/a/i943;

    .line 32646
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v6, Lcom/corrodinggames/rts/R$drawable;->rounded_dark_box:I

    invoke-interface {v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bs:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32648
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v6, Lcom/corrodinggames/rts/R$drawable;->rounded_dark_box_titled:I

    invoke-interface {v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v5

    const/16 v6, 0x24

    const/16 v7, 0x24

    invoke-direct {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bt:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32650
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bt:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    new-instance v5, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v6, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v7, Lcom/corrodinggames/rts/R$drawable;->rounded_shadow:I

    invoke-interface {v6, v7}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v6

    const/16 v7, 0x24

    const/16 v8, 0x24

    invoke-direct {v5, v6, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v5, v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->r:Lcom/corrodinggames/rts/gameFramework/f/a/i943;

    .line 32651
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bt:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->f:Z

    .line 32654
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v6, Lcom/corrodinggames/rts/R$drawable;->rounded_green:I

    invoke-interface {v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v5

    const/16 v6, 0x24

    const/16 v7, 0x24

    invoke-direct {v4, v5, v6, v7}, Lcom/corrodinggames/rts/gameFramework/f/a/e939;-><init>(Lcom/corrodinggames/rts/gameFramework/m/e1216;II)V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bu:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    .line 32655
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bu:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bt:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->r:Lcom/corrodinggames/rts/gameFramework/f/a/i943;

    iput-object v5, v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->r:Lcom/corrodinggames/rts/gameFramework/f/a/i943;

    .line 32656
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bu:Lcom/corrodinggames/rts/gameFramework/f/a/e939;

    const/16 v5, 0x14

    iput v5, v4, Lcom/corrodinggames/rts/gameFramework/f/a/e939;->u:I

    .line 32669
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->icon_upgrade:I

    invoke-interface {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bk:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32670
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->metal_dark:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(IZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bl:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32671
    iget-object v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v5, Lcom/corrodinggames/rts/R$drawable;->touch_indicator:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(IZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v4

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bm:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 32673
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f/a/i943;->b()V

    .line 32678
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bE:Landroid/graphics/Paint;

    const/16 v5, 0x91

    const/4 v6, 0x0

    const/16 v7, 0xaf

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32679
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bE:Landroid/graphics/Paint;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32680
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bE:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32683
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bD:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32686
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->au:Landroid/graphics/Paint;

    .line 32688
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    .line 32689
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0xf0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32690
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32691
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32692
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32693
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32694
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32696
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    .line 32697
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0xf0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32698
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32699
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32700
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32701
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32702
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ay:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32705
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aw:Landroid/graphics/Paint;

    .line 32706
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aw:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->av:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32707
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aw:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xf0

    const/16 v7, 0xf0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32709
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ax:Landroid/graphics/Paint;

    .line 32710
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ax:Landroid/graphics/Paint;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32711
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->ax:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32714
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    .line 32715
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    const/16 v5, 0x64

    const/16 v6, 0x1e

    const/16 v7, 0xf0

    const/16 v8, 0x1e

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32716
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32717
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32718
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32719
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32720
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->az:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32723
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    .line 32724
    iget-boolean v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bN:Z

    if-eqz v4, :cond_24

    .line 32726
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xf0

    const/16 v7, 0xf0

    const/16 v8, 0xf0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32732
    :goto_3
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32733
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32734
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32735
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32736
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32738
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smallTextPaint size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34247
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 32741
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aB:Landroid/graphics/Paint;

    .line 32742
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aB:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32743
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aB:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32744
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aB:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32749
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aA:Landroid/graphics/Paint;

    .line 32750
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aA:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32751
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aA:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32752
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aA:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32757
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    .line 32759
    iget-boolean v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->bN:Z

    if-eqz v4, :cond_25

    .line 32761
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xf0

    const/16 v7, 0xf0

    const/16 v8, 0xf0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32767
    :goto_4
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32768
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32769
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32770
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32772
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32775
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    .line 32776
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x1e

    const/16 v7, 0xf0

    const/16 v8, 0x1e

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32777
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32778
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32779
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32780
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32781
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aE:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32783
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aI:Landroid/graphics/Paint;

    .line 32784
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aI:Landroid/graphics/Paint;

    const/16 v5, 0x96

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32785
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aI:Landroid/graphics/Paint;

    .line 34441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32786
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aI:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32788
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    .line 32789
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32790
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32791
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32792
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32793
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32795
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aG:Landroid/graphics/Paint;

    .line 32796
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aG:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aF:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32797
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aG:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xdc

    const/16 v7, 0xde

    const/16 v8, 0x31

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32799
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    .line 32800
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32801
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32802
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    const/16 v5, 0x7d

    const/16 v6, 0xe6

    const/16 v7, 0xe6

    const/16 v8, 0xe6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32803
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32804
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aH:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 32806
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 32807
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setColor(I)V

    .line 32810
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setAntiAlias(Z)V

    .line 32811
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setSubpixelText(Z)V

    .line 32812
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32816
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32821
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aR:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 32822
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aR:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aQ:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->set(Landroid/graphics/Paint;)V

    .line 32823
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aR:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32824
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aR:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32827
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aS:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 32828
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aS:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aR:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->set(Landroid/graphics/Paint;)V

    .line 32829
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aS:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/16 v5, 0xe8

    const/16 v6, 0x3f

    const/16 v7, 0x50

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setColor(I)V

    .line 32830
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aS:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32833
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    .line 32834
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32835
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 32838
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32839
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32840
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32843
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aK:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32845
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aL:Landroid/graphics/Paint;

    .line 32846
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aL:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32852
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aL:Landroid/graphics/Paint;

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32853
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 32855
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aL:Landroid/graphics/Paint;

    const/16 v5, 0x8c

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32858
    :cond_16
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aL:Landroid/graphics/Paint;

    .line 35441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32860
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aM:Landroid/graphics/Paint;

    .line 32861
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aM:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32862
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aM:Landroid/graphics/Paint;

    const/16 v5, 0xd2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32863
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aM:Landroid/graphics/Paint;

    .line 36441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32866
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    .line 32867
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32868
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    const/16 v5, 0xf0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32869
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32870
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32871
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aP:Landroid/graphics/Paint;

    .line 37441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32874
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    .line 32875
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32876
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32877
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32878
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32879
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aN:Landroid/graphics/Paint;

    .line 38441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32882
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aO:Landroid/graphics/Paint;

    .line 32883
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aO:Landroid/graphics/Paint;

    const/16 v5, 0x78

    const/16 v6, 0xeb

    const/16 v7, 0xa7

    const/16 v8, 0x31

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32885
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aO:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32886
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aO:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32887
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aO:Landroid/graphics/Paint;

    .line 39441
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32890
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-direct {v4}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;-><init>()V

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aJ:Landroid/graphics/Paint;

    .line 32892
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aJ:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 32893
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aJ:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32894
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aJ:Landroid/graphics/Paint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 32895
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aJ:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->a(Landroid/graphics/Paint;)V

    .line 841
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/bt894;->b(Landroid/content/Context;)Lcom/corrodinggames/rts/gameFramework/bt894;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->B:Lcom/corrodinggames/rts/gameFramework/bt894;

    .line 843
    const-string v0, "NetworkEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 844
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 847
    const-string v0, "StatsHandler"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 848
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/bv896;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/bv896;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bV:Lcom/corrodinggames/rts/gameFramework/bv896;

    .line 851
    const-string v0, "ModEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 852
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/i/a1018;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    .line 853
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    .line 42184
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->j()Ljava/util/ArrayList;

    .line 42186
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->e()V

    .line 855
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->eg:Z

    if-eqz v0, :cond_17

    .line 857
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->f()V

    .line 861
    :cond_17
    const-string v0, "CommandController"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 862
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/c904;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/c904;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cc:Lcom/corrodinggames/rts/gameFramework/c904;

    .line 865
    const-string v0, "GameSaver"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 866
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/aj803;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/aj803;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bX:Lcom/corrodinggames/rts/gameFramework/aj803;

    .line 870
    const-string v0, "ReplayEngine"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 871
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/bp890;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    .line 875
    const-string v0, "UnitGeoIndex"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 877
    new-instance v0, Lcom/corrodinggames/rts/game/units/f/c738;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/f/c738;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    .line 881
    const-string v0, "Precalculating map fog"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 883
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->a()V

    .line 886
    const-string v0, "ScorchMark.load"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 888
    invoke-static {}, Lcom/corrodinggames/rts/game/n350;->b()V

    .line 892
    const-string v0, "Projectile.load"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 894
    invoke-static {}, Lcom/corrodinggames/rts/game/f342;->b()V

    .line 897
    const-string v0, "Emitter.load"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 899
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/d/f922;->b()V

    .line 902
    const-string v0, "Unit.loadAllUnits"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 904
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 906
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bp()V

    .line 908
    const-string v4, "loadAllUnits took:"

    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 911
    const-string v0, "Loading custom unit data"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 913
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 915
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->e()V

    .line 920
    const-string v4, "getAllUnitsChecksum"

    iput-object v4, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 924
    const-string v4, "CustomUnits took:"

    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 929
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 931
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bt()I

    move-result v4

    iput v4, p0, Lcom/corrodinggames/rts/game/i345;->c:I

    .line 933
    const-string v4, "allUnitsChecksum took:"

    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 936
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->y:Landroid/graphics/Paint;

    .line 937
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->y:Landroid/graphics/Paint;

    const/16 v1, 0x32

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 941
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bf:Z

    .line 944
    const-string v0, "Init completed"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 946
    const-string v0, "Loading took:"

    invoke-static {v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 949
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->C:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 953
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    .line 955
    const-string v2, "Loading map data"

    iput-object v2, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 957
    sget-boolean v2, Lcom/corrodinggames/rts/gameFramework/k1104;->ax:Z

    if-nez v2, :cond_18

    .line 959
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->q()V

    .line 962
    :cond_18
    const-string v2, "loadAMenuMap took:"

    invoke-static {v2, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    .line 965
    const-string v0, "Last setup"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 50671
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->as:Z

    if-eqz v0, :cond_19

    .line 50676
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-nez v0, :cond_19

    .line 50681
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dU:Lcom/corrodinggames/rts/gameFramework/utility/e1340;

    if-eqz v0, :cond_26

    .line 50683
    const-string v0, "setupANRWatchDog: activeANRWatchDog!=null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 972
    :cond_19
    :goto_5
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 50744
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 50746
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f1006;->b()I

    .line 50748
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/j/bf1056;->a()F

    .line 50755
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->X()Z

    move-result v0

    if-nez v0, :cond_27

    .line 50757
    const/4 v0, 0x0

    .line 50751
    :goto_6
    iput-object v0, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->bi:Ljava/lang/String;

    .line 50753
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->bh:Z

    .line 975
    const-string v0, "init complete"

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k1104;->dF:Ljava/lang/String;

    .line 980
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aB:Z

    if-eqz v0, :cond_1a

    .line 983
    invoke-static {}, Lcom/corrodinggames/rts/game/units/cj459;->s()V

    .line 984
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 988
    :cond_1a
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aC:Z

    if-eqz v0, :cond_1b

    .line 991
    invoke-static {}, Lcom/corrodinggames/rts/game/units/cj459;->r()V

    .line 992
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 998
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bg:Z

    goto/16 :goto_0

    .line 463
    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "densityScaleRaw: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cf:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7247
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 470
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8008
    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-static {v5, v6, v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFFF)F

    move-result v0

    .line 8015
    const v4, 0x448d6000    # 1131.0f

    div-float/2addr v0, v4

    .line 8018
    const-string v4, "defaultViewpointZoomDensity: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8247
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 8020
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1d

    .line 8022
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8024
    :cond_1d
    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1e

    .line 8026
    const/high16 v0, 0x40400000    # 3.0f

    .line 8029
    :cond_1e
    const-string v4, "defaultViewpointZoomDensity after limit: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9247
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 8032
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    .line 8033
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v0, v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 8035
    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    .line 8037
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1f

    .line 8039
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    .line 8041
    :cond_1f
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_20

    .line 8043
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    .line 8046
    :cond_20
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cS:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cV:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    goto/16 :goto_1

    .line 740
    :cond_21
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->bd:Ljava/lang/Class;

    if-eqz v0, :cond_22

    .line 742
    const-string v0, "init(): using GraphicsSlick2d"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 745
    :try_start_3
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->bd:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 747
    :catch_0
    move-exception v0

    .line 749
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 751
    :catch_1
    move-exception v0

    .line 753
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 756
    :cond_22
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aR:Z

    if-eqz v0, :cond_23

    .line 758
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fj1253;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fj1253;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    goto/16 :goto_2

    .line 762
    :cond_23
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/m/fh1251;

    invoke-direct {v0}, Lcom/corrodinggames/rts/gameFramework/m/fh1251;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    goto/16 :goto_2

    .line 32730
    :cond_24
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aC:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x1e

    const/16 v7, 0xf0

    const/16 v8, 0x1e

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_3

    .line 32765
    :cond_25
    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aD:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x1e

    const/16 v7, 0xf0

    const/16 v8, 0x1e

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_4

    .line 50687
    :cond_26
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/e1340;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/gameFramework/utility/e1340;-><init>(I)V

    .line 50689
    sput-object v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dU:Lcom/corrodinggames/rts/gameFramework/utility/e1340;

    new-instance v1, Lcom/corrodinggames/rts/gameFramework/r1313;

    invoke-direct {v1}, Lcom/corrodinggames/rts/gameFramework/r1313;-><init>()V

    .line 50741
    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/utility/e1340;->a:Lcom/corrodinggames/rts/gameFramework/utility/i1344;

    .line 50732
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/k1104;->dU:Lcom/corrodinggames/rts/gameFramework/utility/e1340;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/e1340;->start()V

    .line 50734
    const-string v0, "setupANRWatchDog: running"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 50760
    :cond_27
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/i345;

    .line 50761
    invoke-direct {v0}, Lcom/corrodinggames/rts/game/i345;->an()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_6
.end method
