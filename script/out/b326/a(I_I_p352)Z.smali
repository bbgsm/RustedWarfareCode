.method public final strictfp a(IILcom/corrodinggames/rts/game/p352;)Z
    .locals 2

    .line 991
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p3, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
