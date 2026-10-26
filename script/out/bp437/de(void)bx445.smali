.method private strictfp de()Lcom/corrodinggames/rts/game/units/bx445;
    .locals 2

    .line 8604
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 8606
    const/4 v0, 0x0

    .line 8614
    :goto_0
    return-object v0

    .line 8609
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-eqz v0, :cond_1

    .line 8611
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    invoke-virtual {v0, p0}, Lcom/corrodinggames/rts/gameFramework/k/c1091;->b(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v0

    goto :goto_0

    .line 8614
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
