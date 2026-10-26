.method private strictfp am()V
    .locals 9

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 4583
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->N()F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cg:F

    .line 4586
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->O()V

    .line 4588
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cl:F

    .line 4589
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cj:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cm:F

    .line 4592
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cj:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    .line 4594
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4596
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cj:F

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    .line 4599
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    .line 4601
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 4603
    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    .line 4607
    :cond_1
    const/high16 v0, 0x437a0000    # 250.0f

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cg:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4609
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    const/high16 v2, 0x42700000    # 60.0f

    int-to-float v0, v0

    invoke-static {v1, v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFF)F

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    .line 4613
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cv:F

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    add-float/2addr v0, v1

    .line 4614
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->cw:F

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    .line 4616
    iget-boolean v3, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    if-eqz v3, :cond_5

    .line 4619
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    .line 4627
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    .line 4647
    :goto_0
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 4649
    iput v6, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    .line 4651
    :cond_2
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    .line 4653
    iput v6, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    .line 4656
    :cond_3
    iget-boolean v3, p0, Lcom/corrodinggames/rts/game/i345;->cO:Z

    iget-boolean v4, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    if-eq v3, v4, :cond_4

    .line 4658
    iget-boolean v3, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    if-nez v3, :cond_7

    .line 4660
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 4668
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/i345;->cO:Z

    .line 4671
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cj:F

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cE:F

    .line 4674
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cx:F

    .line 4675
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cE:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cy:F

    .line 4677
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cB:F

    .line 4680
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cx:F

    div-float/2addr v3, v5

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    .line 4681
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cy:F

    div-float/2addr v3, v5

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    .line 4685
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->cH:Landroid/graphics/Rect;

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    float-to-int v4, v4

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cE:F

    float-to-int v5, v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4687
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->cI:Landroid/graphics/Rect;

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cx:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cy:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4688
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->cJ:Landroid/graphics/RectF;

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cx:F

    add-float/2addr v4, v6

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cy:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v8, v8, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4692
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cF:F

    sub-float/2addr v0, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cG:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(FF)V

    .line 4697
    return-void

    .line 4633
    :cond_5
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v6

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    .line 4636
    sget-boolean v3, Lcom/corrodinggames/rts/gameFramework/f/i988;->bO:Z

    if-eqz v3, :cond_6

    .line 4638
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    goto/16 :goto_0

    .line 4642
    :cond_6
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cD:F

    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->cC:F

    goto/16 :goto_0

    .line 4664
    :cond_7
    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cn:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    goto :goto_1
.end method
