.method public final strictfp d(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 4

    .line 7398
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v3, p1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    .line 7399
    invoke-direct {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->v(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v1

    .line 7411
    mul-float/2addr v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7413
    const/4 v0, 0x1

    .line 7415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
