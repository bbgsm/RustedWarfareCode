.method public final strictfp m(F)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x0

    .line 11410
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 11417
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11419
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 11420
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    mul-float/2addr v1, p1

    mul-float/2addr v0, p1

    move v2, v1

    .line 11441
    :goto_0
    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->bo:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 11442
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bo:Landroid/graphics/PointF;

    return-object v0

    .line 11424
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 11426
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 11428
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11430
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cj:F

    .line 11432
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v1

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    mul-float/2addr v1, v2

    mul-float v2, v1, p1

    .line 11434
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v3

    .line 11435
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v0

    mul-float v1, v0, v2

    mul-float v0, v3, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method
