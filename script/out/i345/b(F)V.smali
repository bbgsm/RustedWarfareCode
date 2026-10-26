.method private strictfp b(F)V
    .locals 14

    const/16 v13, 0x46

    const v12, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    .line 3170
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v12

    if-gez v0, :cond_0

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAllGame1: deltaSpeed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " network.currentStepRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    .line 52034
    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->K:F

    .line 3172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    .line 3178
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bq:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3180
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    .line 52035
    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/bp890;->t:Z

    .line 3180
    if-nez v0, :cond_1

    .line 3182
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bq:F

    mul-float/2addr p1, v0

    .line 3186
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->G:F

    mul-float v1, p1, v0

    .line 3191
    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->H:F

    .line 3193
    iput v1, p0, Lcom/corrodinggames/rts/game/i345;->I:F

    .line 3202
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->l()V

    .line 3203
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bv:I

    int-to-float v0, v0

    const v2, 0x41855555

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->bv:I

    .line 3204
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cc:Lcom/corrodinggames/rts/gameFramework/c904;

    .line 52036
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v2

    .line 52037
    sput v3, Lcom/corrodinggames/rts/gameFramework/c904;->e:I

    .line 52039
    iget-object v2, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->C:Z

    if-nez v2, :cond_5

    .line 52041
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/c904;->c()V

    .line 3205
    :goto_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/bp890;->f()V

    .line 3206
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    .line 3208
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->G()V

    .line 3210
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    if-eqz v0, :cond_2

    .line 3212
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 52054
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/b326;->d(F)V

    .line 3216
    :cond_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ac()Z

    move-result v0

    if-eqz v0, :cond_3

    cmpg-float v0, v1, v12

    if-gez v0, :cond_3

    .line 3218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateAllGame2: deltaSpeed:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frame:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    .line 3222
    :cond_3
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    .line 3224
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/ah801;->dj()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v4

    .line 52171
    iget-object v5, v4, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->d:[Ljava/lang/Object;

    .line 3228
    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->size()I

    move-result v6

    .line 3230
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ac()Z

    move-result v7

    move v2, v3

    .line 3232
    :goto_1
    if-ge v2, v6, :cond_6

    .line 3234
    aget-object v0, v5, v2

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 3238
    if-eqz v7, :cond_4

    .line 3246
    iget v8, p0, Lcom/corrodinggames/rts/game/i345;->I:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_4

    .line 3248
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "JIT bug detected, attempting to correct. before object:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/corrodinggames/rts/gameFramework/ah801;->ej:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " frame:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deltaSpeed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->f(Ljava/lang/String;)V

    .line 3249
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->I:F

    .line 3253
    :cond_4
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(F)V

    .line 3232
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 52045
    :cond_5
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/c904;->d()V

    goto/16 :goto_0

    .line 3268
    :cond_6
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->ac()Z

    move-result v0

    if-eqz v0, :cond_7

    cmpg-float v0, v1, v12

    if-gez v0, :cond_7

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateAllGame3: deltaSpeed:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frame:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->bu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->e(Ljava/lang/String;)V

    .line 3276
    :cond_7
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->a:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v5

    move v2, v3

    .line 3277
    :goto_2
    if-ge v2, v5, :cond_9

    .line 3279
    iget-object v0, v4, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->a:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0, v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/utility/u1356;

    .line 3281
    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/utility/u1356;->a:Lcom/corrodinggames/rts/gameFramework/utility/t1355;

    sget-object v7, Lcom/corrodinggames/rts/gameFramework/utility/t1355;->a:Lcom/corrodinggames/rts/gameFramework/utility/t1355;

    if-ne v6, v7, :cond_8

    .line 3283
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/utility/u1356;->b:Ljava/lang/Object;

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 3285
    iget-boolean v6, v0, Lcom/corrodinggames/rts/gameFramework/ah801;->el:Z

    if-nez v6, :cond_8

    .line 3287
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/ah801;->a(F)V

    .line 3277
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3295
    :cond_9
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->m:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3296
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/f/c738;->a()V

    .line 3297
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->m:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3300
    invoke-static {v1}, Lcom/corrodinggames/rts/game/units/bp437;->g(F)V

    .line 3302
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/j607;->cU()V

    .line 3304
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/j607;->dc()V

    .line 3307
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    .line 3309
    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_b

    .line 3311
    iput v3, p0, Lcom/corrodinggames/rts/game/i345;->i:I

    .line 3314
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 3316
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v5, :cond_12

    instance-of v0, v0, Lcom/corrodinggames/rts/game/units/cd453;

    if-nez v0, :cond_12

    .line 3318
    add-int/lit8 v0, v2, 0x1

    :goto_4
    move v2, v0

    .line 3320
    goto :goto_3

    .line 3323
    :cond_a
    if-le v2, v13, :cond_b

    .line 3325
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    .line 3327
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 3329
    instance-of v5, v0, Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_11

    .line 3332
    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v5, :cond_11

    instance-of v5, v0, Lcom/corrodinggames/rts/game/units/cd453;

    if-nez v5, :cond_11

    .line 3334
    iget-wide v6, v0, Lcom/corrodinggames/rts/game/units/ce454;->bY:J

    iget v5, p0, Lcom/corrodinggames/rts/game/i345;->bv:I

    add-int/lit16 v5, v5, -0x7530

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_11

    .line 3336
    if-le v2, v13, :cond_11

    .line 3338
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->a()V

    .line 3339
    add-int/lit8 v0, v2, -0x1

    :goto_6
    move v2, v0

    .line 3344
    goto :goto_5

    .line 3349
    :cond_b
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->l:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3350
    invoke-static {v1}, Lcom/corrodinggames/rts/game/p352;->d(F)V

    .line 3351
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->l:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3353
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/d/a917;->a(F)V

    .line 3355
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(F)V

    .line 3358
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->C:Lcom/corrodinggames/rts/gameFramework/d/b918;

    .line 52172
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/d/b918;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 52176
    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->a:Z

    if-nez v2, :cond_c

    .line 52178
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/d/b918;->b()V

    .line 52182
    :cond_c
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->e:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->e:F

    .line 52183
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->f:F

    const v4, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->f:F

    .line 52185
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->e:F

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v4

    int-to-float v4, v4

    rem-float/2addr v2, v4

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->e:F

    .line 52186
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->f:F

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->g()I

    move-result v4

    int-to-float v4, v4

    rem-float/2addr v2, v4

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/d/b918;->f:F

    .line 3360
    :cond_d
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->a(F)V

    .line 3362
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    if-eqz v0, :cond_e

    .line 3364
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cb:Lcom/corrodinggames/rts/gameFramework/n/p1300;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(F)V

    .line 3367
    :cond_e
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->o:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3369
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->o:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3371
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->n:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3372
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/f/q996;->a(F)V

    .line 3373
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->n:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3376
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(F)V

    .line 3378
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cd:Lcom/corrodinggames/rts/gameFramework/g/a1007;

    if-eqz v0, :cond_f

    .line 3379
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->cd:Lcom/corrodinggames/rts/gameFramework/g/a1007;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/g/a1007;->b()V

    .line 3381
    :cond_f
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bV:Lcom/corrodinggames/rts/gameFramework/bv896;

    .line 52189
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    .line 52191
    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/bv896;->e:Z

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/bv896;->d:I

    if-gt v2, v1, :cond_10

    .line 52210
    invoke-virtual {v0, v1, v3, v3}, Lcom/corrodinggames/rts/gameFramework/bv896;->a(IZZ)V

    .line 3383
    :cond_10
    return-void

    :cond_11
    move v0, v2

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_4
.end method
