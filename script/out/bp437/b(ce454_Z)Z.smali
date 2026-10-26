.method public final strictfp b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z
    .locals 1

    .line 7797
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7799
    const/4 v0, 0x0

    .line 7802
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v0

    goto :goto_0
.end method
