.method private strictfp df()Z
    .locals 8

    const/4 v1, 0x1

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/4 v0, 0x0

    .line 8637
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-eqz v2, :cond_1

    .line 8663
    :cond_0
    :goto_0
    return v0

    .line 8643
    :cond_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 8645
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 8648
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->Z:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    .line 8650
    goto :goto_0

    .line 8656
    :cond_3
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->Z:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    :cond_4
    move v0, v1

    .line 8658
    goto :goto_0
.end method
