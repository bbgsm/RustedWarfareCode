.method public final strictfp ba()V
    .locals 5

    const/high16 v4, 0x41200000    # 10.0f

    .line 10986
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 10988
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 10989
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bI()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10991
    iget v1, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v3, v3, Lcom/corrodinggames/rts/game/b/b326;->o:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 10992
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v3, v3, Lcom/corrodinggames/rts/game/b/b326;->o:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 10994
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v3, v3, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 10995
    iget v1, v2, Landroid/graphics/RectF;->right:F

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 10997
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 11001
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cB()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cC()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 11007
    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 11008
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 11010
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 11011
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 11014
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    .line 11016
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 11018
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_0

    .line 11021
    if-eq v0, p0, :cond_0

    .line 52477
    iget v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 52480
    const/4 v1, 0x1

    .line 11021
    :goto_1
    if-eqz v1, :cond_0

    .line 11023
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_1

    .line 11025
    iget-boolean v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v1, :cond_1

    .line 11027
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->a()V

    .line 11030
    :cond_1
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/cd453;

    if-eqz v1, :cond_0

    .line 11032
    check-cast v0, Lcom/corrodinggames/rts/game/units/cd453;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/cd453;->j()V

    goto :goto_0

    .line 52483
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 11039
    :cond_3
    return-void
.end method
