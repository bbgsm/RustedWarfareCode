.method private strictfp a(Lcom/corrodinggames/rts/gameFramework/k1104;FF)V
    .locals 7

    .line 6849
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aS:Lcom/corrodinggames/rts/game/units/bw444;

    invoke-virtual {v0, p3}, Lcom/corrodinggames/rts/game/units/bw444;->a(F)V

    .line 6850
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/k1104;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    sget-object v6, Lcom/corrodinggames/rts/game/units/bp437;->aS:Lcom/corrodinggames/rts/game/units/bw444;

    move v3, p3

    move-object v4, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/corrodinggames/rts/game/units/f/c738;->a(FFFLcom/corrodinggames/rts/game/units/bp437;FLcom/corrodinggames/rts/game/units/f/i744;)V

    .line 6852
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aS:Lcom/corrodinggames/rts/game/units/bw444;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/bw444;->a:I

    if-eqz v0, :cond_1

    .line 6855
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->d(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6858
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aT:Lcom/corrodinggames/rts/game/units/bw444;

    invoke-virtual {v0, p3}, Lcom/corrodinggames/rts/game/units/bw444;->a(F)V

    .line 6859
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/k1104;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    sget-object v6, Lcom/corrodinggames/rts/game/units/bp437;->aT:Lcom/corrodinggames/rts/game/units/bw444;

    move v3, p3

    move-object v4, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/corrodinggames/rts/game/units/f/c738;->a(FFFLcom/corrodinggames/rts/game/units/bp437;FLcom/corrodinggames/rts/game/units/f/i744;)V

    .line 6865
    :cond_1
    return-void
.end method
