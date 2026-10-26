.method private static a(Lcom/corrodinggames/rts/gameFramework/utility/p1351;)Z
    .locals 14

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v7

    .line 381
    new-instance v8, Ljava/util/ArrayList;

    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 382
    new-instance v9, Ljava/util/ArrayList;

    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    new-instance v10, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v10}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 388
    invoke-virtual {p0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v2

    move v4, v2

    move-object v5, v6

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 390
    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)Lcom/corrodinggames/rts/game/units/custom/l609;

    move-result-object v12

    .line 392
    if-nez v12, :cond_0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "Failed to apply changes to unit type: "

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 398
    if-nez v5, :cond_7

    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 400
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    move v1, v3

    move-object v5, v0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "Changes applied to unit type: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v10, v12}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v4, v3

    :goto_1
    move v1, v0

    .line 410
    goto :goto_0

    .line 412
    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    const-string v0, "Unit errors"

    invoke-virtual {v7, v0, v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_2
    if-eqz v4, :cond_8

    .line 420
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->b(Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v3

    .line 426
    :goto_2
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    .line 428
    sput-object v6, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    .line 430
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->d()V

    .line 432
    sput-object v6, Lcom/corrodinggames/rts/game/units/custom/ag500;->s:Ljava/lang/String;

    .line 436
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->F()V

    .line 438
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/f/i988;->n()V

    .line 442
    if-nez v5, :cond_6

    .line 444
    invoke-virtual {v10}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 446
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->gt:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->gt:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Warning(s) loading: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/l609;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->gt:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->g(Ljava/lang/String;)V

    .line 449
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->gt:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->clear()V

    .line 459
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 461
    const-string v0, "Failed to load some units, keeping old config"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 463
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 466
    :try_start_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    sput-object v9, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    .line 475
    :cond_5
    return v2

    .line 468
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    move v5, v1

    goto/16 :goto_2
.end method
