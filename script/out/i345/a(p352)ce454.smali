.method private static strictfp a(Lcom/corrodinggames/rts/game/p352;)Lcom/corrodinggames/rts/game/units/ce454;
    .locals 5

    const/4 v2, 0x0

    .line 5323
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 5327
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5329
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eq v0, p0, :cond_0

    if-nez p0, :cond_6

    .line 5331
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 5334
    goto :goto_0

    .line 5335
    :cond_1
    if-lez v1, :cond_5

    .line 5337
    add-int/lit8 v0, v1, -0x1

    invoke-static {v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(II)I

    move-result v1

    .line 5340
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 5342
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5344
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eq v4, p0, :cond_3

    if-nez p0, :cond_2

    .line 5346
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5356
    :goto_3
    return-object v0

    .line 5350
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5356
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method
