.method final strictfp a()V
    .locals 10

    const/4 v2, 0x0

    .line 390
    iget v4, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    .line 391
    iget v5, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 393
    mul-int v0, v4, v5

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->g:[S

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->h:Ljava/util/HashMap;

    .line 407
    const/4 v0, 0x1

    move v3, v2

    .line 409
    :goto_0
    if-ge v3, v4, :cond_0

    move v1, v2

    .line 411
    :goto_1
    if-ge v1, v5, :cond_4

    .line 413
    iget-object v6, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->g:[S

    mul-int v7, v3, v5

    add-int/2addr v7, v1

    aget-short v6, v6, v7

    if-nez v6, :cond_3

    .line 415
    if-gtz v0, :cond_1

    .line 417
    const-string v0, "RustedWarfare"

    const-string v1, "warning buildIsolatedGroups looped, ending"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void

    .line 421
    :cond_1
    invoke-direct {p0, v3, v1, v0}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(SSS)I

    move-result v6

    .line 423
    if-lez v6, :cond_3

    .line 425
    iget-object v7, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget v7, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->i:I

    if-ge v7, v6, :cond_2

    .line 429
    iput v6, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->i:I

    .line 432
    :cond_2
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 411
    :cond_3
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    .line 409
    :cond_4
    add-int/lit8 v1, v3, 0x1

    int-to-short v1, v1

    move v3, v1

    goto :goto_0
.end method
