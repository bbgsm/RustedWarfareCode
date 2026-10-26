.method public final b(F)V
    .locals 18

    .line 2185
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v14

    .line 2187
    iget v15, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    .line 2189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->M:F

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->M:F

    .line 2192
    iget-boolean v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->ap:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bE:Z

    if-eqz v2, :cond_2

    .line 2194
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2196
    iget-object v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    if-eqz v4, :cond_0

    .line 2198
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v2, v2, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    iget-object v2, v2, Lcom/corrodinggames/rts/game/b/k335;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/b/a325;

    .line 2200
    const-string v5, "camera_pan"

    iget-object v6, v2, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 2202
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->L:I

    const-string v6, "index"

    const-string v7, "-1"

    invoke-virtual {v2, v6, v7}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_66

    :goto_1
    move-object v3, v2

    .line 2207
    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2210
    :cond_1
    if-nez v3, :cond_b

    .line 2212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->L:I

    .line 2273
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    if-eqz v2, :cond_5

    .line 2276
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->N:Z

    if-nez v2, :cond_14

    .line 2279
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-nez v2, :cond_3

    .line 2281
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 2284
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-nez v2, :cond_5

    .line 2286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    .line 2288
    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    .line 2294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-static {v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(III)I

    move-result v2

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 2300
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    if-nez v3, :cond_12

    .line 2302
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v3

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->s:Ljava/lang/String;

    .line 2303
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v3

    .line 2313
    :goto_3
    const/high16 v4, 0x44e10000    # 1800.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 2315
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    if-nez v4, :cond_4

    .line 2317
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    if-lez v4, :cond_13

    .line 2319
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 2332
    :cond_4
    :goto_4
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->a(FF)V

    .line 2335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->t:Ljava/lang/String;

    .line 2387
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->j:Z

    if-eqz v2, :cond_6

    .line 2389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->j:Z

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    if-eqz v2, :cond_6

    .line 2392
    const-string v2, "Briefing"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-virtual {v14, v2, v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Lcom/corrodinggames/rts/game/units/custom/bu555;)V

    .line 2396
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b:I

    add-int/lit16 v2, v2, 0xfa

    if-le v15, v2, :cond_52

    .line 2398
    move-object/from16 v0, p0

    iput v15, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b:I

    .line 20683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 20687
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-eqz v2, :cond_8

    .line 20689
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->q:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 20691
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->k:I

    iget v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->q:I

    add-int/2addr v2, v3

    if-lt v15, v2, :cond_8

    .line 20693
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    .line 20694
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    .line 20700
    :cond_8
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-nez v2, :cond_23

    .line 20703
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    if-nez v2, :cond_23

    .line 21569
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v2

    .line 21572
    iget v5, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    .line 21574
    const/4 v2, 0x1

    .line 21575
    const/4 v3, 0x0

    .line 21578
    iget-boolean v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->m:Z

    if-nez v4, :cond_9

    .line 21581
    iget v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->r:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    .line 21585
    iget v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->r:I

    if-gt v4, v5, :cond_1b

    .line 21587
    const/4 v3, 0x1

    .line 21589
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->m:Z

    .line 21599
    :cond_9
    :goto_7
    iget-object v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->d:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    .line 22069
    iget-object v4, v4, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    .line 21599
    :goto_8
    if-eqz v4, :cond_a

    .line 21601
    iget-object v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->d:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 21603
    const/4 v3, 0x1

    .line 21611
    :cond_a
    :goto_9
    iget-object v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->f:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    iget v4, v4, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    if-lez v4, :cond_1f

    .line 21613
    iget-object v4, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->f:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/gameFramework/n/a/a1282;

    .line 21620
    invoke-virtual {v2, v12}, Lcom/corrodinggames/rts/gameFramework/n/a/a1282;->a(Lcom/corrodinggames/rts/gameFramework/n/a1285;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 21622
    const/4 v3, 0x1

    goto :goto_a

    .line 2217
    :cond_b
    iget v2, v3, Lcom/corrodinggames/rts/game/b/a325;->e:F

    .line 2218
    iget v3, v3, Lcom/corrodinggames/rts/game/b/a325;->f:F

    .line 2221
    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_c

    .line 2223
    iget v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v2, v4

    .line 2225
    :cond_c
    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_d

    .line 2227
    iget v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    .line 2229
    :cond_d
    iget-object v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/b/b326;->f()F

    move-result v4

    iget v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_e

    .line 2231
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/b326;->f()F

    move-result v2

    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v2, v4

    .line 2233
    :cond_e
    iget-object v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v4

    iget v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_f

    .line 2235
    iget-object v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/b/b326;->g()F

    move-result v3

    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    .line 2238
    :cond_f
    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cv:F

    iget v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    add-float/2addr v4, v5

    iget v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cw:F

    iget v6, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    add-float/2addr v5, v6

    invoke-static {v4, v5, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v4

    .line 2240
    iget v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cv:F

    iget v6, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cF:F

    add-float/2addr v5, v6

    iget v6, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cw:F

    iget v7, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cG:F

    add-float/2addr v6, v7

    invoke-static {v5, v6, v2, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v2

    .line 2243
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->M:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_11

    .line 2245
    const/high16 v3, 0x43610000    # 225.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_10

    iget-boolean v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cq:Z

    if-eqz v2, :cond_11

    .line 2247
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->L:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->L:I

    .line 2248
    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->M:F

    .line 2259
    :cond_11
    const v2, 0x3ee66666    # 0.45f

    mul-float v2, v2, p1

    .line 2262
    iget v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cv:F

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    iput v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cv:F

    .line 2263
    iget v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cw:F

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cw:F

    .line 2265
    iget v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cv:F

    iget v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->cw:F

    invoke-virtual {v14, v2, v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(FF)V

    .line 2266
    invoke-virtual {v14}, Lcom/corrodinggames/rts/gameFramework/k1104;->H()V

    goto/16 :goto_2

    .line 2308
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v3

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->s:Ljava/lang/String;

    .line 2309
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c(Z)Lcom/corrodinggames/rts/gameFramework/n/s1303;

    move-result-object v3

    goto/16 :goto_3

    .line 2323
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    mul-int/lit8 v5, v5, 0x9

    mul-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    goto/16 :goto_4

    .line 2346
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-nez v2, :cond_5

    .line 2349
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c()Lcom/corrodinggames/rts/gameFramework/n/q1301;

    move-result-object v3

    .line 2351
    if-eqz v3, :cond_1a

    .line 2353
    iget v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    if-ge v2, v4, :cond_5

    .line 19824
    const-string v2, "Activating wave"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 19827
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->R:Z

    if-nez v2, :cond_15

    .line 19829
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-direct {v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d()V

    .line 19833
    :cond_15
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    iget-object v4, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->P:Landroid/graphics/PointF;

    .line 19836
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/gameFramework/n/s1303;

    .line 19838
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v7}, Lcom/corrodinggames/rts/gameFramework/n/s1303;->a(FF)V

    goto :goto_b

    .line 19842
    :cond_16
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->Q:Z

    if-nez v2, :cond_17

    .line 19844
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-direct {v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d()V

    .line 19849
    :cond_17
    iget-boolean v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->b:Z

    if-eqz v2, :cond_18

    .line 19851
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->Q:Z

    .line 19853
    :cond_18
    iget-boolean v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->c:Z

    if-eqz v2, :cond_19

    .line 19855
    iget-object v2, v3, Lcom/corrodinggames/rts/gameFramework/n/q1301;->i:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->Q:Z

    .line 2359
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    goto/16 :goto_5

    .line 2368
    :cond_1a
    iget-boolean v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->dn:Z

    if-nez v2, :cond_5

    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2371
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->j()V

    goto/16 :goto_5

    .line 21593
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 22069
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 21607
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 21626
    :cond_1e
    const/4 v2, 0x0

    move v4, v2

    .line 21628
    goto/16 :goto_a

    :cond_1f
    move v4, v2

    .line 21635
    :cond_20
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->h:Z

    if-eqz v2, :cond_2f

    .line 21637
    if-eqz v3, :cond_2e

    if-eqz v4, :cond_2e

    const/4 v3, 0x1

    .line 21650
    :cond_21
    :goto_c
    if-eqz v3, :cond_32

    .line 21652
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 21654
    iput v5, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    .line 21657
    :cond_22
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->s:I

    if-gtz v2, :cond_30

    .line 21659
    const/4 v2, 0x1

    .line 20784
    :goto_d
    if-eqz v2, :cond_23

    .line 20786
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    .line 20793
    :cond_23
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-nez v2, :cond_24

    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    if-eqz v2, :cond_25

    .line 20795
    :cond_24
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->e:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 20797
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    .line 20798
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    .line 20800
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->m:Z

    .line 20804
    :cond_25
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-eqz v2, :cond_26

    .line 20806
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->p:I

    if-lez v2, :cond_26

    .line 20808
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->k:I

    iget v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->p:I

    add-int/2addr v2, v3

    if-lt v15, v2, :cond_26

    .line 20810
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    .line 20815
    :cond_26
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    if-eqz v2, :cond_7

    .line 20817
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->u:Z

    .line 23033
    :try_start_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v17

    .line 23035
    iget-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    if-nez v2, :cond_65

    .line 23039
    const/4 v2, 0x1

    move v13, v2

    .line 23652
    :goto_e
    sget-boolean v2, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a:Z

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v2

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->bi:Z

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    .line 23644
    :goto_f
    if-eqz v2, :cond_27

    .line 23646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activiated trigger:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24638
    const-string v3, "Map Script: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 23046
    :cond_27
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i:Z

    .line 23048
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    .line 23050
    move-object/from16 v0, v17

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iput v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->k:I

    .line 23052
    const/4 v2, 0x0

    .line 23088
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->A:Lcom/corrodinggames/rts/game/units/custom/bu555;

    if-eqz v3, :cond_2a

    .line 23096
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->A:Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/bu555;->b()Ljava/lang/String;

    move-result-object v2

    .line 23099
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v3, v3, Lcom/corrodinggames/rts/gameFramework/f/i988;->h:Lcom/corrodinggames/rts/gameFramework/f/o994;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/corrodinggames/rts/gameFramework/f/o994;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/f/p995;

    move-result-object v2

    .line 23105
    const-string v3, "globalMessage_delayPerChar"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23109
    if-eqz v3, :cond_28

    .line 23111
    const-string v4, "slow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 23113
    const/16 v3, 0x12

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/f/p995;->e:I

    .line 23125
    :cond_28
    :goto_10
    const-string v3, "globalMessage_textColor"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g(Ljava/lang/String;)I

    move-result v3

    .line 23126
    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 23128
    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/f/p995;->f:I

    .line 23134
    :cond_29
    const/4 v2, 0x1

    .line 23137
    :cond_2a
    const-string v3, "debugMessage"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23138
    if-eqz v3, :cond_2c

    .line 23140
    const-string v2, "Debug: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j(Ljava/lang/String;)V

    .line 23142
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bs:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bi:Z

    if-eqz v2, :cond_2b

    .line 23144
    const-string v2, "Debug: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23145
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23148
    :cond_2b
    const/4 v2, 0x1

    .line 23153
    :cond_2c
    const-string v3, "showOnMap"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->f(Ljava/lang/String;)Z

    move-result v3

    .line 23154
    if-eqz v3, :cond_2d

    .line 23156
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a()I

    move-result v3

    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b()I

    move-result v4

    sget v5, Lcom/corrodinggames/rts/gameFramework/f/u1000;->d:I

    .line 25288
    new-instance v6, Lcom/corrodinggames/rts/gameFramework/f/s998;

    invoke-direct {v6, v2}, Lcom/corrodinggames/rts/gameFramework/f/s998;-><init>(Lcom/corrodinggames/rts/gameFramework/f/q996;)V

    .line 25289
    iput v3, v6, Lcom/corrodinggames/rts/gameFramework/f/s998;->a:I

    .line 25290
    iput v4, v6, Lcom/corrodinggames/rts/gameFramework/f/s998;->b:I

    .line 25292
    iput v5, v6, Lcom/corrodinggames/rts/gameFramework/f/s998;->e:I

    .line 25293
    const v3, 0x3f666666    # 0.9f

    iput v3, v6, Lcom/corrodinggames/rts/gameFramework/f/s998;->c:F

    .line 25294
    const v3, 0x3f666666    # 0.9f

    iput v3, v6, Lcom/corrodinggames/rts/gameFramework/f/s998;->d:F

    .line 25296
    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/f/q996;->aa:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23158
    const/4 v2, 0x1

    .line 23163
    :cond_2d
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->f:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    iget v3, v3, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    if-lez v3, :cond_35

    .line 23165
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->f:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 20824
    :catch_0
    move-exception v2

    .line 20826
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/h332;->printStackTrace()V

    .line 20827
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error activating trigger: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/h332;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 21637
    :cond_2e
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 21643
    :cond_2f
    if-eqz v4, :cond_21

    .line 21645
    const/4 v3, 0x1

    goto/16 :goto_c

    .line 21662
    :cond_30
    iget v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    iget v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->s:I

    add-int/2addr v2, v3

    if-lt v5, v2, :cond_31

    .line 21664
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 21668
    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 21675
    :cond_32
    const/4 v2, -0x1

    iput v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    .line 21677
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 23652
    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 23117
    :cond_34
    :try_start_1
    const-string v3, "globalMessage_delayPerChar"

    const/4 v4, -0x1

    invoke-virtual {v12, v3, v4}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;I)I

    move-result v3

    .line 23118
    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 23120
    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/f/p995;->e:I

    goto/16 :goto_10

    .line 23175
    :cond_35
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->a:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_37

    .line 23177
    if-eqz v13, :cond_36

    .line 23179
    const-string v2, "objective met"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j(Ljava/lang/String;)V

    .line 23182
    :cond_36
    const/4 v2, 0x1

    .line 23185
    :cond_37
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->k:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_38

    .line 23187
    const/4 v2, 0x1

    .line 23190
    :cond_38
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->i:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_39

    .line 23192
    const/4 v2, 0x1

    .line 23195
    :cond_39
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->j:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_3a

    .line 23197
    const/4 v2, 0x1

    .line 23200
    :cond_3a
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_3b

    .line 23202
    const/4 v2, 0x1

    .line 23205
    :cond_3b
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->h:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_3c

    .line 23207
    const/4 v2, 0x1

    .line 23209
    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a()I

    move-result v3

    int-to-float v3, v3

    .line 23210
    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b()I

    move-result v4

    int-to-float v4, v4

    .line 23212
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(FF)V

    .line 23216
    :cond_3c
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->e:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_3d

    .line 23219
    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a()I

    move-result v2

    int-to-float v3, v2

    .line 23220
    invoke-virtual {v12}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b()I

    move-result v2

    int-to-float v4, v2

    .line 25494
    iget-object v7, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->y:Lcom/corrodinggames/rts/game/p352;

    .line 23231
    if-nez v7, :cond_3e

    .line 23233
    const-string v2, "No team set, cannot spawn"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    .line 23247
    :goto_12
    const/4 v2, 0x1

    .line 23250
    :cond_3d
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->c:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_42

    .line 26494
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->y:Lcom/corrodinggames/rts/game/p352;

    .line 23253
    if-nez v2, :cond_40

    .line 23255
    const-string v2, "Team not set for changeCredits"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23237
    :cond_3e
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->v:Lcom/corrodinggames/rts/game/units/custom/ci576;

    if-eqz v2, :cond_3f

    .line 23239
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->v:Lcom/corrodinggames/rts/game/units/custom/ci576;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/corrodinggames/rts/game/units/custom/ci576;->a(FFFFLcom/corrodinggames/rts/game/p352;ZLcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/gameFramework/utility/p1351;Z)V

    goto :goto_12

    .line 23243
    :cond_3f
    const-string v2, "No valid unit list to spawn"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    goto :goto_12

    .line 23258
    :cond_40
    const-string v3, "set"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 23259
    if-eqz v3, :cond_41

    .line 23261
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/corrodinggames/rts/game/p352;->p:D

    .line 23263
    :cond_41
    const-string v3, "add"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 23264
    if-eqz v3, :cond_7

    .line 23266
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/p352;->c(F)V

    goto/16 :goto_6

    .line 23279
    :cond_42
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->d:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_45

    .line 27494
    iget-object v2, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->y:Lcom/corrodinggames/rts/game/p352;

    .line 23282
    if-nez v2, :cond_43

    .line 23284
    const-string v2, "Team not set for event_teamTags"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23289
    :cond_43
    const-string v3, "addTeamTags"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23291
    if-eqz v3, :cond_44

    .line 23293
    invoke-static {v3}, Lcom/corrodinggames/rts/game/units/custom/g604;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v3

    .line 23294
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/p352;->a(Lcom/corrodinggames/rts/game/units/custom/h605;)V

    .line 23297
    :cond_44
    const-string v3, "removeTeamTags"

    invoke-virtual {v12, v3}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23298
    if-eqz v3, :cond_7

    .line 23300
    invoke-static {v3}, Lcom/corrodinggames/rts/game/units/custom/g604;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v3

    .line 23301
    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/units/custom/h605;)V

    goto/16 :goto_6

    .line 23310
    :cond_45
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->b:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_4c

    .line 23313
    const-string v2, "target"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23314
    if-nez v4, :cond_46

    .line 23317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Move trigger has no target id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23321
    :cond_46
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v5

    .line 23322
    if-nez v5, :cond_47

    .line 23325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Move trigger: Cannot find target for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 28494
    :cond_47
    iget-object v6, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->y:Lcom/corrodinggames/rts/game/p352;

    .line 23331
    if-nez v6, :cond_48

    .line 23334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Team not set map trigger:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23340
    :cond_48
    const/4 v3, 0x0

    .line 23342
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cc:Lcom/corrodinggames/rts/gameFramework/c904;

    invoke-virtual {v2, v6}, Lcom/corrodinggames/rts/gameFramework/c904;->a(Lcom/corrodinggames/rts/game/p352;)Lcom/corrodinggames/rts/gameFramework/e934;

    move-result-object v7

    .line 23343
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 23345
    iget-object v9, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v9, v6, :cond_64

    .line 23347
    instance-of v9, v2, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v9, :cond_64

    .line 23349
    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 23351
    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 23353
    check-cast v2, Lcom/corrodinggames/rts/game/units/bp437;

    .line 23354
    invoke-virtual {v7, v2}, Lcom/corrodinggames/rts/gameFramework/e934;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 23356
    add-int/lit8 v2, v3, 0x1

    :goto_14
    move v3, v2

    .line 23362
    goto :goto_13

    .line 23363
    :cond_49
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v2, v5}, Lcom/corrodinggames/rts/gameFramework/e934;->a(FF)V

    .line 23365
    if-eqz v13, :cond_4a

    .line 23367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "firstActivation: move at:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for teamId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v6, Lcom/corrodinggames/rts/game/p352;->l:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to targetId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (#units:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29297
    const-string v3, "MissionEngine:triggerLog"

    invoke-static {v3, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23373
    :cond_4a
    const-string v2, "unload"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 23377
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 23379
    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v4, v6, :cond_4b

    instance-of v4, v2, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_4b

    .line 23382
    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 23384
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->bT()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 23386
    check-cast v2, Lcom/corrodinggames/rts/game/units/bp437;

    .line 23389
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cc:Lcom/corrodinggames/rts/gameFramework/c904;

    invoke-virtual {v4, v6}, Lcom/corrodinggames/rts/gameFramework/c904;->a(Lcom/corrodinggames/rts/game/p352;)Lcom/corrodinggames/rts/gameFramework/e934;

    move-result-object v4

    .line 23390
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/corrodinggames/rts/gameFramework/e934;->e:Z

    .line 23391
    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/gameFramework/e934;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 23393
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/bp437;->bS()Lcom/corrodinggames/rts/game/units/a/c360;

    move-result-object v2

    .line 29926
    iput-object v2, v4, Lcom/corrodinggames/rts/gameFramework/e934;->k:Lcom/corrodinggames/rts/game/units/a/c360;

    goto :goto_15

    .line 23413
    :cond_4c
    iget-object v3, v12, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v4, Lcom/corrodinggames/rts/gameFramework/n/d1288;->f:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v3, v4, :cond_51

    .line 23416
    new-instance v3, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v3}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 23417
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 23419
    instance-of v5, v2, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_4d

    .line 23421
    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 23423
    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 23425
    invoke-virtual {v3, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 23431
    :cond_4e
    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v2

    if-lez v2, :cond_50

    .line 23433
    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4f
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 23435
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->bN()V

    .line 23439
    instance-of v4, v2, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_4f

    .line 23441
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 23443
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    check-cast v2, Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v4, v2}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    goto :goto_17

    .line 23450
    :cond_50
    const/4 v2, 0x1

    .line 23455
    :cond_51
    if-nez v2, :cond_7

    .line 23457
    const-string v2, "Trigger activated with no effect"

    invoke-virtual {v12, v2}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/corrodinggames/rts/game/b/h332; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 2405
    :cond_52
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c:I

    add-int/lit16 v2, v2, 0x3e8

    if-le v15, v2, :cond_61

    .line 2407
    move-object/from16 v0, p0

    iput v15, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c:I

    .line 2409
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2411
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e()Z

    .line 2412
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e()Z

    .line 2416
    :cond_53
    const/4 v2, 0x0

    .line 2418
    iget-object v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eqz v3, :cond_54

    .line 2425
    iget-object v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/game/p352;->a()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2427
    const/4 v2, 0x1

    .line 2434
    :cond_54
    iget-boolean v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->dn:Z

    if-nez v3, :cond_57

    iget-boolean v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->dq:Z

    if-nez v3, :cond_57

    iget-object v3, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v3

    if-nez v3, :cond_57

    if-nez v2, :cond_57

    .line 2437
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2438
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    sget v5, Lcom/corrodinggames/rts/gameFramework/n/v1306;->a:I

    if-ne v4, v5, :cond_59

    .line 2443
    const/4 v2, 0x0

    move v3, v2

    .line 2477
    :cond_55
    :goto_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->f:I

    sget v4, Lcom/corrodinggames/rts/gameFramework/n/v1306;->a:I

    if-ne v2, v4, :cond_5d

    .line 2480
    const/4 v2, 0x0

    .line 2505
    :goto_19
    if-eqz v2, :cond_56

    if-nez v3, :cond_56

    .line 2508
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->k()V

    .line 2513
    :cond_56
    if-eqz v3, :cond_57

    .line 2519
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->j()V

    .line 2521
    iget v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_57

    .line 2523
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numberOfWins:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->numberOfWins:I

    .line 2524
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->save()Z

    .line 2535
    :cond_57
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    if-eqz v2, :cond_61

    .line 2537
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    if-nez v2, :cond_61

    .line 2540
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x1

    move v3, v2

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 2544
    instance-of v5, v2, Lcom/corrodinggames/rts/game/units/d/g656;

    if-nez v5, :cond_58

    iget-boolean v5, v2, Lcom/corrodinggames/rts/game/units/ce454;->bR:Z

    if-eqz v5, :cond_62

    .line 2546
    :cond_58
    iget-boolean v5, v2, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v5, :cond_62

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v5

    if-nez v5, :cond_62

    .line 2548
    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v2, v5, :cond_62

    .line 2550
    const/4 v2, 0x0

    :goto_1b
    move v3, v2

    .line 2554
    goto :goto_1a

    .line 2445
    :cond_59
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    sget v5, Lcom/corrodinggames/rts/gameFramework/n/v1306;->g:I

    if-ne v4, v5, :cond_5b

    .line 2447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_5a
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/gameFramework/n/w1307;

    .line 31029
    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/n/w1307;->a:Lcom/corrodinggames/rts/gameFramework/n/a1285;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    .line 2449
    if-nez v2, :cond_5a

    .line 2451
    const/4 v3, 0x0

    goto :goto_1c

    .line 2458
    :cond_5b
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eqz v2, :cond_55

    .line 2461
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 2463
    iget-object v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iget-object v6, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v6}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 2465
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    invoke-static {v5, v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(ILcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2467
    const/4 v2, 0x0

    move v3, v2

    .line 2468
    goto/16 :goto_18

    .line 2482
    :cond_5d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->f:I

    sget v4, Lcom/corrodinggames/rts/gameFramework/n/v1306;->g:I

    if-ne v2, v4, :cond_5e

    .line 2484
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2488
    :cond_5e
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-eqz v2, :cond_63

    .line 2490
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/ce454;

    .line 2492
    iget-object v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    iget-object v6, v2, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v6}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 2494
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->f:I

    invoke-static {v5, v2}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(ILcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2496
    const/4 v2, 0x0

    .line 2497
    goto/16 :goto_19

    .line 2556
    :cond_60
    if-eqz v3, :cond_61

    .line 2558
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    .line 2566
    iget-object v2, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->k()V

    .line 2576
    :cond_61
    return-void

    :cond_62
    move v2, v3

    goto/16 :goto_1b

    :cond_63
    const/4 v2, 0x1

    goto/16 :goto_19

    :cond_64
    move v2, v3

    goto/16 :goto_14

    :cond_65
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_e

    :cond_66
    move-object v2, v3

    goto/16 :goto_1
.end method
