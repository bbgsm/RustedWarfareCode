.method public final strictfp j(Lcom/corrodinggames/rts/game/units/ce454;)I
    .locals 4

    .line 10209
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 10212
    const/4 v0, 0x0

    .line 10214
    invoke-direct {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->w(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v2

    .line 10215
    const/high16 v3, 0x42680000    # 58.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 10221
    const/high16 v0, 0x42240000    # 41.0f

    sub-float v0, v2, v0

    iget-object v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v1, v1, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v1, v1

    const v2, 0x3fb4fdf4    # 1.414f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 10226
    :cond_0
    return v0
.end method
