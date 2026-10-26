.method public strictfp p(I)Z
    .locals 2

    .line 10365
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v0

    .line 10366
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10368
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/ch457;->g:Z

    .line 10372
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/ch457;->g:Z

    goto :goto_0
.end method
