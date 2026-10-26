.method private strictfp b(Lcom/corrodinggames/rts/gameFramework/k1104;)V
    .locals 9

    const/16 v8, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9198
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-eqz v0, :cond_6

    .line 9200
    iget-object v3, p1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 9202
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->b()Ljava/util/LinkedList;

    move-result-object v4

    .line 9204
    if-eqz v4, :cond_6

    .line 9207
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->a()Lcom/corrodinggames/rts/gameFramework/k/c1091;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    .line 9232
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 9233
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 9237
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;

    .line 9239
    iget-short v6, v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;->a:S

    iget-short v0, v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;->b:S

    invoke-virtual {v3, v6, v0}, Lcom/corrodinggames/rts/game/b/b326;->a(II)V

    .line 9240
    iget v0, v3, Lcom/corrodinggames/rts/game/b/b326;->U:I

    iget v6, v3, Lcom/corrodinggames/rts/game/b/b326;->p:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    .line 9241
    iget v6, v3, Lcom/corrodinggames/rts/game/b/b326;->V:I

    iget v7, v3, Lcom/corrodinggames/rts/game/b/b326;->q:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 9243
    iget v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-direct {p0, v7, v0, v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(IFF)V

    .line 9245
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 9247
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lt v0, v8, :cond_0

    .line 9249
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 9254
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-ne v0, v1, :cond_2

    .line 9256
    iget-byte v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    .line 9263
    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 9265
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    invoke-virtual {v3, v0, v5}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 9266
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    if-nez v0, :cond_7

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;

    iget-short v0, v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;->a:S

    iget v5, v3, Lcom/corrodinggames/rts/game/b/b326;->U:I

    if-ne v0, v5, :cond_7

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;

    iget-short v0, v0, Lcom/corrodinggames/rts/gameFramework/k/o1103;->b:S

    iget v3, v3, Lcom/corrodinggames/rts/game/b/b326;->V:I

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 9277
    :goto_0
    if-eqz v0, :cond_4

    .line 9292
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-nez v0, :cond_3

    .line 9294
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 9317
    :cond_3
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    invoke-direct {p0, v0, v1, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(IFF)V

    .line 9369
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    .line 9373
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-le v0, v8, :cond_5

    .line 9375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activePathCount>maxPathNodes: activePathCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 9376
    iput v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 9379
    :cond_5
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    .line 9383
    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_0
.end method
