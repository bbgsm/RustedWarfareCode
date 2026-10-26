.method public final strictfp bf()I
    .locals 7

    const/high16 v6, 0x42c80000    # 100.0f

    .line 11382
    invoke-super {p0}, Lcom/corrodinggames/rts/game/units/c449;->bf()I

    move-result v0

    .line 11383
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 11384
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->z()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 11385
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->l()F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 11386
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->b(I)F

    move-result v4

    float-to-int v4, v4

    .line 11387
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->B()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 11388
    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    return v0
.end method
