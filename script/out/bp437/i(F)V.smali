.method public strictfp i(F)V
    .locals 7

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    .line 2303
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 2304
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 2305
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 2307
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aV()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2309
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v1

    .line 2310
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 2312
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v0

    .line 2314
    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    add-float/2addr v3, p1

    iput v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 2316
    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 2317
    :cond_2
    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 2310
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2321
    :cond_4
    return-void
.end method
