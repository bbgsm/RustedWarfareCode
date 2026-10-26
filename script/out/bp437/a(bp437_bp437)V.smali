.method public static strictfp a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/game/units/bp437;)V
    .locals 6

    const/4 v1, 0x0

    .line 351
    :try_start_0
    new-instance v2, Lcom/corrodinggames/rts/gameFramework/j/bg1057;

    invoke-direct {v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;-><init>()V

    .line 353
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    move v0, v1

    .line 357
    :goto_0
    if-ge v0, v3, :cond_0

    .line 359
    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/game/units/en734;->a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    new-instance v4, Lcom/corrodinggames/rts/gameFramework/j/j1071;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->d()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/corrodinggames/rts/gameFramework/j/j1071;-><init>([B)V

    .line 366
    iput v3, p1, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 368
    :goto_1
    if-ge v1, v3, :cond_3

    .line 371
    invoke-direct {p1, v1}, Lcom/corrodinggames/rts/game/units/bp437;->Q(I)V

    .line 373
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 375
    const-string v0, "Too many waypoints:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 376
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 379
    :goto_2
    iget-object v2, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 381
    iget-object v2, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    new-instance v5, Lcom/corrodinggames/rts/game/units/en734;

    invoke-direct {v5}, Lcom/corrodinggames/rts/game/units/en734;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v5, v2, v0

    .line 383
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/corrodinggames/rts/game/units/en734;->a(Lcom/corrodinggames/rts/gameFramework/j/j1071;)V

    .line 384
    iget-object v2, p1, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/en734;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    .line 392
    goto :goto_2

    :cond_3
    return-void
.end method
