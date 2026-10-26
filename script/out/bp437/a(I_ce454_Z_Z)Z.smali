.method public strictfp a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z
    .locals 1

    .line 7531
    if-nez p3, :cond_0

    .line 7533
    if-eqz p4, :cond_0

    .line 7535
    invoke-virtual {p0, p2}, Lcom/corrodinggames/rts/game/units/bp437;->d(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7537
    const/4 v0, 0x0

    .line 7542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
