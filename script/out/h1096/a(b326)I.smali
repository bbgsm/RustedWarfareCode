.method public static strictfp a(Lcom/corrodinggames/rts/game/b/b326;)I
    .locals 10

    const/4 v1, 0x0

    .line 519
    iget-object v9, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    move v0, v1

    move v2, v1

    .line 524
    :goto_0
    iget v3, v9, Lcom/corrodinggames/rts/game/b/g331;->n:I

    if-ge v2, v3, :cond_7

    move v3, v1

    .line 526
    :goto_1
    iget v4, v9, Lcom/corrodinggames/rts/game/b/g331;->o:I

    if-ge v3, v4, :cond_6

    .line 529
    invoke-virtual {v9, v2, v3}, Lcom/corrodinggames/rts/game/b/g331;->a(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v8

    .line 531
    if-eqz v8, :cond_0

    .line 534
    iget-boolean v4, v8, Lcom/corrodinggames/rts/game/b/i333;->e:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 535
    :goto_2
    iget-boolean v5, v8, Lcom/corrodinggames/rts/game/b/i333;->h:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 536
    :goto_3
    iget-boolean v6, v8, Lcom/corrodinggames/rts/game/b/i333;->k:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    .line 537
    :goto_4
    iget-boolean v7, v8, Lcom/corrodinggames/rts/game/b/i333;->g:Z

    if-eqz v7, :cond_4

    const/16 v7, 0x8

    .line 538
    :goto_5
    iget-boolean v8, v8, Lcom/corrodinggames/rts/game/b/i333;->f:Z

    if-eqz v8, :cond_5

    const/16 v8, 0x10

    .line 540
    :goto_6
    add-int/lit8 v4, v4, 0x0

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v7

    add-int/2addr v4, v8

    add-int v5, v2, v3

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 526
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 534
    goto :goto_2

    :cond_2
    move v5, v1

    .line 535
    goto :goto_3

    :cond_3
    move v6, v1

    .line 536
    goto :goto_4

    :cond_4
    move v7, v1

    .line 537
    goto :goto_5

    :cond_5
    move v8, v1

    .line 538
    goto :goto_6

    .line 524
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_7
    return v0
.end method
