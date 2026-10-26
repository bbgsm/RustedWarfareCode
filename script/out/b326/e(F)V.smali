.method private static strictfp e(F)V
    .locals 40

    .line 5181
    sget-object v17, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    .line 43065
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v18

    .line 43066
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move-object/from16 v19, v0

    .line 43068
    const/4 v11, 0x0

    .line 43070
    invoke-static {}, Lcom/corrodinggames/rts/game/b/e329;->e()F

    move-result v10

    .line 43086
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 43088
    move-object/from16 v0, v17

    iget v6, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    div-float v6, v10, v6

    .line 43089
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v6, v9

    invoke-static {v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v9

    const v12, 0x3c23d70a    # 0.01f

    cmpg-float v9, v9, v12

    if-gez v9, :cond_36

    .line 43091
    const/high16 v6, 0x3f800000    # 1.0f

    move v9, v6

    .line 43099
    :goto_0
    float-to-double v12, v10

    const-wide v14, 0x3fe3333333333333L    # 0.6

    cmpl-double v6, v12, v14

    if-lez v6, :cond_1

    .line 43101
    const v6, 0x3e99999a    # 0.3f

    .line 43103
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 43105
    const v6, 0x3dcccccd    # 0.1f

    .line 43108
    :cond_0
    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    sub-float v7, v10, v7

    cmpl-float v6, v7, v6

    if-lez v6, :cond_39

    .line 43110
    const/4 v7, 0x1

    .line 43113
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v10, v6

    if-nez v6, :cond_1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_1

    .line 43115
    const/4 v7, 0x1

    .line 43120
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v9, v6

    if-eqz v6, :cond_35

    .line 43122
    const/16 v6, 0xa

    .line 43123
    const v8, 0x3cf5c28f    # 0.03f

    .line 43126
    const v9, 0x3e99999a    # 0.3f

    cmpg-float v9, v10, v9

    if-gez v9, :cond_25

    .line 43128
    const/16 v6, 0x14

    .line 43129
    const v8, 0x3db851ec    # 0.09f

    .line 43137
    :cond_2
    :goto_2
    const v9, 0x3fa66666    # 1.3f

    cmpl-float v9, v10, v9

    if-lez v9, :cond_3

    .line 43139
    const/4 v6, 0x7

    .line 43143
    :cond_3
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v9

    if-nez v9, :cond_4

    .line 43146
    add-int/lit8 v6, v6, 0xa

    .line 43149
    :cond_4
    move-object/from16 v0, v19

    iget v9, v0, Lcom/corrodinggames/rts/game/b/b326;->ak:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v9

    const v12, 0x3cf5c28f    # 0.03f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_26

    .line 43151
    move-object/from16 v0, v18

    iget v9, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    move-object/from16 v0, v19

    iput v9, v0, Lcom/corrodinggames/rts/game/b/b326;->ak:F

    .line 43152
    const/4 v9, 0x0

    move-object/from16 v0, v19

    iput v9, v0, Lcom/corrodinggames/rts/game/b/b326;->al:I

    .line 43161
    :goto_3
    move-object/from16 v0, v19

    iget v9, v0, Lcom/corrodinggames/rts/game/b/b326;->al:I

    const/4 v12, 0x3

    if-ge v9, v12, :cond_27

    .line 43164
    const/4 v8, 0x0

    move-object/from16 v0, v19

    iput v8, v0, Lcom/corrodinggames/rts/game/b/b326;->aj:F

    .line 43230
    :cond_5
    :goto_4
    move-object/from16 v0, v19

    iget v8, v0, Lcom/corrodinggames/rts/game/b/b326;->aj:F

    int-to-float v6, v6

    cmpl-float v6, v8, v6

    if-lez v6, :cond_35

    .line 43235
    const/4 v6, 0x0

    move-object/from16 v0, v19

    iput v6, v0, Lcom/corrodinggames/rts/game/b/b326;->aj:F

    .line 43236
    const/4 v6, 0x1

    .line 43251
    :goto_5
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cr:I

    int-to-float v7, v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cx:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 43253
    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    add-int/2addr v7, v8

    move-object/from16 v0, v17

    iput v7, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    .line 43254
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/b/e329;->b(I)V

    .line 43256
    :cond_6
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cr:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    if-ge v7, v8, :cond_7

    .line 43258
    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v17

    iput v7, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    .line 43259
    const/4 v7, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/b/e329;->b(I)V

    .line 43261
    :cond_7
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cs:I

    int-to-float v7, v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cy:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 43263
    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    add-int/2addr v7, v8

    move-object/from16 v0, v17

    iput v7, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    .line 43264
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/b/e329;->a(I)V

    .line 43266
    :cond_8
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cs:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    if-ge v7, v8, :cond_9

    .line 43268
    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v17

    iput v7, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    .line 43269
    const/4 v7, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/b/e329;->a(I)V

    .line 43272
    :cond_9
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cr:I

    int-to-float v7, v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cx:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 43274
    const/4 v6, 0x1

    .line 43276
    :cond_a
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cr:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    if-ge v7, v8, :cond_b

    .line 43278
    const/4 v6, 0x1

    .line 43280
    :cond_b
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cs:I

    int-to-float v7, v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cy:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 43282
    const/4 v6, 0x1

    .line 43284
    :cond_c
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cs:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    iget v8, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    if-ge v7, v8, :cond_d

    .line 43286
    const/4 v6, 0x1

    .line 43292
    :cond_d
    if-eqz v6, :cond_e

    .line 43294
    invoke-virtual/range {v17 .. v17}, Lcom/corrodinggames/rts/game/b/e329;->a()V

    .line 43306
    :cond_e
    move-object/from16 v0, v18

    iget v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    div-float/2addr v6, v7

    .line 43307
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v6, v7

    invoke-static {v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_38

    .line 43309
    const/high16 v6, 0x3f800000    # 1.0f

    move v14, v6

    .line 43323
    :goto_6
    move-object/from16 v0, v18

    iget v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cC:F

    div-float/2addr v6, v14

    const/high16 v7, 0x40000000    # 2.0f

    add-float v20, v6, v7

    .line 43324
    move-object/from16 v0, v18

    iget v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cE:F

    div-float/2addr v6, v14

    const/high16 v7, 0x40000000    # 2.0f

    add-float v21, v6, v7

    .line 43330
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v14, v6

    if-eqz v6, :cond_f

    .line 43332
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->i()V

    .line 43335
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v6, v14, v14}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(FF)V

    .line 43340
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cH:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43342
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v14

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 43343
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v14

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 43345
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/corrodinggames/rts/game/b/b326;->ap:Landroid/graphics/Rect;

    invoke-interface {v6, v7}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/graphics/Rect;)V

    .line 43350
    :cond_f
    move-object/from16 v0, v17

    iget v6, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    int-to-float v6, v6

    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    sub-float/2addr v6, v7

    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float v22, v6, v7

    .line 43351
    move-object/from16 v0, v17

    iget v6, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    int-to-float v6, v6

    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    sub-float/2addr v6, v7

    move-object/from16 v0, v17

    iget v7, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float v23, v6, v7

    .line 43358
    move/from16 v0, v22

    float-to-int v6, v0

    int-to-float v0, v6

    move/from16 v24, v0

    .line 43359
    move/from16 v0, v23

    float-to-int v6, v0

    int-to-float v0, v6

    move/from16 v25, v0

    .line 43370
    const/4 v6, 0x0

    .line 43376
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->Z()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 43378
    move-object/from16 v0, v18

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    float-to-double v8, v7

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v7, v8, v12

    if-gez v7, :cond_37

    .line 43380
    const/4 v6, 0x1

    move v15, v6

    .line 43384
    :goto_7
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v6, v15}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setAntiAlias(Z)V

    .line 43386
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v6, v15}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setFilterBitmap(Z)V

    .line 43387
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    invoke-virtual {v6, v15}, Lcom/corrodinggames/rts/gameFramework/m/fq1260;->setDither(Z)V

    .line 43408
    const/4 v6, 0x0

    .line 43414
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move/from16 v16, v10

    move-object v7, v11

    :goto_8
    :try_start_0
    move-object/from16 v0, v17

    iget v10, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    move/from16 v0, v16

    if-ge v0, v10, :cond_2f

    .line 43416
    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, v17

    iget v11, v0, Lcom/corrodinggames/rts/game/b/e329;->a:I

    if-ge v10, v11, :cond_2e

    .line 43418
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    aget-object v11, v11, v16

    aget-object v26, v11, v10

    .line 43426
    move-object/from16 v0, v17

    iget v11, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int v11, v11, v16

    int-to-float v11, v11

    move-object/from16 v0, v17

    iget v12, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float/2addr v11, v12

    add-float v11, v11, v24

    float-to-int v0, v11

    move/from16 v27, v0

    .line 43427
    move-object/from16 v0, v17

    iget v11, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    mul-int/2addr v11, v10

    int-to-float v11, v11

    move-object/from16 v0, v17

    iget v12, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float/2addr v11, v12

    add-float v11, v11, v25

    float-to-int v0, v11

    move/from16 v28, v0

    .line 43433
    move-object/from16 v0, v26

    iget-boolean v11, v0, Lcom/corrodinggames/rts/game/b/f330;->l:Z

    if-eqz v11, :cond_10

    .line 43435
    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/corrodinggames/rts/game/b/e329;->n:Z

    if-nez v11, :cond_10

    .line 43437
    move-object/from16 v0, v26

    iget v11, v0, Lcom/corrodinggames/rts/game/b/f330;->m:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v26

    iput v11, v0, Lcom/corrodinggames/rts/game/b/f330;->m:I

    .line 43441
    :cond_10
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    add-int/lit8 v12, v27, 0x1

    add-int/lit8 v13, v28, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->h:I

    move/from16 v29, v0

    add-int v29, v29, v27

    add-int/lit8 v29, v29, -0x2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->h:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int/lit8 v30, v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v12, v13, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43443
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpg-float v11, v11, v20

    if-gtz v11, :cond_24

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    cmpg-float v11, v11, v21

    if-gtz v11, :cond_24

    .line 43447
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    cmpl-float v11, v11, v20

    if-lez v11, :cond_11

    .line 43449
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    move/from16 v0, v20

    float-to-int v12, v0

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 43452
    :cond_11
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    cmpl-float v11, v11, v21

    if-lez v11, :cond_12

    .line 43454
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v12, v0

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 43460
    :cond_12
    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    sub-float/2addr v11, v12

    move-object/from16 v0, v17

    iget v12, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 43461
    const/4 v12, 0x0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    sub-float/2addr v12, v13

    move-object/from16 v0, v17

    iget v13, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 43463
    invoke-virtual/range {v19 .. v19}, Lcom/corrodinggames/rts/game/b/b326;->f()F

    move-result v13

    move-object/from16 v0, v18

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->ct:F

    move/from16 v29, v0

    sub-float v13, v13, v29

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    move/from16 v29, v0

    mul-float v13, v13, v29

    float-to-int v13, v13

    .line 43464
    invoke-virtual/range {v19 .. v19}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cu:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    .line 43467
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v0, v11, :cond_13

    .line 43469
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 43472
    :cond_13
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_14

    .line 43474
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 43477
    :cond_14
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-le v11, v13, :cond_15

    .line 43479
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iput v13, v11, Landroid/graphics/Rect;->right:I

    .line 43482
    :cond_15
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v29

    if-le v11, v0, :cond_16

    .line 43484
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 43487
    :cond_16
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_24

    .line 43490
    const/4 v11, 0x0

    .line 43491
    move-object/from16 v0, v26

    iget-boolean v12, v0, Lcom/corrodinggames/rts/game/b/f330;->k:Z

    if-eqz v12, :cond_34

    .line 43496
    const/4 v11, 0x1

    .line 43497
    const/4 v12, 0x0

    .line 43500
    :goto_a
    move-object/from16 v0, v26

    iget-boolean v13, v0, Lcom/corrodinggames/rts/game/b/f330;->l:Z

    if-eqz v13, :cond_19

    .line 43504
    const/16 v13, 0xa

    .line 43505
    const/16 v29, 0x3

    move/from16 v0, v29

    if-le v9, v0, :cond_17

    .line 43507
    const/16 v13, 0xc

    .line 43509
    :cond_17
    const/16 v29, 0x6

    move/from16 v0, v29

    if-le v9, v0, :cond_18

    .line 43511
    add-int/lit8 v13, v13, 0x2

    .line 43515
    :cond_18
    move-object/from16 v0, v26

    iget v0, v0, Lcom/corrodinggames/rts/game/b/f330;->m:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v0, v13, :cond_19

    .line 43517
    const/4 v11, 0x0

    move-object/from16 v0, v26

    iput v11, v0, Lcom/corrodinggames/rts/game/b/f330;->m:I

    .line 43518
    const/4 v11, 0x1

    .line 43520
    add-int/lit8 v9, v9, 0x1

    .line 43526
    :cond_19
    if-eqz v11, :cond_22

    .line 43528
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v30

    .line 43534
    if-nez v7, :cond_28

    .line 43536
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    .line 43551
    :goto_b
    if-eqz v8, :cond_1c

    .line 43553
    move-object/from16 v0, v26

    iget-boolean v11, v0, Lcom/corrodinggames/rts/game/b/f330;->k:Z

    if-eqz v11, :cond_1c

    .line 43555
    move-object/from16 v0, v26

    iget-boolean v11, v0, Lcom/corrodinggames/rts/game/b/f330;->n:Z

    if-nez v11, :cond_1c

    .line 44254
    sget-object v11, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    iget-object v11, v11, Lcom/corrodinggames/rts/game/b/e329;->d:[[Lcom/corrodinggames/rts/game/b/f330;

    aget-object v11, v11, v16

    aget-object v11, v11, v10

    .line 44256
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v13

    .line 44257
    iget-object v0, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move-object/from16 v29, v0

    .line 44261
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/corrodinggames/rts/game/b/f330;->n:Z

    .line 44264
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->c:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v32, v0

    const/high16 v33, -0x1000000

    invoke-interface/range {v32 .. v33}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(I)V

    .line 44276
    iget-object v13, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    iget-object v13, v13, Lcom/corrodinggames/rts/gameFramework/f/q996;->J:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 44278
    if-eqz v13, :cond_1a

    .line 44280
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 44281
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    .line 44283
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move/from16 v34, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    move/from16 v35, v0

    mul-int v35, v35, v16

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    move/from16 v35, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    move/from16 v36, v0

    mul-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    .line 44284
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move/from16 v35, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    move/from16 v36, v0

    mul-int v36, v36, v10

    add-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    move/from16 v36, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    move/from16 v37, v0

    mul-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    .line 44286
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->f:I

    move/from16 v36, v0

    add-int/lit8 v37, v16, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    move/from16 v37, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    .line 44287
    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->g:I

    move/from16 v37, v0

    add-int/lit8 v38, v10, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->k:I

    move/from16 v39, v0

    mul-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    move/from16 v29, v0

    mul-int v29, v29, v38

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v37, v29

    .line 44289
    iget v0, v13, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v34, v34, v37

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    iget v0, v13, Lcom/corrodinggames/rts/gameFramework/m/e1216;->q:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v35, v35, v37

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    iget v0, v13, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    iget v0, v13, Lcom/corrodinggames/rts/gameFramework/m/e1216;->q:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v29, v29, v37

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 44293
    const/16 v29, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->h:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/corrodinggames/rts/game/b/e329;->h:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v29

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44296
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->c:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-interface {v0, v13, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44300
    :cond_1a
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/corrodinggames/rts/game/b/e329;->c:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v13}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->n()V

    .line 44302
    sget-boolean v13, Lcom/corrodinggames/rts/gameFramework/k1104;->aT:Z

    if-eqz v13, :cond_1b

    .line 44306
    iget-object v13, v11, Lcom/corrodinggames/rts/game/b/f330;->a:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 44314
    :cond_1b
    iget-object v13, v11, Lcom/corrodinggames/rts/game/b/f330;->a:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-interface {v13, v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Lcom/corrodinggames/rts/gameFramework/m/e1216;FFLandroid/graphics/Paint;)V

    .line 44315
    iget-object v11, v11, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v11}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->j()V

    .line 43563
    :cond_1c
    if-nez v8, :cond_21

    .line 43568
    sget-boolean v8, Lcom/corrodinggames/rts/game/b/b326;->J:Z

    if-eqz v8, :cond_1e

    .line 43570
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v8, :cond_1d

    .line 43572
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v8, v8, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v11, v11, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    if-eq v8, v11, :cond_1d

    .line 43574
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "wrong sized fadeOutBitmap width:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v11, v11, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " vs "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    iget v11, v11, Lcom/corrodinggames/rts/gameFramework/m/e1216;->p:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 43575
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->i()V

    .line 43576
    const/4 v8, 0x0

    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 43580
    :cond_1d
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1e

    .line 43586
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/corrodinggames/rts/game/b/f330;->a()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43599
    :goto_c
    :try_start_2
    sget-boolean v8, Lcom/corrodinggames/rts/game/b/b326;->J:Z

    if-eqz v8, :cond_1e

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v8, :cond_1e

    .line 43602
    const-string v8, "Disabling smooth fog fading due to error"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->g(Ljava/lang/String;)V

    .line 43603
    invoke-virtual/range {v17 .. v17}, Lcom/corrodinggames/rts/game/b/e329;->c()V

    .line 43604
    const-string v8, "fadeOutBitmap == null"

    invoke-static {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 43605
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 43611
    :cond_1e
    sget-boolean v8, Lcom/corrodinggames/rts/game/b/b326;->J:Z

    if-eqz v8, :cond_2c

    .line 43622
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 43623
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-object/from16 v0, v26

    iput-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 43624
    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 43627
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->a:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 43628
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->f:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v26

    iput-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->a:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 43629
    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/corrodinggames/rts/game/b/f330;->f:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 43632
    if-eqz v12, :cond_2b

    .line 43634
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    iput v8, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    .line 43648
    :goto_d
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->X()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 43650
    if-nez v6, :cond_20

    .line 45141
    sget-boolean v8, Lcom/corrodinggames/rts/game/b/b326;->f:Z

    if-nez v8, :cond_1f

    .line 45162
    sget-object v8, Lcom/corrodinggames/rts/game/b/b326;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43653
    :cond_1f
    const/4 v6, 0x1

    .line 43657
    :cond_20
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v8}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->g()V

    .line 45327
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/corrodinggames/rts/game/b/e329;->c:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10, v8}, Lcom/corrodinggames/rts/game/b/e329;->a(IILcom/corrodinggames/rts/gameFramework/m/fi1252;)V

    .line 43661
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v8}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->h()V

    .line 43663
    sget-boolean v8, Lcom/corrodinggames/rts/game/b/b326;->a:Z

    if-eqz v8, :cond_21

    .line 43665
    const-string v8, "re-drawTile"

    move-wide/from16 v0, v30

    invoke-static {v8, v0, v1}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(Ljava/lang/String;J)V

    :cond_21
    const/4 v8, 0x1

    .line 43673
    :cond_22
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->o:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43679
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->o:Landroid/graphics/Rect;

    move/from16 v0, v27

    neg-int v12, v0

    move/from16 v0, v28

    neg-int v13, v0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 43690
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/corrodinggames/rts/game/b/f330;->p:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 43691
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move/from16 v0, v24

    neg-float v12, v0

    move/from16 v0, v25

    neg-float v13, v0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 43692
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 43695
    move-object/from16 v0, v26

    iget v11, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2d

    .line 43698
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->h:Landroid/graphics/Paint;

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43699
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/corrodinggames/rts/game/b/f330;->h:Landroid/graphics/Paint;

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    iget v13, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43702
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/corrodinggames/rts/game/b/f330;->e:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/corrodinggames/rts/game/b/f330;->o:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v11, v12, v13, v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43704
    move-object/from16 v0, v26

    iget v11, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    float-to-double v12, v11

    const-wide v28, 0x3fef5c28f5c28f5cL    # 0.98

    cmpg-double v11, v12, v28

    if-gez v11, :cond_23

    .line 43706
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/corrodinggames/rts/game/b/f330;->o:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->h:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v11, v12, v13, v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43710
    :cond_23
    move-object/from16 v0, v26

    iget v11, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    const v12, 0x3dcccccd    # 0.1f

    mul-float v12, v12, p0

    sub-float/2addr v11, v12

    move-object/from16 v0, v26

    iput v11, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43416
    :cond_24
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 43131
    :cond_25
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v10, v9

    if-gez v9, :cond_2

    .line 43133
    const/16 v6, 0x14

    .line 43134
    const v8, 0x3d8f5c29    # 0.07f

    goto/16 :goto_2

    .line 43156
    :cond_26
    move-object/from16 v0, v19

    iget v9, v0, Lcom/corrodinggames/rts/game/b/b326;->al:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v19

    iput v9, v0, Lcom/corrodinggames/rts/game/b/b326;->al:I

    goto/16 :goto_3

    .line 43174
    :cond_27
    move-object/from16 v0, v17

    iget v9, v0, Lcom/corrodinggames/rts/game/b/e329;->m:F

    sub-float v9, v10, v9

    invoke-static {v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v9

    cmpl-float v8, v9, v8

    if-lez v8, :cond_5

    .line 43176
    move-object/from16 v0, v19

    iget v8, v0, Lcom/corrodinggames/rts/game/b/b326;->aj:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move-object/from16 v0, v19

    iput v8, v0, Lcom/corrodinggames/rts/game/b/b326;->aj:F

    goto/16 :goto_4

    .line 43540
    :cond_28
    const/16 v8, 0xc8

    .line 43541
    :try_start_3
    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/corrodinggames/rts/game/b/e329;->n:Z

    if-eqz v11, :cond_29

    .line 43543
    const/16 v8, 0x1e

    .line 43545
    :cond_29
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(JJ)D

    move-result-wide v32

    int-to-double v0, v8

    move-wide/from16 v34, v0

    cmpl-double v8, v32, v34

    if-lez v8, :cond_33

    .line 43547
    const/4 v8, 0x1

    .line 43548
    const/4 v11, 0x1

    move-object/from16 v0, v17

    iput-boolean v11, v0, Lcom/corrodinggames/rts/game/b/e329;->n:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_b

    .line 43759
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_2a

    .line 43761
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->i()V

    .line 43763
    :cond_2a
    throw v7

    .line 43588
    :catch_0
    move-exception v8

    .line 43590
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 43591
    sget-object v11, Lcom/corrodinggames/rts/gameFramework/ae798;->b:Lcom/corrodinggames/rts/gameFramework/ae798;

    invoke-static {v11, v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Lcom/corrodinggames/rts/gameFramework/ae798;Ljava/lang/Throwable;)V

    .line 43594
    invoke-virtual/range {v17 .. v17}, Lcom/corrodinggames/rts/game/b/e329;->c()V

    .line 43595
    const-string v8, "Not enough free memory to keep smooth fog fading"

    invoke-static {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 43596
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_c

    .line 43638
    :cond_2b
    const/4 v8, 0x0

    move-object/from16 v0, v26

    iput v8, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    goto/16 :goto_d

    .line 43644
    :cond_2c
    const/4 v8, 0x0

    move-object/from16 v0, v26

    iput v8, v0, Lcom/corrodinggames/rts/game/b/f330;->g:F

    goto/16 :goto_d

    .line 43729
    :cond_2d
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/corrodinggames/rts/game/b/f330;->d:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/corrodinggames/rts/game/b/f330;->o:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/f330;->q:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/e329;->e:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v11, v12, v13, v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_e

    .line 43414
    :cond_2e
    add-int/lit8 v10, v16, 0x1

    move/from16 v16, v10

    goto/16 :goto_8

    .line 43759
    :cond_2f
    if-eqz v6, :cond_30

    .line 43761
    invoke-static {}, Lcom/corrodinggames/rts/game/b/b326;->i()V

    .line 43768
    :cond_30
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v14, v6

    if-eqz v6, :cond_31

    .line 43770
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v6}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->j()V

    .line 43852
    :cond_31
    if-nez v8, :cond_32

    .line 43854
    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput-boolean v6, v0, Lcom/corrodinggames/rts/game/b/e329;->n:Z

    .line 5182
    :cond_32
    return-void

    :cond_33
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_34
    const/4 v12, 0x1

    goto/16 :goto_a

    :cond_35
    move v6, v7

    goto/16 :goto_5

    :cond_36
    move v9, v6

    goto/16 :goto_0

    :cond_37
    move v15, v6

    goto/16 :goto_7

    :cond_38
    move v14, v6

    goto/16 :goto_6

    :cond_39
    move v7, v8

    goto/16 :goto_1
.end method
