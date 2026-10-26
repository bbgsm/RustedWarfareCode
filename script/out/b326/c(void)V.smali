.method public static strictfp c()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5172
    sget-object v3, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    .line 41644
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aU:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aV:Z

    if-eqz v0, :cond_8

    .line 41651
    :cond_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v4

    .line 41654
    iget v0, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    float-to-int v0, v0

    iget v5, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->cE:F

    float-to-int v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 41658
    iget-object v5, v3, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    if-eqz v5, :cond_1

    .line 41663
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    iget v6, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    mul-int/2addr v5, v6

    iget v6, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1

    .line 41665
    const-string v5, "map"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "screen must have changed size, layerBufferSize too small at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adding to LayerBitmapBuffer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41666
    const-string v5, "map"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new viewpoint:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->cE:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41671
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/corrodinggames/rts/game/b/e329;->c(I)V

    .line 41678
    :cond_1
    iget-object v5, v3, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    if-nez v5, :cond_8

    .line 41681
    const-string v5, "map"

    const-string v6, "setupLayerBuffers for size:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41685
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 41688
    sget-boolean v5, Lcom/corrodinggames/rts/gameFramework/k1104;->aU:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/corrodinggames/rts/gameFramework/k1104;->aV:Z

    if-eqz v5, :cond_9

    .line 41706
    :cond_2
    const/16 v5, 0x400

    iput v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    .line 41709
    int-to-float v5, v0

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    .line 41739
    :goto_0
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    mul-int/2addr v5, v8

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    if-ge v5, v8, :cond_4

    .line 41741
    const-string v5, "layerBufferSize is too small"

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41742
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "layerBufferCount:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41743
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "(layerBufferSize*(layerBufferCount):"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    iget v9, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    mul-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41744
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "longest+layerBufferSize+1:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41745
    const-string v5, "longest:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41747
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aU:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aV:Z

    if-eqz v0, :cond_a

    .line 41749
    :cond_3
    iget v0, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    .line 41767
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "layerBufferSize:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 41774
    iget v0, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    add-int/lit8 v0, v0, -0x4

    iput v0, v3, Lcom/corrodinggames/rts/game/b/e329;->j:I

    .line 41785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "layerBuffer:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    mul-int/2addr v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v0, Lcom/corrodinggames/rts/game/b/b326;->J:Z

    if-eqz v0, :cond_b

    const-string v0, " x2 for soft fade "

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41787
    iget v0, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    filled-new-array {v0, v5}, [I

    move-result-object v0

    const-class v5, Lcom/corrodinggames/rts/game/b/f330;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/corrodinggames/rts/game/b/f330;

    iput-object v0, v3, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    .line 41794
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->renderFancyWater:Z

    if-eqz v0, :cond_d

    move v0, v1

    .line 41799
    :goto_3
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->u()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->v()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v0, v1

    .line 41811
    :cond_6
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    if-gtz v5, :cond_7

    .line 41813
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "layerBuffer buffer size was too small at: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 41814
    const/16 v5, 0x200

    iput v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    .line 41817
    :cond_7
    if-eqz v0, :cond_c

    .line 41819
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v2, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    invoke-interface {v0, v2, v5, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(IIZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    iput-object v0, v3, Lcom/corrodinggames/rts/game/b/e329;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 41826
    :goto_4
    iget-object v0, v3, Lcom/corrodinggames/rts/game/b/e329;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 42154
    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->w:Z

    .line 41831
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, v3, Lcom/corrodinggames/rts/game/b/e329;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Lcom/corrodinggames/rts/gameFramework/m/e1216;)Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-result-object v0

    iput-object v0, v3, Lcom/corrodinggames/rts/game/b/e329;->c:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 41834
    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/b/e329;->d()V

    .line 41837
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 41839
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----- layerBuffers create in:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v6

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 5173
    :cond_8
    return-void

    .line 41723
    :cond_9
    const/16 v5, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 41727
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    add-int/lit8 v5, v5, -0x2

    div-int v5, v0, v5

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x4

    iput v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    .line 41734
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    int-to-float v5, v5

    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v5, v8

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x14

    iput v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    goto/16 :goto_0

    .line 41753
    :cond_a
    iget v0, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    goto/16 :goto_1

    .line 41785
    :cond_b
    const-string v0, ""

    goto/16 :goto_2

    .line 41823
    :cond_c
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    iget v8, v3, Lcom/corrodinggames/rts/game/b/e329;->h:I

    invoke-interface {v0, v5, v8, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(IIZ)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    iput-object v0, v3, Lcom/corrodinggames/rts/game/b/e329;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_3
.end method
