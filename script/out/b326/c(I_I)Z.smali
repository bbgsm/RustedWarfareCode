.method public final strictfp c(II)Z
    .locals 1

    .line 1094
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
