.method private strictfp ak()Z
    .locals 7

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3818
    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->showUnitIcons:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 3843
    :cond_1
    :goto_0
    return v0

    .line 3823
    :cond_2
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 3825
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cB:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/b/b326;->f()F

    move-result v3

    sub-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cy:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v3

    sub-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    .line 52215
    :cond_3
    sget-boolean v2, Lcom/corrodinggames/rts/gameFramework/k1104;->bb:Z

    .line 3831
    if-eqz v2, :cond_4

    .line 3833
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 3837
    :cond_4
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->Z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3839
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v2, v2

    const-wide v4, 0x3fd147ae147ae148L    # 0.27

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 3843
    :cond_5
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0
.end method
