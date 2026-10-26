.method public final strictfp an()Lcom/corrodinggames/rts/game/units/en734;
    .locals 3

    .line 7973
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->Q(I)V

    .line 7975
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 7977
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    new-instance v2, Lcom/corrodinggames/rts/game/units/en734;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/en734;-><init>()V

    aput-object v2, v0, v1

    .line 7980
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    aget-object v0, v0, v1

    .line 7981
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/en734;->b()V

    .line 7982
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 7984
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 7988
    :cond_1
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-lez v1, :cond_2

    .line 7990
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->L()V

    .line 7994
    :cond_2
    return-object v0
.end method
