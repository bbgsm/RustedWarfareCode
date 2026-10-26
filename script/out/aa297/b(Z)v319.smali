.method private b(Z)Lcom/corrodinggames/rts/game/a/v319;
    .locals 5

    .line 697
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->R:Lcom/corrodinggames/rts/game/a/a296;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/a/a296;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/a/ab298;

    .line 701
    instance-of v3, v0, Lcom/corrodinggames/rts/game/a/v319;

    if-eqz v3, :cond_0

    .line 703
    check-cast v0, Lcom/corrodinggames/rts/game/a/v319;

    .line 704
    iget-boolean v3, v0, Lcom/corrodinggames/rts/game/a/v319;->s:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    .line 706
    :cond_1
    iget-object v3, v0, Lcom/corrodinggames/rts/game/a/v319;->b:Lcom/corrodinggames/rts/game/a/w320;

    sget-object v4, Lcom/corrodinggames/rts/game/a/w320;->c:Lcom/corrodinggames/rts/game/a/w320;

    if-ne v3, v4, :cond_0

    .line 709
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 717
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
