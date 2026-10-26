.method public strictfp E()Z
    .locals 2

    .line 9984
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->co:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
