.method private static j()V
    .locals 6

    .line 1401
    const/4 v1, 0x0

    .line 1403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    .line 1409
    invoke-static {}, Lcom/corrodinggames/rts/game/units/cj459;->values()[Lcom/corrodinggames/rts/game/units/cj459;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 1411
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1415
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1417
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    const-string v5, "missing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-nez v4, :cond_4

    :goto_2
    move-object v1, v0

    .line 1425
    goto :goto_1

    .line 1426
    :cond_1
    sput-object v2, Lcom/corrodinggames/rts/game/units/cj459;->ae:Ljava/util/ArrayList;

    .line 1430
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bs()V

    .line 1434
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->l()V

    .line 1437
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->k()V

    .line 1440
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/e/a589;->c()V

    .line 1443
    if-nez v1, :cond_3

    .line 1447
    const-string v0, "missingPlaceHolder is not an active unit, searching for new target"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1449
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1451
    iget-object v3, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    const-string v4, "missing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1453
    const-string v1, "Found a missing placeholder"

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move-object v1, v0

    .line 1454
    goto :goto_3

    .line 1459
    :cond_3
    sput-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->b:Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1462
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
