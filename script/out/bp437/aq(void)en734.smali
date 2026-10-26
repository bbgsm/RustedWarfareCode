.method public final strictfp aq()Lcom/corrodinggames/rts/game/units/en734;
    .locals 2

    .line 8120
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-nez v0, :cond_0

    .line 8122
    const/4 v0, 0x0

    .line 8124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
