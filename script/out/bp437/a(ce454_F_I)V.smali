.method public strictfp a(Lcom/corrodinggames/rts/game/units/ce454;FI)V
    .locals 12

    .line 11487
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    invoke-static {v0, p2}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    .line 11488
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 11490
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->W:F

    .line 11492
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->i_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11494
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aW()Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    move-result-object v7

    .line 11496
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 11498
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, v7, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->a:F

    iget v2, v7, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->b:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    iget v4, v7, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->c:F

    add-float/2addr v3, v4

    sget v4, Lcom/corrodinggames/rts/gameFramework/d/d920;->a:I

    const/4 v5, 0x0

    sget-object v6, Lcom/corrodinggames/rts/gameFramework/d/h924;->b:Lcom/corrodinggames/rts/gameFramework/d/h924;

    invoke-virtual/range {v0 .. v6}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(FFFIZLcom/corrodinggames/rts/gameFramework/d/h924;)Lcom/corrodinggames/rts/gameFramework/d/e921;

    move-result-object v0

    .line 11499
    if-eqz v0, :cond_0

    .line 11501
    iget v1, p1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    float-to-double v2, v1

    const-wide/high16 v4, -0x3fe0000000000000L    # -8.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 11502
    iget v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    float-to-double v2, v2

    const-wide/high16 v4, -0x3fe0000000000000L    # -8.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 11503
    iget v3, v7, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->a:F

    iget v4, v7, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->b:F

    invoke-static {v3, v4, v1, v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v1

    .line 11504
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FF)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->P:F

    .line 11505
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FF)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->Q:F

    .line 11506
    const/4 v1, 0x6

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->ap:I

    .line 11507
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    .line 11508
    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->W:F

    .line 11509
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->r:Z

    .line 11510
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->E:F

    .line 11515
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->G:F

    .line 11516
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->F:F

    .line 11523
    :cond_0
    return-void
.end method
