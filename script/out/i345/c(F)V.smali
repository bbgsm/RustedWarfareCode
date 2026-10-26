.method private strictfp c(F)V
    .locals 12

    .line 3904
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->bD:Z

    if-nez v0, :cond_0

    .line 4456
    :goto_0
    return-void

    .line 3912
    :cond_0
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->h:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3914
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->a()V

    .line 3915
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->dt:I

    .line 3917
    const/4 v0, 0x0

    .line 3919
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->et:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 52216
    iget-object v8, v1, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->c:[Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 3920
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/ah801;->et:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->size()I

    move-result v9

    .line 3922
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    .line 3924
    aget-object v2, v8, v1

    .line 3926
    iget-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/ah801;->en:Z

    .line 3927
    invoke-virtual {v2, p0}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(Lcom/corrodinggames/rts/gameFramework/k1104;)Z

    move-result v4

    .line 3929
    iput-boolean v4, v2, Lcom/corrodinggames/rts/gameFramework/ah801;->en:Z

    .line 3931
    if-eq v3, v4, :cond_1

    .line 3933
    const/4 v0, 0x1

    .line 3936
    :cond_1
    if-eqz v4, :cond_2

    .line 3938
    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->a(Lcom/corrodinggames/rts/gameFramework/ah801;)Z

    .line 3922
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3955
    :cond_3
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->size()I

    move-result v1

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 3957
    const/4 v0, 0x1

    .line 3960
    :cond_4
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/cg911;->h:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3962
    sget-object v1, Lcom/corrodinggames/rts/gameFramework/cg911;->i:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3965
    if-eqz v0, :cond_5

    .line 3969
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 3970
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    iput-object v1, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 3971
    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->W:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 3974
    :cond_5
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->ak()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3976
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/ah801;->ek:Lcom/corrodinggames/rts/gameFramework/ai802;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3978
    :cond_6
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->i:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3982
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->q:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3984
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->s:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3986
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->g()V

    .line 3988
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->cH:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/graphics/Rect;)V

    .line 3990
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->s:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3993
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->r:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3997
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->al()V

    .line 4001
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->r:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4005
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->renderFancyWater:Z

    if-eqz v0, :cond_b

    .line 4007
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->N:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_7

    .line 4009
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v1, Lcom/corrodinggames/rts/R$drawable;->water_cloud:I

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->N:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4011
    :cond_7
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->O:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_8

    .line 4013
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v1, Lcom/corrodinggames/rts/R$drawable;->water_layer1:I

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->O:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4015
    :cond_8
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->P:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_9

    .line 4017
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget v1, Lcom/corrodinggames/rts/R$drawable;->water_layer2:I

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(I)Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->P:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 4020
    :cond_9
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->R:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->cH:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4023
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    .line 4024
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 4026
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    .line 4030
    :cond_a
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->N:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->R:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cr:I

    div-int/lit8 v4, v4, 0x6

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cs:I

    div-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/Paint;IIII)V

    .line 4034
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->R:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->cI:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4035
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->S:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->cI:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4037
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->g()V

    .line 4039
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->I()V

    .line 4041
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->P:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->S:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cr:I

    int-to-float v4, v4

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cs:I

    int-to-float v5, v5

    iget v6, p0, Lcom/corrodinggames/rts/game/i345;->Q:F

    add-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/RectF;Landroid/graphics/Paint;FF)V

    .line 4043
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->O:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->S:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cr:I

    int-to-float v4, v4

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->cs:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/RectF;Landroid/graphics/Paint;FF)V

    .line 4045
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->h()V

    .line 4053
    :cond_b
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->t:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4054
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    if-eqz v0, :cond_c

    .line 4059
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/game/b/b326;->c(F)V

    .line 4065
    :cond_c
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->t:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4069
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->I()V

    .line 4071
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->cI:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/graphics/Rect;)V

    .line 4075
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->ak()Z

    move-result v1

    .line 4081
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->c()V

    .line 4084
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->q:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4088
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    .line 52217
    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->c:[Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 4089
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->size()I

    move-result v4

    .line 4092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cZ:Z

    .line 4093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->da:Z

    .line 4095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->db:Z

    .line 4096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dc:Z

    .line 4098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dd:Z

    .line 4108
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v6, v0

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v0, v6, v10

    if-gez v0, :cond_d

    .line 4110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->db:Z

    .line 4111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cZ:Z

    .line 4112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dd:Z

    .line 4114
    :cond_d
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    float-to-double v6, v0

    const-wide v10, 0x3fd3333333333333L    # 0.3

    cmpg-double v0, v6, v10

    if-gez v0, :cond_e

    .line 4116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dc:Z

    .line 4117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->da:Z

    .line 4121
    :cond_e
    if-nez v1, :cond_10

    .line 4127
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_10

    .line 4129
    aget-object v2, v3, v0

    .line 4132
    iget v5, v2, Lcom/corrodinggames/rts/gameFramework/ah801;->eo:I

    if-nez v5, :cond_f

    .line 4134
    invoke-virtual {v2, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->b(F)Z

    .line 4127
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4140
    :cond_10
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/d/a917;->b()V

    .line 4143
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->g:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4145
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    invoke-virtual {v0, p1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->b(F)I

    .line 4147
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(I)I

    .line 4149
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->g:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4155
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->p:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4158
    if-eqz v1, :cond_14

    .line 4176
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    .line 52218
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->aX:I

    .line 4176
    if-nez v0, :cond_12

    .line 4178
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bK:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xc3

    const/16 v5, 0xc3

    const/16 v6, 0xc3

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 4179
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bL:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 4211
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_13

    .line 4213
    aget-object v1, v3, v0

    .line 4215
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->e(F)Z

    move-result v2

    if-nez v2, :cond_11

    .line 4217
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->b(F)Z

    .line 4211
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4183
    :cond_12
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bK:Landroid/graphics/Paint;

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    const/16 v5, 0xaf

    const/16 v6, 0xaf

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 4184
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bL:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_3

    .line 4226
    :cond_13
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_1c

    .line 4228
    aget-object v1, v3, v0

    .line 4231
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(FZ)V

    .line 4233
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->n(F)V

    .line 4226
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4244
    :cond_14
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_15

    .line 4246
    aget-object v1, v3, v0

    .line 4249
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->c(F)V

    .line 4244
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4256
    :cond_15
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, v9, :cond_18

    .line 4258
    aget-object v1, v8, v2

    .line 4263
    iget-boolean v0, v1, Lcom/corrodinggames/rts/gameFramework/ah801;->en:Z

    if-nez v0, :cond_16

    .line 4265
    instance-of v0, v1, Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_17

    move-object v0, v1

    .line 4267
    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 4268
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->cI:Z

    if-eqz v5, :cond_17

    .line 4273
    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v6, p0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eq v5, v6, :cond_16

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bK()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4301
    :cond_16
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->d(F)V

    .line 4304
    iget-boolean v0, v1, Lcom/corrodinggames/rts/gameFramework/ah801;->en:Z

    if-nez v0, :cond_17

    .line 4308
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->n(F)V

    .line 4256
    :cond_17
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 4339
    :cond_18
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_1a

    .line 4341
    aget-object v1, v3, v0

    .line 4343
    iget v2, v1, Lcom/corrodinggames/rts/gameFramework/ah801;->eo:I

    if-eqz v2, :cond_19

    iget v2, v1, Lcom/corrodinggames/rts/gameFramework/ah801;->eo:I

    const/16 v5, 0xa

    if-eq v2, v5, :cond_19

    .line 4346
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->b(F)Z

    .line 4339
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4355
    :cond_1a
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v4, :cond_1b

    .line 4357
    aget-object v1, v3, v0

    .line 4360
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(FZ)V

    .line 4362
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->n(F)V

    .line 4355
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4367
    :cond_1b
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->H()V

    .line 4372
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->db:Z

    .line 4373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->dc:Z

    .line 4378
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->p:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4383
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->g:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4384
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(I)I

    .line 4385
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->g:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4393
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v4, :cond_1e

    .line 4395
    aget-object v1, v3, v0

    .line 4398
    iget v2, v1, Lcom/corrodinggames/rts/gameFramework/ah801;->eo:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_1d

    .line 4400
    invoke-virtual {v1, p1}, Lcom/corrodinggames/rts/gameFramework/ah801;->b(F)Z

    .line 4393
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4404
    :cond_1e
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->C:Lcom/corrodinggames/rts/gameFramework/d/b918;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/d/b918;->c()V

    .line 4407
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    if-eqz v0, :cond_1f

    .line 4409
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a()V

    .line 4421
    :cond_1f
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->c()V

    .line 4446
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->e:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 4448
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->h()V

    .line 4452
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->e:Lcom/corrodinggames/rts/gameFramework/cg911;

    goto/16 :goto_0
.end method
