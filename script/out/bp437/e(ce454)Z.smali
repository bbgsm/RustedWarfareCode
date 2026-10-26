.method public final strictfp e(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 5

    const/4 v0, 0x0

    .line 7454
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v2

    move v1, v0

    .line 7456
    :goto_0
    if-ge v1, v2, :cond_1

    .line 7462
    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->m(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, p1, v0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7464
    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v3

    .line 7465
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 7467
    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7473
    :cond_0
    const/4 v0, 0x1

    .line 7476
    :cond_1
    return v0

    .line 7456
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
