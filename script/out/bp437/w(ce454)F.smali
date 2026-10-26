.method private strictfp w(Lcom/corrodinggames/rts/game/units/ce454;)F
    .locals 2

    .line 10191
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 10193
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aH()F

    move-result v0

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v0, v1

    .line 10197
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aH()F

    move-result v0

    goto :goto_0
.end method
