.method public strictfp aY()I
    .locals 1

    .line 10929
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10931
    const/16 v0, 0x8

    .line 10939
    :goto_0
    return v0

    .line 10934
    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10936
    const/4 v0, 0x7

    goto :goto_0

    .line 10939
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
