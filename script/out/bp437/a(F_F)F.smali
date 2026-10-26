.method public final strictfp a(FF)F
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2186
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dl()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move v3, v1

    .line 2195
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFZZ)F

    move-result v0

    return v0

    :cond_0
    move v0, v2

    move v3, v2

    goto :goto_0
.end method
