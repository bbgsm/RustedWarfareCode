.method public final strictfp h()V
    .locals 5

    const/16 v4, 0x7f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5769
    iget-object v2, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    if-nez v2, :cond_0

    .line 5783
    :goto_0
    if-eqz v0, :cond_4

    .line 5785
    const-string v0, "Building smoothFog_cache"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5787
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    .line 5788
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->O:[[B

    move v0, v1

    .line 5790
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 5792
    :goto_2
    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge v2, v3, :cond_2

    .line 5794
    iget-object v3, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    aget-object v3, v3, v0

    aput-byte v4, v3, v2

    .line 5796
    iget-object v3, p0, Lcom/corrodinggames/rts/game/b/b326;->O:[[B

    aget-object v3, v3, v0

    aput-byte v4, v3, v2

    .line 5792
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5776
    :cond_0
    iget-object v2, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    array-length v2, v2

    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/corrodinggames/rts/game/b/b326;->N:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-eq v2, v3, :cond_3

    .line 5778
    :cond_1
    const-string v2, "smoothFog_cache: Size mismatch"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 5790
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 5801
    goto :goto_0

    :cond_4
    return-void
.end method
