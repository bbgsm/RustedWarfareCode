.method private strictfp a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V
    .locals 7

    const/4 v1, 0x0

    .line 225
    add-int/lit8 v3, p2, -0x3

    .line 226
    add-int/lit8 v0, p3, -0x3

    .line 227
    add-int/lit8 v2, p2, 0x3

    .line 228
    add-int/lit8 v4, p3, 0x3

    .line 230
    if-gez v3, :cond_0

    move v3, v1

    .line 231
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 232
    :cond_1
    iget v1, p1, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_5

    iget v1, p1, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v1, v1, -0x1

    .line 233
    :goto_0
    iget v2, p1, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v2, v2, -0x1

    if-le v4, v2, :cond_2

    iget v2, p1, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    .line 236
    :cond_2
    :goto_1
    if-gt v3, v1, :cond_6

    move v2, v0

    .line 238
    :goto_2
    if-gt v2, v4, :cond_4

    .line 241
    iget v5, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    aget-byte v5, p4, v5

    .line 243
    if-eqz v5, :cond_3

    .line 245
    invoke-static {p2, p3, v3, v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(IIII)I

    move-result v6

    .line 247
    if-ge v6, v5, :cond_3

    .line 249
    iget v5, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 238
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 236
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v2

    .line 256
    goto :goto_0

    :cond_6
    return-void
.end method
