.method private strictfp t(Lcom/corrodinggames/rts/game/units/ce454;)F
    .locals 3

    .line 4152
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    invoke-interface {v0}, Lcom/corrodinggames/rts/game/units/el732;->D()F

    move-result v0

    .line 4154
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->U()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4156
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 4158
    :cond_0
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->U()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4160
    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    .line 4163
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->w()F

    move-result v1

    .line 4165
    mul-float/2addr v0, v1

    return v0
.end method
