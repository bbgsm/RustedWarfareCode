.method public final strictfp a(FFILcom/corrodinggames/rts/game/p352;Z)V
    .locals 10

    const/4 v2, 0x0

    .line 5501
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v3

    .line 5503
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v0, :cond_2

    .line 5506
    sget-boolean v0, Lcom/corrodinggames/rts/game/b/b326;->a:Z

    if-eqz v0, :cond_6

    .line 5509
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v0

    move-wide v6, v0

    .line 5512
    :goto_0
    const/4 v0, 0x1

    .line 5513
    iget-boolean v9, p4, Lcom/corrodinggames/rts/game/p352;->H:Z

    .line 5515
    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5517
    iget-object v1, v3, Lcom/corrodinggames/rts/gameFramework/k1104;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    .line 5518
    if-eqz v1, :cond_0

    .line 47305
    iget-boolean v3, v1, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    .line 5518
    if-nez v3, :cond_0

    .line 47310
    iget-boolean v1, v1, Lcom/corrodinggames/rts/gameFramework/n/p1300;->o:Z

    .line 5518
    if-nez v1, :cond_0

    move v0, v2

    .line 5524
    :cond_0
    if-nez v0, :cond_3

    .line 5526
    invoke-direct/range {p0 .. p5}, Lcom/corrodinggames/rts/game/b/b326;->b(FFILcom/corrodinggames/rts/game/p352;Z)V

    .line 5544
    :cond_1
    sget-boolean v0, Lcom/corrodinggames/rts/game/b/b326;->a:Z

    if-eqz v0, :cond_2

    .line 5546
    iget-wide v0, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v2

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/corrodinggames/rts/game/b/b326;->aq:J

    .line 5552
    :cond_2
    return-void

    :cond_3
    move v8, v2

    .line 5530
    :goto_1
    sget v0, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v8, v0, :cond_1

    .line 5532
    invoke-static {v8}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v4

    .line 5533
    if-eqz v4, :cond_5

    .line 5535
    if-eq v4, p4, :cond_4

    iget-boolean v0, v4, Lcom/corrodinggames/rts/game/p352;->x:Z

    if-nez v0, :cond_5

    invoke-virtual {v4, p4}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v9, :cond_5

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 5537
    invoke-direct/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->b(FFILcom/corrodinggames/rts/game/p352;Z)V

    .line 5530
    :cond_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto :goto_0
.end method
