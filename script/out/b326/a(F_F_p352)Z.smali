.method public final strictfp a(FFLcom/corrodinggames/rts/game/p352;)Z
    .locals 3

    .line 965
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v0, :cond_0

    .line 973
    iget v0, p0, Lcom/corrodinggames/rts/game/b/b326;->r:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 974
    iget v1, p0, Lcom/corrodinggames/rts/game/b/b326;->s:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 976
    iget-object v2, p3, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    aget-object v0, v2, v0

    aget-byte v0, v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
