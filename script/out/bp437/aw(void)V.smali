.method public final strictfp aw()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 8531
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    if-nez v0, :cond_1

    .line 8579
    :cond_0
    :goto_0
    return-void

    .line 8539
    :cond_1
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 52471
    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 8540
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v6

    move v2, v3

    move-object v1, v4

    :goto_1
    if-ge v2, v6, :cond_2

    .line 8542
    aget-object v0, v5, v2

    .line 8544
    instance-of v7, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v7, :cond_4

    .line 8546
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 8548
    iget-object v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-ne v7, p0, :cond_4

    .line 8550
    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 8540
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    .line 8556
    :cond_2
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    if-eqz v0, :cond_3

    .line 8560
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    .line 8563
    :cond_3
    if-eqz v1, :cond_0

    .line 8565
    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 8567
    if-eqz v0, :cond_0

    .line 8569
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/en734;->i:Lcom/corrodinggames/rts/gameFramework/am806;

    .line 8570
    if-eqz v0, :cond_0

    .line 8572
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/am806;->b()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
