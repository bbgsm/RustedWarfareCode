.method public final strictfp a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7730
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v3, p1, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eq v2, v3, :cond_0

    iget-boolean v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v3, p1, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7791
    :cond_0
    :goto_0
    return v0

    .line 7735
    :cond_1
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v3, Lcom/corrodinggames/rts/game/units/a384;->d:Lcom/corrodinggames/rts/game/units/a384;

    if-eq v2, v3, :cond_0

    .line 7740
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v3, Lcom/corrodinggames/rts/game/units/a384;->c:Lcom/corrodinggames/rts/game/units/a384;

    if-eq v2, v3, :cond_0

    .line 7746
    iget-object v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v2, :cond_0

    .line 7751
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->f(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7756
    invoke-virtual {p1, p0}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7762
    if-nez p2, :cond_2

    .line 7764
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v4, p1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v5, p1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v2, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v2

    .line 7771
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v3

    .line 7779
    mul-float/2addr v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 7784
    goto :goto_0

    :cond_2
    move v0, v1

    .line 7791
    goto :goto_0
.end method
