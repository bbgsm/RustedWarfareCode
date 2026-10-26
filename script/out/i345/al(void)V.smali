.method private strictfp al()V
    .locals 3

    const/4 v1, 0x0

    .line 3866
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cN:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cN:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cN:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 3878
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/b326;->f()F

    move-result v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cN:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 3880
    :cond_0
    const/4 v0, 0x1

    .line 3883
    :goto_0
    if-eqz v0, :cond_1

    .line 3885
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(I)V

    .line 3888
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
