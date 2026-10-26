.method public final strictfp R()Landroid/graphics/Paint;
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->di()Z

    move-result v0

    .line 334
    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aH:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aG:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    goto :goto_0
.end method
