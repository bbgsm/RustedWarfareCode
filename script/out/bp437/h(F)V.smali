.method public final strictfp h(F)V
    .locals 6

    .line 2201
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, p1, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v0

    .line 2203
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 2206
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->i(F)V

    .line 2210
    :cond_0
    return-void
.end method
