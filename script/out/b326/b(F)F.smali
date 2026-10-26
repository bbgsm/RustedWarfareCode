.method public final strictfp b(F)F
    .locals 2

    const/4 v0, 0x0

    .line 1086
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result p1

    .line 1088
    :cond_1
    return p1
.end method
