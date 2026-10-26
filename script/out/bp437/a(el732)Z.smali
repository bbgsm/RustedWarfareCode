.method public final strictfp a(Lcom/corrodinggames/rts/game/units/el732;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7676
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/el732;IZ)Lcom/corrodinggames/rts/game/units/a/s376;

    move-result-object v2

    .line 7678
    if-eqz v2, :cond_0

    .line 7682
    invoke-virtual {v2, p0}, Lcom/corrodinggames/rts/game/units/a/s376;->g(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7693
    :cond_0
    :goto_0
    return v0

    .line 7686
    :cond_1
    invoke-virtual {v2, p0}, Lcom/corrodinggames/rts/game/units/a/s376;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 7691
    goto :goto_0
.end method
