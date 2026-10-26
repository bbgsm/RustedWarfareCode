.method public final strictfp ar()V
    .locals 2

    .line 8129
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-nez v0, :cond_0

    .line 8141
    :goto_0
    return-void

    .line 8133
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8135
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto :goto_0

    .line 8139
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    goto :goto_0
.end method
