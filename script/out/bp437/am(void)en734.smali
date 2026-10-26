.method public final strictfp am()Lcom/corrodinggames/rts/game/units/en734;
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x1d

    const/4 v5, 0x0

    .line 7888
    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->Q(I)V

    .line 7890
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-lez v0, :cond_0

    .line 52418
    iput-boolean v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 7895
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v2, v0, v1

    move v0, v1

    .line 7899
    :goto_0
    if-lez v0, :cond_1

    .line 7901
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v0

    .line 7899
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7903
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aput-object v2, v0, v5

    .line 7905
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-ge v0, v1, :cond_2

    .line 7907
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 7910
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 7912
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    new-instance v1, Lcom/corrodinggames/rts/game/units/en734;

    invoke-direct {v1}, Lcom/corrodinggames/rts/game/units/en734;-><init>()V

    aput-object v1, v0, v5

    .line 7915
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v0, v0, v5

    .line 7918
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/en734;->b()V

    .line 7921
    iput v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    .line 7922
    iput v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 7924
    iput v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 7927
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->L()V

    .line 7930
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 7933
    return-object v0
.end method
