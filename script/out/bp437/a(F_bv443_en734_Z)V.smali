.method private strictfp a(FLcom/corrodinggames/rts/game/units/bv443;Lcom/corrodinggames/rts/game/units/en734;Z)V
    .locals 16

    .line 6108
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6111
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 6114
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    if-eqz v4, :cond_18

    .line 6117
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    if-eqz v4, :cond_18

    if-eqz p4, :cond_18

    .line 6120
    move-object/from16 v0, p2

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 6121
    move-object/from16 v0, p2

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 6127
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v9

    .line 6130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v2, v4, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v10

    .line 6135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    sub-float v5, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aL()F

    move-result v11

    mul-float/2addr v5, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    add-float/2addr v5, v11

    invoke-static {v2, v4, v7, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v4

    .line 6140
    const/4 v2, 0x0

    .line 6142
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aM()F

    move-result v5

    .line 6144
    const v11, 0x3f733333    # 0.95f

    cmpl-float v11, v5, v11

    if-lez v11, :cond_1d

    .line 6146
    const/4 v2, 0x1

    .line 6187
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->D()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v5

    if-nez v5, :cond_20

    .line 6193
    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cj:F

    const/high16 v2, 0x43330000    # 179.0f

    move v5, v2

    .line 6205
    :goto_1
    const/high16 v2, 0x41a00000    # 20.0f

    .line 6206
    const v4, 0x43b48000    # 361.0f

    cmpl-float v4, v10, v4

    if-lez v4, :cond_1

    .line 6208
    const/high16 v2, 0x42380000    # 46.0f

    .line 6210
    :cond_1
    const/high16 v4, 0x45610000    # 3600.0f

    cmpl-float v4, v10, v4

    if-lez v4, :cond_2

    .line 6212
    const/high16 v2, 0x42b20000    # 89.0f

    .line 6215
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->z()F

    move-result v4

    .line 6218
    float-to-double v12, v4

    const-wide v14, 0x3ff6666666666666L    # 1.4

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    .line 6220
    const/high16 v11, 0x45c80000    # 6400.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_21

    .line 6222
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v2, v11

    .line 6230
    :cond_3
    :goto_2
    const/high16 v11, 0x40a00000    # 5.0f

    cmpl-float v11, v9, v11

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    float-to-double v12, v11

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v11, v12, v14

    if-gez v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    float-to-double v12, v11

    const-wide v14, -0x407b851eb851eb85L    # -0.01

    cmpl-double v11, v12, v14

    if-lez v11, :cond_4

    .line 6232
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6236
    :cond_4
    float-to-double v12, v4

    const-wide v14, 0x3ff199999999999aL    # 1.1

    cmpg-double v4, v12, v14

    if-gez v4, :cond_5

    .line 6238
    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v2, v4

    .line 6242
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    float-to-double v12, v4

    const-wide v14, 0x3fd999999999999aL    # 0.4

    cmpl-double v4, v12, v14

    if-lez v4, :cond_6

    const v4, 0x46840800    # 16900.0f

    cmpl-float v4, v10, v4

    if-lez v4, :cond_6

    .line 6244
    const/high16 v2, 0x43340000    # 180.0f

    .line 6255
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6257
    const/high16 v2, 0x43350000    # 181.0f

    .line 6263
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_22

    const/4 v4, 0x1

    .line 6267
    :goto_3
    if-eqz v4, :cond_8

    const/high16 v11, 0x41800000    # 16.0f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_b

    .line 6269
    :cond_8
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v5

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_b

    .line 6271
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6273
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/corrodinggames/rts/game/units/bv443;->c:Z

    if-eqz v3, :cond_23

    .line 6276
    const v3, 0x451c4000    # 2500.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_9

    .line 6278
    const v2, 0x3f59999a    # 0.85f

    .line 6280
    :cond_9
    const/high16 v3, 0x44610000    # 900.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_a

    .line 6282
    const v3, 0x3e19999a    # 0.15f

    sub-float/2addr v2, v3

    .line 6284
    :cond_a
    const/high16 v3, 0x43610000    # 225.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_29

    .line 6286
    const v3, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v3

    move v3, v2

    .line 6311
    :goto_4
    const/high16 v2, 0x41100000    # 9.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_b

    .line 6313
    const/4 v3, 0x0

    .line 6324
    :cond_b
    if-eqz v4, :cond_f

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_f

    .line 6327
    const/high16 v2, 0x43a20000    # 324.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_c

    .line 6329
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->C()F

    move-result v2

    const v5, 0x3e051eb8    # 0.13f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    .line 6331
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    .line 6335
    :cond_c
    const/high16 v2, 0x43290000    # 169.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_d

    .line 6337
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->C()F

    move-result v2

    const v5, 0x3e19999a    # 0.15f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v2

    const v5, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_d

    .line 6339
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    .line 6343
    :cond_d
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v9, v2

    if-lez v2, :cond_f

    .line 6346
    const/high16 v2, 0x43a20000    # 324.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_e

    .line 6348
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_e

    const/high16 v3, 0x3f000000    # 0.5f

    .line 6351
    :cond_e
    const/high16 v2, 0x42a20000    # 81.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_f

    .line 6353
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_f

    const/high16 v3, 0x3e800000    # 0.25f

    .line 6365
    :cond_f
    const/4 v2, 0x0

    .line 6367
    if-nez v4, :cond_10

    const/high16 v5, 0x43800000    # 256.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_10

    .line 6369
    const/4 v2, 0x1

    .line 6372
    :cond_10
    if-eqz v4, :cond_11

    const/high16 v5, 0x41800000    # 16.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_11

    .line 6374
    const/4 v2, 0x1

    .line 6377
    :cond_11
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v9, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    if-eq v5, v9, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v6, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ab:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_13

    .line 6379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ab:Lcom/corrodinggames/rts/game/units/ce454;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v7, v8, v6}, Lcom/corrodinggames/rts/game/units/ce454;->a(FFF)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 6381
    const/4 v2, 0x1

    .line 6386
    :cond_13
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_17

    .line 6388
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    add-float v5, v5, p1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 6390
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    const/high16 v5, 0x45610000    # 3600.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_14

    .line 6392
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 6393
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->dh()V

    .line 6394
    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 6398
    :cond_14
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v6, 0x44160000    # 600.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_15

    .line 6400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-nez v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 6404
    :cond_15
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v6, 0x42a00000    # 80.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    .line 6407
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 6411
    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_17

    .line 6413
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-nez v5, :cond_17

    .line 6415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 6419
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v8, v5, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v5, v5, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v6, v7, v8, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v5

    .line 6429
    cmpg-float v5, v5, v10

    if-gez v5, :cond_17

    .line 6434
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 6436
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->dh()V

    .line 6438
    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    .line 6452
    :cond_17
    if-eqz v2, :cond_2a

    .line 6457
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->dh()V

    .line 6462
    if-eqz v4, :cond_2a

    .line 6465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 6466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 6469
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    if-nez v2, :cond_2a

    .line 6471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v2, :cond_2a

    .line 6473
    if-eqz p3, :cond_2a

    .line 6475
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v2, v4, :cond_2a

    .line 6477
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    move v2, v3

    .line 6496
    :cond_18
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v3, :cond_19

    .line 6498
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v3

    if-nez v3, :cond_19

    .line 6500
    neg-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aM()F

    move-result v3

    mul-float/2addr v2, v3

    .line 6504
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 6506
    const/4 v2, 0x0

    .line 6510
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aS()Z

    move-result v3

    if-nez v3, :cond_26

    .line 6513
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1b

    .line 6515
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->B()F

    move-result v4

    mul-float v4, v4, p1

    invoke-static {v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    .line 6517
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1c

    .line 6519
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->C()F

    move-result v4

    mul-float v4, v4, p1

    invoke-static {v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    .line 6528
    :cond_1c
    :goto_6
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    if-eqz v2, :cond_27

    if-eqz p4, :cond_27

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    .line 6530
    return-void

    .line 6148
    :cond_1d
    float-to-double v12, v5

    const-wide v14, 0x3febd70a3d70a3d7L    # 0.87

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1e

    .line 6150
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    const/4 v11, 0x1

    if-gt v5, v11, :cond_0

    .line 6152
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/16 v11, 0x9

    if-gt v5, v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v5, :cond_0

    const v5, 0x48742400    # 250000.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_0

    .line 6155
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 6159
    :cond_1e
    float-to-double v12, v5

    const-wide v14, 0x3fe6666666666666L    # 0.7

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1f

    .line 6161
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    const/4 v11, 0x1

    if-gt v5, v11, :cond_0

    .line 6163
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v11, 0x4

    if-gt v5, v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v5, :cond_0

    const v5, 0x471c4000    # 40000.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_0

    .line 6166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 6170
    :cond_1f
    float-to-double v12, v5

    const-wide v14, 0x3fd999999999999aL    # 0.4

    cmpl-double v5, v12, v14

    if-lez v5, :cond_0

    .line 6173
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    const/4 v11, 0x1

    if-gt v5, v11, :cond_0

    .line 6175
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v11, 0x2

    if-gt v5, v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v5, :cond_0

    const v5, 0x461c4000    # 10000.0f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_0

    .line 6178
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 6197
    :cond_20
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    const/4 v11, 0x0

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_28

    .line 6199
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFZZ)F

    move-result v2

    move v5, v2

    goto/16 :goto_1

    .line 6226
    :cond_21
    const/high16 v2, 0x41880000    # 17.0f

    goto/16 :goto_2

    .line 6263
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 6292
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v3, :cond_29

    .line 6294
    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v3, v10, v3

    if-lez v3, :cond_24

    .line 6296
    const v2, 0x3f99999a    # 1.2f

    .line 6299
    :cond_24
    const/high16 v3, 0x42440000    # 49.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_25

    .line 6301
    const v3, 0x3e19999a    # 0.15f

    sub-float/2addr v2, v3

    .line 6304
    :cond_25
    const/high16 v3, 0x41100000    # 9.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_29

    .line 6306
    const v3, 0x3e19999a    # 0.15f

    sub-float/2addr v2, v3

    move v3, v2

    goto/16 :goto_4

    .line 6524
    :cond_26
    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    goto/16 :goto_6

    .line 6528
    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_28
    const/high16 v2, 0x43330000    # 179.0f

    move v5, v2

    goto/16 :goto_1

    :cond_29
    move v3, v2

    goto/16 :goto_4

    :cond_2a
    move v2, v3

    goto/16 :goto_5
.end method
