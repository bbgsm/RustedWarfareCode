.method public static e()V
    .locals 14

    .line 2186
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v9

    .line 2190
    iget-object v0, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->j()Ljava/util/ArrayList;

    move-result-object v10

    .line 2192
    const/4 v0, 0x0

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->j:I

    .line 2193
    const/4 v0, 0x0

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->i:I

    .line 2194
    const/4 v0, 0x0

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->l:I

    .line 2195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->k:Z

    .line 2197
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v12

    .line 2202
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 2204
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    .line 2205
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->a:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v1, :cond_1

    .line 2207
    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->a:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 2209
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    .line 2207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->b:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v1, :cond_2

    .line 2215
    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->b:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 2217
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2221
    :cond_2
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->c:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-eqz v1, :cond_0

    .line 2223
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->c:[Lcom/corrodinggames/rts/gameFramework/m/e1216;

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 2225
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    .line 2223
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2231
    :cond_3
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/a/i792;

    .line 2233
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/a/i792;->g:Z

    goto :goto_3

    .line 2237
    :cond_4
    const/4 v1, 0x0

    .line 2239
    const/4 v2, 0x0

    .line 2240
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2244
    const v4, 0x7a1200

    :try_start_0
    new-array v1, v4, [B

    .line 2246
    const/4 v4, 0x0

    iget-byte v5, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->eb:B

    aput-byte v5, v1, v4

    .line 2247
    const/4 v4, 0x1

    aget-byte v4, v1, v4

    iput-byte v4, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->ec:B

    .line 2251
    const/4 v4, 0x2

    new-array v2, v4, [[B

    .line 2252
    const/4 v4, 0x0

    const v5, 0x2dc6c0

    new-array v5, v5, [B

    aput-object v5, v2, v4

    .line 2253
    const/4 v4, 0x1

    const v5, 0x2dc6c0

    new-array v5, v5, [B

    aput-object v5, v2, v4

    .line 2255
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    iget-byte v6, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->eb:B

    aput-byte v6, v4, v5

    .line 2256
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x0

    iget-byte v6, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->eb:B

    aput-byte v6, v4, v5

    .line 2258
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->X()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2260
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    const/4 v3, 0x0

    const v4, 0x4c4b40

    :try_start_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2262
    const/4 v3, 0x1

    const v4, 0x4c4b40

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2265
    const/4 v3, 0x2

    const v4, 0x4c4b40

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2266
    const/4 v3, 0x3

    const v4, 0x4c4b40

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 2279
    :goto_4
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2281
    :try_start_2
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2282
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2283
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2284
    const/4 v0, 0x0

    sput-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->e:Ljava/util/ArrayList;

    .line 2285
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2286
    iget-object v0, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    .line 22075
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/i/a1018;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2287
    const/4 v0, 0x0

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->b:I

    .line 2288
    const/4 v0, 0x0

    sput v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->c:I

    .line 2290
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    monitor-enter v1

    .line 2292
    :try_start_3
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2293
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2296
    const-string v0, "units"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "units"

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/e/a926;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;IZLcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aG:Z

    if-nez v0, :cond_d

    iget-boolean v0, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->aq:Z

    if-nez v0, :cond_d

    .line 2306
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->h()Ljava/lang/String;

    move-result-object v0

    .line 2312
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Modded Custom \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' directory not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2323
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2325
    iget-boolean v0, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->w:Z

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 22254
    iget-object v0, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->o:Ljava/lang/String;

    .line 2330
    iget-boolean v1, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->k:Z

    if-eqz v1, :cond_8

    .line 2332
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2335
    :cond_8
    iget-boolean v1, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->f:Z

    if-eqz v1, :cond_9

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disabled mod at:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2344
    :goto_6
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;IZLcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2272
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2273
    const-string v3, "Failed to reserve memory pre-mod load"

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    goto/16 :goto_4

    .line 2282
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 2293
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 2341
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading mod at:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 2349
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2351
    iget-boolean v0, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->w:Z

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->o:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2354
    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->f()Ljava/lang/String;

    move-result-object v0

    .line 2357
    iget-boolean v1, v3, Lcom/corrodinggames/rts/gameFramework/i/b1019;->f:Z

    if-eqz v1, :cond_c

    .line 2359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disabled workshop mod at:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2366
    :goto_9
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;IZLcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2363
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading workshop mod at:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_9

    .line 2376
    :cond_d
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->i()V

    .line 2381
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Z)Ljava/lang/String;

    .line 2384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Done loading custom units. image cacheHits:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " image cacheMisses:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12, v13}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2402
    const-string v0, "========= Mods data loaded ==========="

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of mods:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 22829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mod: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' - Memory use:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const-string v0, " (disabled)"

    goto :goto_b

    .line 2410
    :cond_f
    const-string v0, "================================"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2413
    if-eqz v6, :cond_10

    .line 2415
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 2416
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 2417
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 2418
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 2423
    :cond_10
    if-eqz v8, :cond_11

    .line 2425
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 2426
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 2431
    :cond_11
    if-eqz v7, :cond_12

    .line 2433
    const/4 v0, 0x1

    iget-byte v1, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->eb:B

    aput-byte v1, v7, v0

    .line 2434
    const/4 v0, 0x1

    aget-byte v0, v7, v0

    iput-byte v0, v9, Lcom/corrodinggames/rts/gameFramework/k1104;->ec:B

    .line 2437
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2438
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2444
    :cond_12
    return-void

    .line 2272
    :catch_1
    move-exception v3

    goto/16 :goto_7
.end method
