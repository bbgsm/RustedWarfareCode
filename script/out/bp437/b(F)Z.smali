.method public strictfp b(F)Z
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 9665
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 9666
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 9668
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aA()Landroid/graphics/Paint;

    move-result-object v5

    .line 9670
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cg()F

    move-result v6

    .line 9673
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ey:Z

    if-eqz v2, :cond_2

    .line 9675
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cA()Landroid/graphics/PointF;

    move-result-object v3

    .line 9677
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget v4, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    sub-float/2addr v2, v4

    .line 9678
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    sub-float v1, v3, v1

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    sub-float v3, v1, v3

    .line 9682
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aD()Z

    .line 9684
    cmpl-float v1, v6, v8

    if-eqz v1, :cond_0

    .line 9686
    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->i()V

    .line 9687
    invoke-interface {v0, v6, v6, v2, v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(FFFF)V

    .line 9690
    :cond_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->M:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {p0, v9}, Lcom/corrodinggames/rts/game/units/bp437;->c(Z)F

    move-result v4

    const/high16 v7, 0x42b40000    # 90.0f

    sub-float/2addr v4, v7

    invoke-interface/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;FFFLandroid/graphics/Paint;)V

    .line 9693
    cmpl-float v1, v6, v8

    if-eqz v1, :cond_1

    .line 9695
    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->j()V

    .line 9740
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 9702
    :cond_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cA()Landroid/graphics/PointF;

    move-result-object v1

    .line 9703
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ci()Landroid/graphics/RectF;

    move-result-object v2

    .line 9706
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 9707
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    sub-float/2addr v1, v4

    .line 9708
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 9709
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 9710
    iget v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 9711
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 9713
    invoke-virtual {p0, v9}, Lcom/corrodinggames/rts/game/units/bp437;->b(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 9716
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v10

    .line 9719
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v7

    mul-float/2addr v4, v10

    .line 9721
    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->i()V

    .line 9724
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aD()Z

    .line 9727
    cmpl-float v7, v6, v8

    if-eqz v7, :cond_3

    .line 9729
    invoke-interface {v0, v6, v6, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(FFFF)V

    .line 9732
    :cond_3
    invoke-virtual {p0, v9}, Lcom/corrodinggames/rts/game/units/bp437;->c(Z)F

    move-result v6

    invoke-interface {v0, v6, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(FFF)V

    .line 9734
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->M:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-interface {v0, v3, v1, v2, v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9735
    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->j()V

    goto :goto_0
.end method
