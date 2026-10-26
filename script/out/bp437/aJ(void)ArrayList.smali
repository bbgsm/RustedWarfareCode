.method public final strictfp aJ()Ljava/util/ArrayList;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 10281
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10282
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10284
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v6

    move v4, v3

    .line 10285
    :goto_0
    if-ge v4, v6, :cond_6

    .line 10287
    invoke-virtual {p0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->l(I)F

    move-result v7

    .line 10288
    cmpl-float v0, v7, v2

    if-eqz v0, :cond_3

    .line 10293
    invoke-virtual {p0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->b(I)F

    move-result v0

    .line 10295
    const v1, 0x460ca000    # 9000.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    move v1, v2

    .line 10303
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/bs440;

    .line 10305
    iget v9, v0, Lcom/corrodinggames/rts/game/units/bs440;->a:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_0

    iget v9, v0, Lcom/corrodinggames/rts/game/units/bs440;->b:F

    cmpl-float v9, v9, v1

    if-eqz v9, :cond_1

    cmpl-float v9, v1, v2

    if-eqz v9, :cond_1

    iget v9, v0, Lcom/corrodinggames/rts/game/units/bs440;->b:F

    cmpl-float v9, v9, v2

    if-nez v9, :cond_0

    .line 10307
    :cond_1
    iget v8, v0, Lcom/corrodinggames/rts/game/units/bs440;->d:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/corrodinggames/rts/game/units/bs440;->d:I

    .line 10309
    iget v8, v0, Lcom/corrodinggames/rts/game/units/bs440;->b:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_2

    .line 10311
    iput v1, v0, Lcom/corrodinggames/rts/game/units/bs440;->b:F

    .line 10314
    :cond_2
    const/4 v0, 0x1

    .line 10318
    :goto_2
    if-nez v0, :cond_3

    .line 10322
    new-instance v0, Lcom/corrodinggames/rts/game/units/bs440;

    invoke-direct {v0}, Lcom/corrodinggames/rts/game/units/bs440;-><init>()V

    .line 10323
    iput v7, v0, Lcom/corrodinggames/rts/game/units/bs440;->a:F

    .line 10324
    iput v1, v0, Lcom/corrodinggames/rts/game/units/bs440;->b:F

    .line 10325
    invoke-virtual {p0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v1

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bs440;->c:F

    .line 10327
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10285
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 10332
    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    return-object v5
.end method
