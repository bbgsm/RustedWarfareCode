.method public final strictfp aa()Lcom/corrodinggames/rts/game/units/ce454;
    .locals 2

    .line 6831
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v0, :cond_0

    .line 6833
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 6843
    :goto_0
    return-object v0

    .line 6835
    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 6836
    if-eqz v0, :cond_1

    .line 6838
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v1, :cond_1

    .line 6840
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    goto :goto_0

    .line 6843
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
