.method private strictfp d(F)V
    .locals 8

    .line 4464
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/gameFramework/f/i988;->b(F)V

    .line 4467
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    if-eqz v0, :cond_0

    .line 4469
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(F)V

    .line 4472
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/gameFramework/f/q996;->b(F)V

    .line 4532
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ce:Z

    if-eqz v0, :cond_1

    .line 4534
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const-string v1, "Look Mode"

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cl:F

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cm:F

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4541
    :cond_1
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bj:Z

    if-eqz v0, :cond_3

    .line 4544
    const/16 v2, 0x14

    .line 4545
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/corrodinggames/rts/game/p352;->c:I

    if-ge v1, v0, :cond_3

    .line 4547
    invoke-static {v1}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v0

    .line 4549
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/corrodinggames/rts/game/a/a296;

    if-eqz v3, :cond_2

    .line 4551
    check-cast v0, Lcom/corrodinggames/rts/game/a/a296;

    .line 4552
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/corrodinggames/rts/game/a/a296;->l:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "| c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/corrodinggames/rts/game/a/a296;->p:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41a00000    # 20.0f

    int-to-float v5, v2

    iget-object v6, p0, Lcom/corrodinggames/rts/game/i345;->dk:Landroid/graphics/Paint;

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4553
    add-int/lit8 v2, v2, 0x14

    .line 4545
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4559
    :cond_3
    return-void
.end method
