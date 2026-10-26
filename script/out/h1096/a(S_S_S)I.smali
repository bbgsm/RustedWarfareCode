.method private strictfp a(SSS)I
    .locals 11

    .line 442
    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 443
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 444
    iget-object v4, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->g:[S

    .line 445
    iget-object v5, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    .line 447
    mul-int v0, p1, v2

    add-int/2addr v0, p2

    aget-byte v0, v5, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 449
    mul-int v0, p1, v2

    add-int/2addr v0, p2

    const/4 v1, -0x1

    aput-short v1, v4, v0

    .line 450
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    .line 453
    :cond_0
    if-nez p3, :cond_1

    .line 455
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "id cannot be 0 is will cause can endless loop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    const/4 v1, 0x0

    .line 460
    new-instance v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;

    invoke-direct {v6}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;-><init>()V

    .line 462
    new-instance v0, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    invoke-direct {v0, p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/an1334;-><init>(SS)V

    .line 463
    invoke-virtual {v6, v0}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2270
    iget v7, v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->b:I

    .line 2271
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->a:[Ljava/lang/Object;

    aget-object v0, v0, v7

    .line 2272
    if-nez v0, :cond_3

    .line 2273
    const/4 v0, 0x0

    .line 467
    :goto_2
    check-cast v0, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    .line 468
    iget-short v7, v0, Lcom/corrodinggames/rts/gameFramework/utility/an1334;->a:S

    .line 469
    iget-short v0, v0, Lcom/corrodinggames/rts/gameFramework/utility/an1334;->b:S

    .line 471
    invoke-virtual {v3, v7, v0}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 473
    mul-int v8, v7, v2

    add-int/2addr v8, v0

    .line 475
    aget-short v9, v4, v8

    if-nez v9, :cond_2

    aget-byte v9, v5, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 477
    aput-short p3, v4, v8

    .line 478
    add-int/lit8 v1, v1, 0x1

    .line 480
    new-instance v8, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    add-int/lit8 v9, v7, -0x1

    int-to-short v9, v9

    int-to-short v10, v0

    invoke-direct {v8, v9, v10}, Lcom/corrodinggames/rts/gameFramework/utility/an1334;-><init>(SS)V

    invoke-virtual {v6, v8}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v8, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    int-to-short v10, v0

    invoke-direct {v8, v9, v10}, Lcom/corrodinggames/rts/gameFramework/utility/an1334;-><init>(SS)V

    invoke-virtual {v6, v8}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v8, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    int-to-short v9, v7

    add-int/lit8 v10, v0, -0x1

    int-to-short v10, v10

    invoke-direct {v8, v9, v10}, Lcom/corrodinggames/rts/gameFramework/utility/an1334;-><init>(SS)V

    invoke-virtual {v6, v8}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v8, Lcom/corrodinggames/rts/gameFramework/utility/an1334;

    int-to-short v7, v7

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-direct {v8, v7, v0}, Lcom/corrodinggames/rts/gameFramework/utility/an1334;-><init>(SS)V

    invoke-virtual {v6, v8}, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2274
    :cond_3
    iget-object v8, v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->a:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 2275
    add-int/lit8 v7, v7, 0x1

    iget-object v8, v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->a:[Ljava/lang/Object;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    iput v7, v6, Lcom/corrodinggames/rts/gameFramework/utility/k1346;->b:I

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
