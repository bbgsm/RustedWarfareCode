.method private strictfp a(FFFF)Z
    .locals 7

    const/high16 v0, 0x41700000    # 15.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 5374
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    add-float/2addr v2, v3

    invoke-static {v1, v2, p2, p3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v1

    .line 5376
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    add-float/2addr v3, v4

    invoke-static {v2, v3, p2, p3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v2

    .line 5378
    mul-float v3, p4, p1

    .line 5381
    add-float v4, v3, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 5383
    add-float v0, v3, v5

    .line 5386
    :cond_0
    mul-float/2addr v0, v0

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cq:Z

    if-eqz v0, :cond_2

    .line 5388
    :cond_1
    const/4 v0, 0x1

    .line 5409
    :goto_0
    return v0

    .line 5395
    :cond_2
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cz:F

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cz:F

    .line 5396
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cA:F

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cA:F

    .line 5398
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cz:F

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gez v0, :cond_3

    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cA:F

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    .line 5400
    :cond_3
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cz:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    .line 5401
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cA:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    .line 5402
    iput v6, p0, Lcom/corrodinggames/rts/game/i345;->cz:F

    .line 5403
    iput v6, p0, Lcom/corrodinggames/rts/game/i345;->cA:F

    .line 5405
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(FF)V

    .line 5409
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
