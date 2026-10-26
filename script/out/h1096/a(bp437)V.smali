.method final strictfp a(Lcom/corrodinggames/rts/game/units/bp437;)V
    .locals 18

    .line 84
    if-eqz p1, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    .line 87
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->m:Z

    if-nez v2, :cond_0

    .line 91
    const-string v2, "buildAndReplaceClearanceCost being skipped"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->m:Z

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    if-eqz p1, :cond_12

    .line 1262
    const-wide/16 v2, 0x0

    .line 1263
    if-nez p1, :cond_3

    .line 1265
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v2

    .line 1268
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v13, v4, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 1270
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    if-nez v4, :cond_4

    .line 1274
    const/16 p1, 0x0

    .line 1276
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    .line 1278
    const/4 v7, 0x0

    .line 1279
    const/4 v4, 0x0

    .line 1280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v5, v5, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    .line 1281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v6, v6, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    .line 1282
    if-eqz p1, :cond_6

    .line 1284
    if-eqz v8, :cond_5

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    invoke-static {v8, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a([B[B)V

    .line 1289
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v13, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 1291
    invoke-virtual/range {p1 .. p1}, Lcom/corrodinggames/rts/game/units/bp437;->bH()Landroid/graphics/Rect;

    move-result-object v6

    .line 1293
    iget v4, v13, Lcom/corrodinggames/rts/game/b/b326;->U:I

    int-to-short v5, v4

    .line 1294
    iget v4, v13, Lcom/corrodinggames/rts/game/b/b326;->V:I

    int-to-short v8, v4

    .line 1295
    add-int/lit8 v4, v5, -0x5

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    int-to-short v7, v4

    .line 1296
    add-int/lit8 v4, v8, -0x5

    iget v9, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v9

    int-to-short v4, v4

    .line 1297
    add-int/lit8 v5, v5, 0x5

    iget v9, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v9

    int-to-short v5, v5

    .line 1298
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x5

    add-int/2addr v6, v8

    int-to-short v6, v6

    .line 1300
    :cond_6
    if-gez v7, :cond_7

    const/4 v7, 0x0

    .line 1301
    :cond_7
    if-gez v4, :cond_8

    const/4 v4, 0x0

    .line 1302
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v8, v8, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    if-le v5, v8, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v5, v5, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    .line 1303
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v8, v8, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    if-le v6, v8, :cond_26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v6, v6, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    move v11, v6

    move v12, v7

    .line 1304
    :goto_1
    if-ge v12, v5, :cond_11

    move v10, v4

    .line 1306
    :goto_2
    if-ge v10, v11, :cond_10

    .line 1308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 1325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v10

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 1327
    const/4 v6, 0x0

    .line 1308
    :goto_3
    mul-int v7, v15, v12

    add-int/2addr v7, v10

    aput-byte v6, v14, v7

    .line 1306
    add-int/lit8 v6, v10, 0x1

    int-to-short v6, v6

    move v10, v6

    goto :goto_2

    .line 1330
    :cond_a
    const/4 v7, 0x4

    add-int/lit8 v6, v12, -0x3

    move v9, v6

    .line 1342
    :goto_4
    add-int/lit8 v6, v12, 0x3

    if-gt v9, v6, :cond_f

    add-int/lit8 v6, v10, -0x3

    move v8, v6

    .line 1344
    :goto_5
    add-int/lit8 v6, v10, 0x3

    if-gt v8, v6, :cond_e

    .line 1347
    const/4 v6, 0x0

    .line 1348
    invoke-virtual {v13, v9, v8}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    move/from16 v17, v0

    mul-int v17, v17, v9

    add-int v17, v17, v8

    aget-byte v16, v16, v17

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1352
    const/4 v6, 0x1

    .line 1354
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->e:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    move/from16 v17, v0

    mul-int v17, v17, v9

    add-int v17, v17, v8

    aget-byte v16, v16, v17

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1361
    :cond_c
    const/4 v6, 0x1

    .line 1363
    :cond_d
    if-eqz v6, :cond_24

    .line 1366
    invoke-static {v12, v10, v9, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(IIII)I

    move-result v6

    .line 1368
    if-ge v6, v7, :cond_24

    .line 1344
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto :goto_5

    .line 1342
    :cond_e
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_4

    .line 1376
    :cond_f
    int-to-byte v6, v7

    goto :goto_3

    .line 1304
    :cond_10
    add-int/lit8 v6, v12, 0x1

    int-to-short v6, v6

    move v12, v6

    goto/16 :goto_1

    .line 1313
    :cond_11
    if-nez p1, :cond_1

    .line 1315
    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v2

    float-to-double v2, v2

    .line 1318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildAndReplaceClearanceCost took:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_12
    const-wide/16 v2, 0x0

    .line 108
    if-nez p1, :cond_13

    .line 110
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v2

    .line 113
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v11, v4, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 115
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    if-nez v4, :cond_14

    .line 119
    const/16 p1, 0x0

    .line 121
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v5, v5, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    .line 126
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v6, v6, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    .line 127
    if-eqz p1, :cond_16

    .line 129
    if-eqz v7, :cond_15

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    invoke-static {v7, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a([B[B)V

    .line 134
    :cond_15
    move-object/from16 v0, p1

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v11, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/corrodinggames/rts/game/units/bp437;->bH()Landroid/graphics/Rect;

    move-result-object v6

    .line 138
    iget v4, v11, Lcom/corrodinggames/rts/game/b/b326;->U:I

    int-to-short v5, v4

    .line 139
    iget v4, v11, Lcom/corrodinggames/rts/game/b/b326;->V:I

    int-to-short v7, v4

    .line 140
    add-int/lit8 v4, v5, -0x5

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    int-to-short v8, v4

    .line 141
    add-int/lit8 v4, v7, -0x5

    iget v9, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v9

    int-to-short v4, v4

    .line 142
    add-int/lit8 v5, v5, 0x5

    iget v9, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v9

    int-to-short v5, v5

    .line 143
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    int-to-short v6, v6

    .line 145
    :cond_16
    if-gez v8, :cond_17

    const/4 v8, 0x0

    .line 146
    :cond_17
    if-gez v4, :cond_18

    const/4 v4, 0x0

    .line 147
    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v7, v7, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    if-le v5, v7, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v5, v5, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    .line 148
    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v7, v7, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    if-le v6, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v6, v6, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    :cond_1a
    move v10, v8

    .line 151
    :goto_7
    if-ge v10, v5, :cond_1f

    move v9, v4

    .line 153
    :goto_8
    if-ge v9, v6, :cond_1e

    .line 155
    const/4 v7, 0x0

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v13, v10

    add-int/2addr v13, v9

    aget-byte v12, v12, v13

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1b

    .line 159
    const/4 v7, 0x1

    .line 161
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->e:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v13, v10

    add-int/2addr v13, v9

    aget-byte v12, v12, v13

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1c

    .line 163
    const/4 v7, 0x1

    .line 166
    :cond_1c
    if-eqz v7, :cond_1d

    .line 168
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    const/4 v13, 0x0

    aput-byte v13, v7, v12

    .line 153
    :goto_9
    add-int/lit8 v7, v9, 0x1

    int-to-short v7, v7

    move v9, v7

    goto :goto_8

    .line 172
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v9

    const/4 v13, 0x4

    aput-byte v13, v7, v12

    goto :goto_9

    .line 151
    :cond_1e
    add-int/lit8 v7, v10, 0x1

    int-to-short v7, v7

    move v10, v7

    goto :goto_7

    :cond_1f
    move v9, v8

    .line 180
    :goto_a
    if-ge v9, v5, :cond_25

    move v7, v4

    .line 182
    :goto_b
    if-ge v7, v6, :cond_21

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    mul-int/2addr v12, v9

    add-int/2addr v12, v7

    aget-byte v10, v10, v12

    if-nez v10, :cond_20

    .line 188
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v7, v10}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V

    .line 182
    :cond_20
    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_b

    .line 180
    :cond_21
    add-int/lit8 v7, v9, 0x1

    int-to-short v7, v7

    move v9, v7

    goto :goto_a

    .line 196
    :goto_c
    if-ge v7, v5, :cond_22

    .line 198
    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v8, v9}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V

    .line 199
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v8, v8, Lcom/corrodinggames/rts/gameFramework/k/k1099;->t:S

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v8, v9}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V

    .line 196
    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_c

    .line 201
    :cond_22
    :goto_d
    if-ge v4, v6, :cond_23

    .line 203
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5, v4, v7}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-short v5, v5, Lcom/corrodinggames/rts/gameFramework/k/k1099;->s:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5, v4, v7}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/b/b326;SS[B)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_d

    .line 212
    :cond_23
    if-nez p1, :cond_1

    .line 214
    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v2

    float-to-double v2, v2

    .line 215
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildAndReplaceClearanceCostNew took:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    move v6, v7

    goto/16 :goto_6

    :cond_25
    move v7, v8

    goto :goto_c

    :cond_26
    move v11, v6

    move v12, v7

    goto/16 :goto_1
.end method
