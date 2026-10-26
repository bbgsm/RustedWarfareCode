.method private static k()V
    .locals 7

    const/high16 v4, 0x437a0000    # 250.0f

    const/high16 v0, 0x42480000    # 50.0f

    .line 1474
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1476
    iget v3, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->cW:I

    int-to-float v3, v3

    .line 1477
    cmpl-float v6, v3, v4

    if-lez v6, :cond_0

    move v3, v4

    .line 1479
    :cond_0
    cmpg-float v6, v1, v3

    if-gez v6, :cond_1

    move v1, v3

    .line 1484
    :cond_1
    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-eqz v0, :cond_3

    .line 1486
    cmpg-float v0, v2, v3

    if-gez v0, :cond_3

    move v0, v3

    :goto_1
    move v2, v0

    .line 1491
    goto :goto_0

    .line 1493
    :cond_2
    sput v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->p:F

    .line 1494
    sput v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->q:F

    .line 1495
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method
