.method public final strictfp f(F)V
    .locals 1

    .line 294
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 296
    iput p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    .line 298
    :cond_0
    return-void
.end method
