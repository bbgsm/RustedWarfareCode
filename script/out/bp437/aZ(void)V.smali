.method public strictfp aZ()V
    .locals 2

    .line 10944
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10946
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/n350;->a(FF)V

    .line 10948
    :cond_0
    return-void
.end method
