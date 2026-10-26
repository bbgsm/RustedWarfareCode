.method public final strictfp d(II)Lcom/corrodinggames/rts/game/b/i333;
    .locals 2

    const/4 v0, 0x0

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-object v0

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->y:Lcom/corrodinggames/rts/game/b/g331;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->y:Lcom/corrodinggames/rts/game/b/g331;

    invoke-virtual {v0, p1, p2}, Lcom/corrodinggames/rts/game/b/g331;->a(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v0

    goto :goto_0
.end method
