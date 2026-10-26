.method private strictfp a(FLcom/corrodinggames/rts/gameFramework/k1104;FF)V
    .locals 26

    .line 1333
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    move-object/from16 v23, v0

    .line 1334
    move-object/from16 v0, v23

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->r:F

    move/from16 v24, v0

    .line 1335
    move-object/from16 v0, v23

    iget v0, v0, Lcom/corrodinggames/rts/game/b/b326;->s:F

    move/from16 v25, v0

    .line 1337
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    mul-float v3, v2, v24

    .line 1338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    mul-float v4, v2, v25

    .line 1340
    mul-float v5, p3, v24

    .line 1341
    mul-float v6, p4, v25

    .line 1343
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1344
    const/4 v2, 0x0

    .line 1347
    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v7

    .line 1348
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v15

    .line 1350
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v14

    .line 1351
    invoke-static {v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v8

    .line 1353
    if-ne v7, v14, :cond_0

    if-eq v15, v8, :cond_e

    .line 1355
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/corrodinggames/rts/game/units/bp437;->cn:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_e

    .line 1358
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v12

    invoke-virtual {v11, v12, v14, v8}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1360
    if-eq v7, v14, :cond_2

    if-eq v15, v8, :cond_2

    .line 1362
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v9

    invoke-virtual {v2, v9, v7, v8}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v2

    .line 1363
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v11

    invoke-virtual {v9, v11, v14, v15}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v11

    .line 1365
    if-eqz v2, :cond_d

    if-eqz v11, :cond_d

    .line 1368
    sget-object v9, Lcom/corrodinggames/rts/game/units/bp437;->aI:Landroid/graphics/PointF;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1373
    sget-object v9, Lcom/corrodinggames/rts/game/units/bp437;->aI:Landroid/graphics/PointF;

    const/16 v16, 0x1

    .line 1376
    :goto_0
    if-nez v9, :cond_1

    if-eqz v2, :cond_1

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v2

    invoke-static/range {v2 .. v8}, Lcom/corrodinggames/rts/game/units/ci458;->a(Lcom/corrodinggames/rts/game/units/cg456;FFFFII)Landroid/graphics/PointF;

    move-result-object v9

    .line 1381
    :cond_1
    if-nez v9, :cond_c

    if-eqz v11, :cond_c

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v9

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-static/range {v9 .. v15}, Lcom/corrodinggames/rts/game/units/ci458;->a(Lcom/corrodinggames/rts/game/units/cg456;FFFFII)Landroid/graphics/PointF;

    move-result-object v9

    move/from16 v2, v16

    .line 1387
    :cond_2
    :goto_1
    if-nez v9, :cond_b

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v16

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v14

    move/from16 v22, v8

    invoke-static/range {v16 .. v22}, Lcom/corrodinggames/rts/game/units/ci458;->a(Lcom/corrodinggames/rts/game/units/cg456;FFFFII)Landroid/graphics/PointF;

    move-result-object v5

    .line 1392
    :goto_2
    if-nez v5, :cond_3

    .line 1396
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->aI:Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1398
    sget-object v3, Lcom/corrodinggames/rts/game/units/bp437;->aI:Landroid/graphics/PointF;

    const/4 v2, 0x1

    move-object v5, v3

    .line 1405
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 1407
    if-eqz v5, :cond_5

    .line 1409
    const/4 v4, 0x0

    .line 1410
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v9

    invoke-virtual {v6, v9, v7, v15}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v6

    .line 1412
    if-eqz v6, :cond_4

    .line 1414
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v9

    invoke-virtual {v6, v9, v14, v8}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->b(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1416
    const/4 v4, 0x1

    .line 1420
    :cond_4
    if-nez v4, :cond_9

    .line 1422
    iget v3, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v4, v0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v4, v4

    mul-float p3, v3, v4

    .line 1423
    iget v3, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v4, v0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    int-to-float v4, v4

    mul-float p4, v3, v4

    .line 1424
    const/4 v3, 0x1

    .line 1433
    :cond_5
    :goto_4
    if-eqz v3, :cond_a

    .line 1435
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    add-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    .line 1436
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->a:I

    .line 1450
    :cond_6
    :goto_5
    if-nez v2, :cond_8

    .line 1452
    mul-float v2, p3, v24

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v2

    .line 1453
    mul-float v3, p4, v25

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->f(F)I

    move-result v3

    .line 1455
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 1456
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 1458
    if-ne v7, v2, :cond_7

    if-eq v15, v3, :cond_8

    .line 1462
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Z)V

    .line 1468
    :cond_8
    return-void

    .line 1428
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 1440
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 1442
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->a:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->a:I

    .line 1443
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->a:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    .line 1445
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    goto :goto_5

    :cond_b
    move-object v5, v9

    goto/16 :goto_2

    :cond_c
    move/from16 v2, v16

    goto/16 :goto_1

    :cond_d
    const/16 v16, 0x0

    move-object v9, v10

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    goto/16 :goto_3
.end method
