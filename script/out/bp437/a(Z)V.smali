.method public strictfp a(Z)V
    .locals 6

    .line 10961
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 10963
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_1

    .line 10974
    :cond_0
    :goto_0
    return-void

    .line 10968
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->b_()I

    move-result v3

    .line 10969
    if-lez v3, :cond_0

    .line 10971
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/corrodinggames/rts/game/b/b326;->a(FFILcom/corrodinggames/rts/game/p352;Z)V

    goto :goto_0
.end method
