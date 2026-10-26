.method public static strictfp a(Lcom/corrodinggames/rts/game/n350;)V
    .locals 10

    const/4 v1, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 5084
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aR:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aT:Z

    if-nez v0, :cond_1

    .line 5092
    :cond_0
    return-void

    .line 5089
    :cond_1
    sget-object v3, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    .line 41280
    sget-object v0, Lcom/corrodinggames/rts/game/n350;->n:Landroid/graphics/RectF;

    iget v2, p0, Lcom/corrodinggames/rts/game/n350;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/n350;->c:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 41281
    sget-object v0, Lcom/corrodinggames/rts/game/n350;->n:Landroid/graphics/RectF;

    iget v2, p0, Lcom/corrodinggames/rts/game/n350;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/n350;->c:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 41282
    sget-object v0, Lcom/corrodinggames/rts/game/n350;->n:Landroid/graphics/RectF;

    iget v2, p0, Lcom/corrodinggames/rts/game/n350;->er:F

    iget v4, p0, Lcom/corrodinggames/rts/game/n350;->d:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 41283
    sget-object v0, Lcom/corrodinggames/rts/game/n350;->n:Landroid/graphics/RectF;

    iget v2, p0, Lcom/corrodinggames/rts/game/n350;->er:F

    iget v4, p0, Lcom/corrodinggames/rts/game/n350;->d:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 41284
    sget-object v4, Lcom/corrodinggames/rts/game/n350;->n:Landroid/graphics/RectF;

    move v0, v1

    .line 41075
    :goto_0
    iget v2, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    if-ge v0, v2, :cond_0

    move v2, v1

    .line 41077
    :goto_1
    iget v5, v3, Lcom/corrodinggames/rts/game/b/e329;->a:I

    if-ge v2, v5, :cond_3

    .line 41080
    iget-object v5, v3, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    if-eqz v5, :cond_2

    .line 41082
    iget-object v5, v3, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    .line 41084
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/b/f330;->b()Landroid/graphics/Rect;

    move-result-object v6

    .line 41086
    invoke-static {v6, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41098
    iget-object v6, v5, Lcom/corrodinggames/rts/game/b/f330;->a:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 41099
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/b/f330;->c()I

    move-result v7

    .line 41100
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/b/f330;->d()I

    move-result v8

    iget v9, v3, Lcom/corrodinggames/rts/game/b/e329;->m:F

    .line 41098
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/corrodinggames/rts/game/n350;->a(Lcom/corrodinggames/rts/gameFramework/m/fi1252;IIF)V

    .line 41104
    iget-object v5, v5, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->j()V

    .line 41077
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41075
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
