.method private strictfp a(FLcom/corrodinggames/rts/game/units/bx445;Lcom/corrodinggames/rts/game/units/bv443;Lcom/corrodinggames/rts/game/units/en734;)V
    .locals 15

    .line 5195
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 5197
    iget-object v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    .line 5201
    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->am:F

    add-float/2addr v2, v3

    .line 5202
    iget v3, v5, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->an:F

    add-float/2addr v3, v4

    .line 5207
    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iget v4, v5, Lcom/corrodinggames/rts/game/units/bp437;->ap:I

    sub-int v6, v1, v4

    .line 5209
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v1, v4, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v7

    .line 5260
    const/16 v1, 0x12c

    if-gt v6, v1, :cond_0

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 5262
    :cond_0
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    add-float v1, v1, p1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 5266
    :cond_1
    const/4 v1, 0x0

    .line 5268
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    const/high16 v8, 0x43960000    # 300.0f

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    .line 5270
    const/4 v1, 0x1

    .line 5273
    :cond_2
    const/16 v4, 0x12c

    if-le v6, v4, :cond_3

    const v4, 0x48742400    # 250000.0f

    cmpl-float v4, v7, v4

    if-lez v4, :cond_3

    .line 5275
    const/4 v1, 0x1

    .line 5278
    :cond_3
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    .line 5280
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_4

    .line 5282
    const/4 v1, 0x1

    .line 5286
    :cond_4
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    .line 5288
    const/4 v1, 0x1

    .line 5292
    :cond_5
    if-eqz v1, :cond_6

    .line 5294
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 5300
    :cond_6
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1f

    .line 5302
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 5303
    move-object/from16 v0, p3

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 5304
    move-object/from16 v0, p3

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 5308
    const/4 v1, 0x0

    .line 5313
    const/16 v2, 0xbb8

    if-ge v6, v2, :cond_7

    .line 5328
    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_7

    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    iget v3, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-gt v2, v3, :cond_7

    .line 5330
    const/4 v1, 0x2

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5350
    :cond_7
    const/16 v2, 0x5dc

    if-ge v6, v2, :cond_9

    .line 5352
    if-nez v1, :cond_9

    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    if-lez v2, :cond_9

    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v2, v2, 0x0

    iget v3, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    if-lt v2, v3, :cond_9

    .line 5355
    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5357
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->aY:Lcom/corrodinggames/rts/game/units/bx445;

    .line 5359
    iget v3, v5, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, v5, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v8, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v1, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v3, v4, v8, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v3

    .line 5361
    const/high16 v1, 0x42a00000    # 80.0f

    .line 5365
    const/16 v4, 0x12c

    if-le v6, v4, :cond_8

    .line 5369
    const/high16 v1, 0x42a00000    # 80.0f

    add-int/lit16 v4, v6, -0x12c

    int-to-float v4, v4

    const v8, 0x3d888889

    mul-float/2addr v4, v8

    sub-float/2addr v1, v4

    .line 5372
    :cond_8
    iget v4, v5, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v8

    mul-float/2addr v8, v1

    add-float/2addr v4, v8

    iput v4, v2, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 5373
    iget v4, v5, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    move-object v1, v2

    .line 5384
    :cond_9
    if-eqz v1, :cond_14

    .line 5386
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bv443;->c:Z

    .line 5387
    iget v2, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->am:F

    add-float/2addr v2, v3

    move-object/from16 v0, p3

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 5388
    iget v1, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->an:F

    add-float/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 5520
    :cond_a
    :goto_0
    const/high16 v1, 0x42340000    # 45.0f

    .line 5522
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_19

    .line 5524
    const/high16 v1, 0x42700000    # 60.0f

    .line 5531
    :cond_b
    :goto_1
    mul-float/2addr v1, v1

    cmpg-float v1, v7, v1

    if-gez v1, :cond_c

    .line 5533
    const/4 v1, 0x0

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 5537
    :cond_c
    const/4 v1, 0x0

    .line 5542
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v3

    .line 5566
    if-nez v3, :cond_f

    .line 5568
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    add-float v2, v2, p1

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    .line 5570
    const/4 v2, 0x0

    .line 5571
    if-eqz p4, :cond_e

    .line 5573
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v6, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v6, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v6, :cond_e

    .line 5575
    :cond_d
    const/4 v2, 0x1

    .line 5581
    :cond_e
    if-eqz v2, :cond_1a

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    const/high16 v6, 0x44160000    # 600.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1a

    .line 5583
    const/high16 v2, 0x43820000    # 260.0f

    .line 5603
    :goto_2
    mul-float/2addr v2, v2

    cmpg-float v2, v7, v2

    if-gez v2, :cond_f

    .line 5605
    const/4 v1, 0x1

    .line 5616
    :cond_f
    if-eqz v1, :cond_1e

    .line 5619
    const/4 v1, 0x0

    .line 5621
    if-nez v3, :cond_10

    .line 5623
    const/4 v1, 0x1

    .line 5632
    :cond_10
    if-eqz v1, :cond_13

    .line 5638
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ao:F

    move/from16 v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(FF)F

    move-result v1

    .line 5640
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 5643
    if-eqz p4, :cond_13

    .line 5645
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v1, v2, :cond_11

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v1, v2, :cond_13

    .line 5647
    :cond_11
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 5649
    if-eqz v5, :cond_13

    .line 5651
    const/4 v1, 0x0

    .line 5653
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v2

    .line 5654
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v3

    .line 5656
    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    .line 5658
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/en734;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5660
    const/4 v1, 0x1

    .line 5663
    :cond_12
    if-nez v1, :cond_13

    .line 5665
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 5808
    :cond_13
    :goto_3
    return-void

    .line 5390
    :cond_14
    iget v1, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    iget v1, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-lez v1, :cond_a

    .line 5398
    iget v1, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_16

    .line 5400
    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5401
    const/4 v2, 0x1

    invoke-direct {v5, v2}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v2

    move-object v3, v1

    move-object v4, v2

    .line 5409
    :goto_4
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 5414
    iget v1, v5, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v8, v3, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v9, v3, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v1, v2, v8, v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFFF)I

    move-result v1

    int-to-float v1, v1

    .line 5417
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v8, 0x41700000    # 15.0f

    sub-float/2addr v1, v8

    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v8

    sub-float v1, v2, v1

    .line 5418
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    .line 5419
    :cond_15
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_26

    const/4 v1, 0x0

    move v2, v1

    .line 5424
    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_18

    .line 5426
    iget v1, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v8, 0x3

    if-lt v1, v8, :cond_17

    .line 5428
    const/4 v1, 0x2

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5430
    iget v8, v4, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v9, v3, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 5431
    iget v10, v4, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v11, v3, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 5433
    iget v12, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v13, v4, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 5434
    iget v14, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v4, v4, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 5435
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    sub-float/2addr v12, v13

    mul-float/2addr v1, v12

    sub-float/2addr v8, v9

    add-float/2addr v1, v8

    .line 5436
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v2, v8

    sub-float v4, v14, v4

    mul-float/2addr v2, v4

    sub-float v4, v10, v11

    add-float/2addr v2, v4

    .line 5459
    :goto_6
    iget v4, v3, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->am:F

    .line 5460
    iget v3, v3, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->an:F

    .line 5462
    add-float/2addr v4, v8

    add-float/2addr v1, v4

    move-object/from16 v0, p3

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 5463
    add-float v1, v3, v9

    add-float/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    goto/16 :goto_0

    .line 5405
    :cond_16
    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5406
    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v2

    move-object v3, v1

    move-object v4, v2

    goto :goto_4

    .line 5440
    :cond_17
    iget v1, v4, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v2, v3, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    sub-float/2addr v1, v2

    .line 5441
    iget v2, v4, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v4, v3, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    sub-float/2addr v2, v4

    goto :goto_6

    .line 5446
    :cond_18
    iget v1, v4, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v8, v3, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 5447
    iget v4, v4, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iget v9, v3, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 5449
    sub-float/2addr v1, v8

    mul-float/2addr v1, v2

    .line 5450
    sub-float/2addr v4, v9

    mul-float/2addr v2, v4

    goto :goto_6

    .line 5526
    :cond_19
    const/16 v2, 0x1f4

    if-ge v6, v2, :cond_b

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    .line 5528
    const/high16 v1, 0x42dc0000    # 110.0f

    goto/16 :goto_1

    .line 5585
    :cond_1a
    if-eqz v2, :cond_1b

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1b

    .line 5587
    const/high16 v2, 0x430c0000    # 140.0f

    goto/16 :goto_2

    .line 5589
    :cond_1b
    if-eqz v2, :cond_1c

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1c

    .line 5591
    const/high16 v2, 0x428c0000    # 70.0f

    goto/16 :goto_2

    .line 5593
    :cond_1c
    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    const/high16 v4, 0x42f00000    # 120.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1d

    .line 5595
    const/high16 v2, 0x42480000    # 50.0f

    goto/16 :goto_2

    .line 5599
    :cond_1d
    const/high16 v2, 0x41800000    # 16.0f

    goto/16 :goto_2

    .line 5691
    :cond_1e
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    goto/16 :goto_3

    .line 5704
    :cond_1f
    const/4 v1, 0x0

    .line 5708
    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_20

    const/16 v2, 0x8

    iget v3, v5, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-ge v2, v3, :cond_20

    .line 5713
    const/16 v1, 0x8

    invoke-direct {v5, v1}, Lcom/corrodinggames/rts/game/units/bp437;->R(I)Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v1

    .line 5716
    :cond_20
    if-nez v1, :cond_21

    .line 5718
    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->aY:Lcom/corrodinggames/rts/game/units/bx445;

    .line 5719
    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iput v2, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    .line 5720
    iget v2, v5, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iput v2, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 5724
    :cond_21
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v4, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v6, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v2, v3, v4, v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v2

    .line 5726
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    iget v4, v5, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    add-float/2addr v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v3, v4

    .line 5729
    mul-float/2addr v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_22

    .line 5731
    const/4 v2, 0x0

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 5732
    const/4 v2, 0x0

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 5757
    :cond_22
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v2, :cond_24

    if-eqz p2, :cond_24

    .line 5760
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v3, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_23

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    iget v3, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    .line 5761
    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    .line 5763
    :cond_23
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    .line 5766
    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 5781
    :cond_24
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_25

    .line 5783
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v2, :cond_25

    .line 5785
    const/high16 v2, 0x442f0000    # 700.0f

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 5789
    iget v2, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v3, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFIZZ)V

    .line 5796
    :cond_25
    if-eqz p2, :cond_13

    .line 5798
    move-object/from16 v0, p2

    iget v1, v0, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    move-object/from16 v0, p3

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 5799
    move-object/from16 v0, p2

    iget v1, v0, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    move-object/from16 v0, p3

    iput v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 5803
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    goto/16 :goto_3

    :cond_26
    move v2, v1

    goto/16 :goto_5
.end method
