.method private strictfp a(FLcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V
    .locals 10

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2900
    invoke-virtual {p2}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v4

    .line 2901
    invoke-virtual {p2}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v5

    .line 2902
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v6

    .line 2905
    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v0, :cond_1

    .line 2907
    :cond_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 2908
    const/4 p2, 0x0

    .line 2911
    :cond_1
    if-eqz p2, :cond_a

    .line 2917
    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2919
    const v0, 0x44704000    # 961.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    .line 2921
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 2923
    :cond_2
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    move v0, v1

    .line 2928
    :goto_0
    const/high16 v3, 0x41a80000    # 21.0f

    .line 2930
    iget-object v7, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v7}, Lcom/corrodinggames/rts/game/units/ce454;->bH()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2932
    const/high16 v3, 0x41300000    # 11.0f

    .line 2935
    :cond_3
    iget v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 2937
    iget-object v3, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v3, v3, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    iget v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    add-float/2addr v3, v7

    const/high16 v7, 0x41f80000    # 31.0f

    add-float/2addr v3, v7

    .line 2940
    :cond_4
    mul-float/2addr v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_5

    move v0, v1

    .line 2960
    :cond_5
    :goto_1
    if-nez v0, :cond_9

    .line 2965
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 2966
    iput v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 2967
    iput v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 2974
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 2976
    iget-object v3, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2978
    iget-object v3, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/units/ce454;->bH()Landroid/graphics/Rect;

    move-result-object v3

    .line 2980
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v4, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(II)I

    move-result v3

    .line 2982
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 2985
    :cond_6
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_7

    iput v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 2987
    :cond_7
    const/16 v3, 0x12

    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 2990
    const v3, 0x473d1000    # 48400.0f

    cmpg-float v3, v6, v3

    if-gez v3, :cond_8

    .line 2992
    iput-boolean v2, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3002
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_8

    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dd()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v3

    if-nez v3, :cond_8

    .line 3004
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 3010
    :cond_8
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_9

    .line 3012
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3014
    iput-boolean v2, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3021
    :cond_9
    if-eqz v0, :cond_a

    .line 3023
    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 3024
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/af499;->i:Lcom/corrodinggames/rts/game/units/custom/af499;

    invoke-virtual {p0, v1, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/custom/af499;Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 3026
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 3031
    :cond_a
    return-void

    .line 2950
    :cond_b
    iget-object v0, p2, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    add-float/2addr v0, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v0, v3

    .line 2953
    mul-float/2addr v0, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_c

    move v0, v1

    .line 2955
    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method
