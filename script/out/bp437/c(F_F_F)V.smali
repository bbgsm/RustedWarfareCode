.method private strictfp c(FFF)V
    .locals 8

    const/high16 v7, 0x44160000    # 600.0f

    const/high16 v6, 0x43340000    # 180.0f

    .line 5153
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    const/high16 v1, -0x3b9f0000    # -900.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5155
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1, p2, p3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v0

    .line 5156
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    .line 5160
    :cond_0
    const v0, 0x461c4000    # 10000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 5162
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    .line 5169
    :cond_1
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    if-eqz v0, :cond_3

    .line 5171
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cD:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aN()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const v0, 0x471c4000    # 40000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cD:F

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aN()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 5174
    :cond_2
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    add-float/2addr v1, v6

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v1

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 5175
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    add-float/2addr v1, v6

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v1

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 5190
    :cond_3
    :goto_0
    return-void

    .line 5180
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    .line 5181
    const v0, -0x3b864000    # -999.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    .line 5182
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    goto :goto_0
.end method
