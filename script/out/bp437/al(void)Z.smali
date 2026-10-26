.method public strictfp al()Z
    .locals 2

    .line 7813
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v1, Lcom/corrodinggames/rts/game/units/a384;->a:Lcom/corrodinggames/rts/game/units/a384;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v1, Lcom/corrodinggames/rts/game/units/a384;->e:Lcom/corrodinggames/rts/game/units/a384;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v1, Lcom/corrodinggames/rts/game/units/a384;->f:Lcom/corrodinggames/rts/game/units/a384;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
