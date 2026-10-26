.method public final strictfp W()Lcom/corrodinggames/rts/game/units/ce454;
    .locals 3

    .line 2426
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    if-eqz v0, :cond_1

    .line 2428
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 2429
    if-eqz v0, :cond_1

    .line 2431
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v1, v2, :cond_1

    .line 2433
    :cond_0
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v1, :cond_1

    .line 2435
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2440
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
