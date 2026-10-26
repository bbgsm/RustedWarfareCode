.method private strictfp a(Lcom/corrodinggames/rts/gameFramework/k1104;F)V
    .locals 10

    .line 7007
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v8

    .line 7010
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 52175
    const/4 v0, 0x0

    .line 7012
    :goto_0
    if-eqz v0, :cond_2b

    .line 7014
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7017
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v2, :cond_32

    .line 52189
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/ce454;->cR:Lcom/corrodinggames/rts/game/units/custom/b/n533;

    .line 7024
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v2, :cond_0

    .line 7026
    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/units/custom/b/n533;->L:Z

    if-eqz v1, :cond_0

    .line 7028
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-ne v1, v2, :cond_0

    .line 7030
    const/4 v0, 0x1

    .line 7035
    :cond_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v1

    if-nez v1, :cond_31

    if-nez v0, :cond_31

    .line 7041
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    move v7, v0

    .line 7046
    :goto_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_2f

    if-nez v7, :cond_2f

    .line 7048
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->d(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 7051
    :goto_2
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    invoke-static {v1, p2}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    .line 7052
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    invoke-static {v1, p2}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    .line 7055
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 7057
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 7059
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7061
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    .line 7064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v0

    .line 7076
    invoke-direct {p0, p1, p2, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/gameFramework/k1104;FF)V

    .line 7078
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_2

    .line 7080
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    .line 7087
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_f

    .line 7089
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 7091
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    .line 52190
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v9

    .line 52192
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ab()Z

    move-result v0

    if-nez v0, :cond_6

    .line 52194
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_f

    .line 52196
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v2, v1, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52194
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 52188
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/ce454;->cR:Lcom/corrodinggames/rts/game/units/custom/b/n533;

    .line 52179
    if-eqz v0, :cond_4

    .line 52181
    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/custom/b/n533;->M:Z

    if-nez v0, :cond_4

    .line 52183
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 52187
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 7048
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 52201
    :cond_6
    const/4 v0, 0x0

    .line 52204
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_9

    .line 52206
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v1

    .line 52208
    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 52216
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 52218
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52204
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 52222
    :cond_8
    const/4 v0, 0x1

    .line 52224
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-ne v3, v4, :cond_7

    .line 52226
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    goto :goto_5

    .line 52237
    :cond_9
    if-eqz v0, :cond_d

    .line 52239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v3

    .line 52245
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->aV:Lcom/corrodinggames/rts/game/units/bz447;

    .line 52292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v2

    .line 52293
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v0

    iput v0, v4, Lcom/corrodinggames/rts/game/units/bz447;->d:I

    .line 52295
    const/4 v0, 0x0

    :goto_6
    iget v1, v4, Lcom/corrodinggames/rts/game/units/bz447;->d:I

    if-ge v0, v1, :cond_c

    .line 52297
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->u(I)F

    move-result v1

    .line 52299
    cmpl-float v5, v1, v2

    if-lez v5, :cond_a

    move v1, v2

    .line 52303
    :cond_a
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/bz447;->b:[F

    mul-float/2addr v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v1, v6

    aput v1, v5, v0

    .line 52305
    iget-object v1, v4, Lcom/corrodinggames/rts/game/units/bz447;->c:[Z

    const/4 v5, 0x0

    aput-boolean v5, v1, v0

    .line 52309
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    .line 52311
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v1, :cond_b

    .line 52313
    iget-object v1, v4, Lcom/corrodinggames/rts/game/units/bz447;->c:[Z

    const/4 v5, 0x1

    aput-boolean v5, v1, v0

    .line 52295
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 52327
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/corrodinggames/rts/game/units/bz447;->f:Z

    .line 52246
    iget-object v0, p1, Lcom/corrodinggames/rts/gameFramework/k1104;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    sget-object v6, Lcom/corrodinggames/rts/game/units/bp437;->aV:Lcom/corrodinggames/rts/game/units/bz447;

    move-object v4, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/corrodinggames/rts/game/units/f/c738;->a(FFFLcom/corrodinggames/rts/game/units/bp437;FLcom/corrodinggames/rts/game/units/f/i744;)V

    .line 52280
    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v9, :cond_f

    .line 52282
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v1

    .line 52283
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 52286
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v1, v2, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52280
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7098
    :cond_f
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v8, :cond_10

    .line 7100
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/corrodinggames/rts/game/units/ch457;->g:Z

    .line 7098
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7103
    :cond_10
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_2b

    .line 7109
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v2, v2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v3, v3, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    .line 7112
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->v(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v1

    .line 7114
    mul-float/2addr v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_11

    if-eqz v7, :cond_2a

    .line 7117
    :cond_11
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aG()I

    move-result v3

    .line 7119
    const/4 v0, 0x0

    move v2, v0

    :goto_9
    if-ge v2, v8, :cond_1d

    .line 7122
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v4, v0, v2

    .line 7125
    iget-object v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 7126
    if-eqz v1, :cond_12

    .line 7132
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-ne v1, v0, :cond_13

    const/4 v0, 0x1

    .line 7135
    :goto_a
    if-nez v0, :cond_14

    .line 7138
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v5

    if-nez v5, :cond_14

    .line 7140
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 7119
    :cond_12
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 7132
    :cond_13
    const/4 v0, 0x0

    goto :goto_a

    .line 7147
    :cond_14
    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 7149
    :goto_c
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v1, v5, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v0

    if-nez v0, :cond_16

    .line 7151
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    goto :goto_b

    .line 7147
    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    .line 7158
    :cond_16
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->B(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 7160
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->F(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 7162
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v7, v1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 7163
    iget v6, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    add-float/2addr v1, v6

    iput v1, v5, Landroid/graphics/PointF;->y:F

    .line 7165
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, v6, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v5

    .line 7167
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    if-eq v2, v3, :cond_12

    .line 7170
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->D()Z

    move-result v0

    if-nez v0, :cond_19

    .line 7173
    const/16 v0, 0x46

    invoke-virtual {v4, v0}, Lcom/corrodinggames/rts/game/units/ch457;->a(I)V

    .line 7176
    iget v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    iput v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->b:F

    .line 7178
    const/high16 v0, 0x43330000    # 179.0f

    .line 52329
    iget v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->d:F

    const/4 v6, 0x0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_18

    const/4 v1, 0x1

    .line 7180
    :goto_d
    if-nez v1, :cond_17

    .line 7182
    invoke-virtual {p0, p2, v5, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFI)F

    move-result v0

    .line 7185
    :cond_17
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->s(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 7187
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->g:Z

    goto :goto_b

    .line 52329
    :cond_18
    const/4 v1, 0x0

    goto :goto_d

    .line 7192
    :cond_19
    const/4 v0, 0x0

    .line 7194
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v1

    .line 7196
    if-eqz v1, :cond_1b

    .line 7198
    iget-object v6, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v7, Lcom/corrodinggames/rts/game/units/eo735;->c:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v6, v7, :cond_1a

    iget-object v6, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v7, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v6, v7, :cond_1a

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v1, v6, :cond_1b

    .line 7202
    :cond_1a
    const/4 v0, 0x1

    .line 7209
    :cond_1b
    if-nez v0, :cond_12

    .line 7211
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7213
    :cond_1c
    invoke-virtual {p0, p2, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(FF)F

    move-result v0

    .line 7215
    iget v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->b:F

    .line 7217
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->s(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 7219
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/corrodinggames/rts/game/units/ch457;->g:Z

    goto/16 :goto_b

    .line 7230
    :cond_1d
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v8, :cond_2c

    .line 7232
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v1, v2

    .line 7234
    iget-object v3, v1, Lcom/corrodinggames/rts/game/units/ch457;->j:Lcom/corrodinggames/rts/game/units/ce454;

    .line 7235
    if-eqz v3, :cond_22

    .line 7241
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->p(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 7243
    iget v1, v1, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1e

    .line 7245
    const/4 v0, 0x1

    .line 7249
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->p(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 52330
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v4, v1, v2

    .line 52332
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->q(I)I

    move-result v1

    .line 52333
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1f

    .line 52335
    iget-object v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v5, v1

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 52338
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->n(I)Z

    move-result v5

    .line 52339
    const/4 v1, 0x0

    .line 52341
    if-eqz v5, :cond_21

    .line 52343
    iget v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_23

    .line 52345
    iget v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-nez v1, :cond_20

    .line 52347
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->k(I)V

    .line 52350
    :cond_20
    iget v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    add-float/2addr v1, p2

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    .line 52357
    :goto_f
    const/4 v1, 0x1

    .line 52360
    :cond_21
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_22

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->m(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 52366
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILcom/corrodinggames/rts/game/units/ce454;ZZ)Z

    move-result v6

    if-nez v6, :cond_24

    .line 52369
    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    .line 7230
    :cond_22
    :goto_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    .line 52354
    :cond_23
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v1

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    goto :goto_f

    .line 52374
    :cond_24
    if-nez v5, :cond_26

    .line 52376
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_28

    .line 52378
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_25

    .line 52380
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->k(I)V

    .line 52383
    :cond_25
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    add-float/2addr v6, p2

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    .line 52392
    :cond_26
    :goto_11
    if-eqz v1, :cond_22

    .line 52394
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->b(I)F

    move-result v1

    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->o(I)F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    .line 52396
    if-nez v5, :cond_27

    .line 52398
    const/4 v1, 0x0

    iput v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    .line 52401
    :cond_27
    invoke-virtual {p0, v3, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;I)V

    .line 52403
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->H(I)V

    .line 52406
    iget-boolean v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->m:Z

    if-nez v1, :cond_29

    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, v4, Lcom/corrodinggames/rts/game/units/ch457;->m:Z

    goto :goto_10

    .line 52387
    :cond_28
    const/4 v1, 0x1

    goto :goto_11

    .line 52406
    :cond_29
    const/4 v1, 0x0

    goto :goto_12

    .line 7260
    :cond_2a
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->al()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 7265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 7266
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 7267
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 7269
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    :cond_2b
    const/4 v0, 0x0

    .line 7276
    :cond_2c
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->aP:Z

    if-eqz v1, :cond_2d

    .line 7278
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->W()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 7280
    const/4 v0, 0x1

    .line 7284
    :cond_2d
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v8, :cond_30

    .line 7286
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v1

    .line 7288
    if-nez v0, :cond_2e

    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2e

    .line 7290
    iget v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->f(I)F

    move-result v4

    mul-float/2addr v4, p2

    invoke-static {v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v3

    iput v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    .line 7284
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 7295
    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_30
    return-void

    :cond_31
    move v7, v0

    goto/16 :goto_1

    :cond_32
    move v7, v1

    goto/16 :goto_1
.end method
