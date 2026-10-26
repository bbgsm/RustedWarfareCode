.method public final strictfp a(I)Lcom/corrodinggames/rts/game/b/l336;
    .locals 4

    const/4 v2, 0x0

    .line 5421
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 5422
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/l336;

    .line 46646
    iget v3, v0, Lcom/corrodinggames/rts/game/b/l336;->l:I

    if-lt p1, v3, :cond_0

    iget v3, v0, Lcom/corrodinggames/rts/game/b/l336;->m:I

    if-gt p1, v3, :cond_0

    const/4 v3, 0x1

    .line 5424
    :goto_1
    if-eqz v3, :cond_1

    .line 5429
    :goto_2
    return-object v0

    :cond_0
    move v3, v2

    .line 46646
    goto :goto_1

    .line 5421
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5429
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
