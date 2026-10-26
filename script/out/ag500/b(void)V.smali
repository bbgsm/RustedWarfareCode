.method public static b()V
    .locals 14

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 517
    new-instance v6, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 519
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 523
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->k:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/aa494;

    .line 525
    invoke-virtual {v1, v3}, Lcom/corrodinggames/rts/game/units/custom/aa494;->a(Z)J

    move-result-wide v10

    .line 526
    iget-wide v12, v1, Lcom/corrodinggames/rts/game/units/custom/aa494;->a:J

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5

    .line 529
    iput-wide v10, v1, Lcom/corrodinggames/rts/game/units/custom/aa494;->a:J

    move v1, v5

    :goto_2
    move v4, v1

    .line 531
    goto :goto_1

    .line 533
    :cond_0
    if-eqz v4, :cond_2

    .line 535
    if-nez v2, :cond_1

    .line 537
    const-string v1, "Detected unit changes"

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v2, v5

    .line 541
    :cond_1
    invoke-virtual {v6, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    move v2, v0

    .line 543
    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 547
    invoke-static {v6}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/gameFramework/utility/p1351;)Z

    .line 550
    :cond_4
    return-void

    :cond_5
    move v1, v4

    goto :goto_2
.end method
