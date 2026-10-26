.method private strictfp dc()V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8458
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    if-nez v0, :cond_1

    .line 8525
    :cond_0
    return-void

    .line 8463
    :cond_1
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->M()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v7

    .line 8465
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 52470
    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 8466
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v9

    move v6, v3

    :goto_0
    if-ge v6, v9, :cond_0

    .line 8468
    aget-object v0, v8, v6

    .line 8470
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_2

    .line 8472
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 8474
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-ne v1, p0, :cond_2

    .line 8482
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v1, v4, v5, v10}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v1

    .line 8483
    const v4, 0x47d4b200    # 108900.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    move v1, v2

    .line 8489
    :goto_1
    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bp437;->M()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v4

    .line 8490
    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 8492
    invoke-virtual {v7, v4}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/en734;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    move v5, v3

    .line 8502
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 8504
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 8466
    :cond_2
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 8483
    goto :goto_1

    .line 8497
    :cond_4
    if-nez v7, :cond_6

    if-nez v4, :cond_6

    move v4, v3

    move v5, v2

    .line 8499
    goto :goto_2

    .line 8508
    :cond_5
    if-nez v5, :cond_2

    .line 8510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    goto :goto_3

    :cond_6
    move v4, v3

    move v5, v3

    goto :goto_2
.end method
