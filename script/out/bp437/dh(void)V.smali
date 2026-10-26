.method private strictfp dh()V
    .locals 4

    const/4 v0, 0x0

    .line 8717
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Z:F

    .line 8719
    const/4 v1, 0x0

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 8722
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-eqz v1, :cond_1

    .line 8748
    :cond_0
    :goto_0
    return-void

    .line 8729
    :cond_1
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-eqz v1, :cond_0

    .line 8734
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 8738
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    goto :goto_0

    .line 8741
    :cond_2
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v1, v1, v0

    .line 8742
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 8744
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v0

    .line 8742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8746
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 8747
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    goto :goto_0
.end method
