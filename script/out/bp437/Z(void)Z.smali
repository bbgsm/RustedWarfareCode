.method public final strictfp Z()Z
    .locals 4

    const/4 v0, 0x0

    .line 6810
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v1, :cond_0

    .line 6812
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v2

    move v1, v0

    .line 6814
    :goto_0
    if-ge v1, v2, :cond_0

    .line 6816
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v3, :cond_1

    .line 6818
    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->m(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6820
    const/4 v0, 0x1

    .line 6825
    :cond_0
    return v0

    .line 6814
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
