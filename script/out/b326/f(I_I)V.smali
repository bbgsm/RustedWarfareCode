.method private strictfp f(II)V
    .locals 7

    const/16 v6, 0x7f

    const/4 v0, 0x0

    .line 5707
    add-int/lit8 v4, p1, -0x1

    .line 5708
    add-int/lit8 v1, p2, -0x1

    .line 5709
    if-gez v4, :cond_0

    move v4, v0

    .line 5710
    :cond_0
    if-gez v1, :cond_6

    .line 5712
    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 5713
    add-int/lit8 v2, p2, 0x1

    .line 5714
    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    iget v1, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v1, v1, -0x1

    .line 5715
    :cond_1
    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .line 5717
    :goto_1
    if-gt v4, v1, :cond_7

    move v2, v0

    .line 5719
    :goto_2
    if-gt v2, v3, :cond_4

    .line 5724
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    aget-object v5, v5, v4

    aget-byte v5, v5, v2

    if-eqz v5, :cond_2

    .line 5726
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    aget-object v5, v5, v4

    aput-byte v6, v5, v2

    .line 5729
    :cond_2
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->O:[[B

    aget-object v5, v5, v4

    aget-byte v5, v5, v2

    if-eqz v5, :cond_3

    .line 5732
    iget-object v5, p0, Lcom/corrodinggames/rts/game/b/b326;->O:[[B

    aget-object v5, v5, v4

    aput-byte v6, v5, v2

    .line 5719
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5717
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_5
    move v3, v2

    .line 5738
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    return-void
.end method
