.method public static strictfp a_(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/custom/d/b579;
    .locals 1

    .line 4179
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/ce454;->bA:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    if-eqz v0, :cond_0

    .line 4181
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/ce454;->bA:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 4185
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/ce454;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    invoke-interface {v0}, Lcom/corrodinggames/rts/game/units/el732;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    goto :goto_0
.end method
