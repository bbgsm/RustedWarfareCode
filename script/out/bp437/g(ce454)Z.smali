.method public strictfp g(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 3

    const/4 v0, 0x1

    .line 7583
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->f()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/corrodinggames/rts/game/units/bp437;->f(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7588
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    goto :goto_0
.end method
