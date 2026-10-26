.method public final strictfp a(Lcom/corrodinggames/rts/game/units/bp437;)V
    .locals 2

    .line 8423
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_0

    .line 8425
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    .line 8427
    :cond_0
    iput-object p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    .line 8428
    if-eqz p1, :cond_1

    .line 8430
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    .line 8432
    :cond_1
    return-void
.end method
