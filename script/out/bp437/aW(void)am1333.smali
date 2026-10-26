.method public final strictfp aW()Lcom/corrodinggames/rts/gameFramework/utility/am1333;
    .locals 2

    .line 10587
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aG()I

    move-result v0

    .line 10588
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->y(I)Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    move-result-object v0

    .line 10594
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->y(I)Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    move-result-object v0

    goto :goto_0
.end method
