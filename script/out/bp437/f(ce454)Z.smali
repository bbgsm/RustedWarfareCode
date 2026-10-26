.method public strictfp f(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 1

    .line 7552
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7554
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ad()Z

    move-result v0

    .line 7570
    :goto_0
    return v0

    .line 7556
    :cond_0
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7558
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ac()Z

    move-result v0

    goto :goto_0

    .line 7561
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->af()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7563
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->ck()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7565
    const/4 v0, 0x0

    goto :goto_0

    .line 7570
    :cond_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ae()Z

    move-result v0

    goto :goto_0
.end method
