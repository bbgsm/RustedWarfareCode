.method private strictfp R(I)Lcom/corrodinggames/rts/game/units/bx445;
    .locals 1

    .line 9404
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-eqz v0, :cond_1

    .line 9406
    if-nez p1, :cond_0

    .line 9408
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dd()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v0

    .line 9417
    :goto_0
    return-object v0

    .line 9410
    :cond_0
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->de()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v0

    goto :goto_0

    .line 9413
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lt p1, v0, :cond_2

    .line 9415
    const/4 v0, 0x0

    goto :goto_0

    .line 9417
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v0, v0, p1

    goto :goto_0
.end method
