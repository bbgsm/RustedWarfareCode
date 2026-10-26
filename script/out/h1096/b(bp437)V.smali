.method public final strictfp b(Lcom/corrodinggames/rts/game/units/bp437;)V
    .locals 12

    .line 797
    if-eqz p1, :cond_1

    .line 799
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->p:I

    .line 801
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->p:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->o:Z

    .line 896
    :cond_0
    return-void

    .line 809
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->M()J

    .line 811
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    iget v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->e:[B

    .line 813
    iget-object v4, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->e:[B

    .line 825
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v1, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 842
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 3102
    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 843
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v7

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_0

    .line 845
    aget-object v0, v6, v3

    .line 847
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 849
    iget-boolean v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v1, :cond_5

    .line 861
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->n:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v1}, Lcom/corrodinggames/rts/game/units/ce454;->a(Lcom/corrodinggames/rts/game/b/b326;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 862
    iget v8, v1, Landroid/graphics/Point;->x:I

    .line 863
    iget v9, v1, Landroid/graphics/Point;->y:I

    .line 867
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->c:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bI()Landroid/graphics/Rect;

    move-result-object v0

    .line 876
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    :goto_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v8

    if-gt v1, v2, :cond_5

    .line 878
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v9

    :goto_3
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v9

    if-gt v2, v10, :cond_4

    .line 880
    invoke-virtual {v5, v1, v2}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 882
    iget v10, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v2

    const/4 v11, -0x1

    aput-byte v11, v4, v10

    .line 878
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 873
    :cond_3
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bH()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 876
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 843
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method
