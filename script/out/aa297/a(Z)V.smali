.method private a(Z)V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->R:Lcom/corrodinggames/rts/game/a/a296;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/a/a296;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/a/ab298;

    .line 666
    instance-of v2, v0, Lcom/corrodinggames/rts/game/a/u318;

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/corrodinggames/rts/game/a/aa297;

    if-nez v2, :cond_0

    .line 668
    if-eqz p1, :cond_1

    .line 670
    instance-of v2, v0, Lcom/corrodinggames/rts/game/a/y322;

    if-eqz v2, :cond_0

    .line 677
    :cond_1
    check-cast v0, Lcom/corrodinggames/rts/game/a/u318;

    .line 679
    iget-object v2, v0, Lcom/corrodinggames/rts/game/a/u318;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/a/u318;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->m:Lcom/corrodinggames/rts/game/a/u318;

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->n:Lcom/corrodinggames/rts/game/units/bp437;

    .line 690
    :cond_2
    return-void
.end method
