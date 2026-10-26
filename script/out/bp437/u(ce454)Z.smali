.method private strictfp u(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7481
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v3

    move v2, v1

    .line 7483
    :goto_0
    if-ge v2, v3, :cond_2

    .line 7489
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->m(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7491
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v4

    .line 7492
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 7494
    invoke-virtual {p0, v4, p1, v0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7504
    :cond_0
    :goto_1
    return v0

    .line 7483
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7504
    goto :goto_1
.end method
