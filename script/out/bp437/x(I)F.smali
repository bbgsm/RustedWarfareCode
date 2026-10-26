.method public strictfp x(I)F
    .locals 2

    .line 10576
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10578
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    .line 10581
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    goto :goto_0
.end method
