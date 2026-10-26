.method private strictfp M()Lcom/corrodinggames/rts/game/units/en734;
    .locals 2

    const/4 v1, 0x1

    .line 8111
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-gt v0, v1, :cond_0

    .line 8113
    const/4 v0, 0x0

    .line 8115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v0, v0, v1

    goto :goto_0
.end method
