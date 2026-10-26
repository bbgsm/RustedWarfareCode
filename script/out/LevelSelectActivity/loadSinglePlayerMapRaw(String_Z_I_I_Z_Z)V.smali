.method public static loadSinglePlayerMapRaw(Ljava/lang/String;ZIIZZ)V
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1281
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v7

    .line 1284
    iget-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->d()V

    .line 1286
    if-nez p1, :cond_0

    if-eqz p5, :cond_e

    .line 1292
    :cond_0
    invoke-virtual {v7}, Lcom/corrodinggames/rts/gameFramework/k1104;->C()V

    .line 1294
    monitor-enter v7

    .line 1296
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->dj:Lcom/corrodinggames/rts/gameFramework/j/j1071;

    .line 1297
    iput-object p0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->di:Ljava/lang/String;

    .line 1300
    sget v0, Lcom/corrodinggames/rts/game/p352;->c:I

    add-int/lit8 v0, v0, -0x1

    .line 1302
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->a(Ljava/lang/String;)I

    move-result v2

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Max teams on map: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1306
    if-lez v2, :cond_f

    .line 1308
    add-int/lit8 v3, v2, -0x1

    if-ge v3, v0, :cond_f

    .line 1310
    add-int/lit8 v0, v2, -0x1

    move v6, v0

    .line 1315
    :goto_0
    invoke-static {}, Lcom/corrodinggames/rts/game/p352;->x()V

    .line 1317
    new-instance v0, Lcom/corrodinggames/rts/game/e341;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/corrodinggames/rts/game/e341;-><init>(I)V

    iput-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    .line 1319
    iget-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    const-string v2, "Player"

    iput-object v2, v0, Lcom/corrodinggames/rts/game/p352;->w:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    move v2, v1

    .line 1352
    :goto_1
    if-gt v2, v4, :cond_5

    move v5, v4

    .line 1354
    :goto_2
    if-gt v5, v6, :cond_4

    .line 1356
    rem-int/lit8 v3, v5, 0x2

    if-eqz v3, :cond_1

    if-ne v2, v4, :cond_3

    :cond_1
    move v3, v4

    .line 1358
    :goto_3
    if-ge v0, p3, :cond_2

    if-eqz v3, :cond_2

    .line 1360
    :try_start_1
    invoke-static {v5}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v3

    .line 1361
    if-nez v3, :cond_2

    .line 1363
    new-instance v3, Lcom/corrodinggames/rts/game/a/a296;

    invoke-direct {v3, v5}, Lcom/corrodinggames/rts/game/a/a296;-><init>(I)V

    .line 1364
    const-string v8, "AI"

    iput-object v8, v3, Lcom/corrodinggames/rts/game/p352;->w:Ljava/lang/String;

    .line 1365
    const/4 v8, 0x0

    iput v8, v3, Lcom/corrodinggames/rts/game/p352;->s:I

    .line 1366
    add-int/lit8 v0, v0, 0x1

    .line 1354
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 1356
    goto :goto_3

    .line 1352
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1373
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allies: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    move v2, v1

    .line 1381
    :goto_4
    if-gt v2, v4, :cond_b

    move v5, v4

    .line 1383
    :goto_5
    if-gt v5, v6, :cond_a

    .line 1385
    rem-int/lit8 v3, v5, 0x2

    if-eq v3, v4, :cond_6

    if-ne v2, v4, :cond_9

    :cond_6
    move v3, v4

    .line 1386
    :goto_6
    if-nez p4, :cond_7

    move v3, v4

    .line 1391
    :cond_7
    sub-int v8, p2, p3

    if-ge v0, v8, :cond_8

    if-eqz v3, :cond_8

    .line 1393
    :try_start_2
    invoke-static {v5}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v3

    .line 1394
    if-nez v3, :cond_8

    .line 1396
    new-instance v3, Lcom/corrodinggames/rts/game/a/a296;

    invoke-direct {v3, v5}, Lcom/corrodinggames/rts/game/a/a296;-><init>(I)V

    .line 1397
    const-string v8, "AI"

    iput-object v8, v3, Lcom/corrodinggames/rts/game/p352;->w:Ljava/lang/String;

    .line 1398
    add-int/lit8 v0, v0, 0x1

    .line 1400
    if-eqz p4, :cond_8

    .line 1402
    const/4 v8, 0x1

    iput v8, v3, Lcom/corrodinggames/rts/game/p352;->s:I

    .line 1383
    :cond_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_5

    :cond_9
    move v3, v1

    .line 1385
    goto :goto_6

    .line 1381
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1410
    :cond_b
    iget-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->B()Z

    .line 1433
    if-nez p5, :cond_c

    .line 1435
    const/4 v0, 0x0

    sget v1, Lcom/corrodinggames/rts/gameFramework/ac796;->b:I

    invoke-virtual {v7, v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(ZI)V

    .line 1438
    :cond_c
    monitor-exit v7

    .line 1464
    :cond_d
    :goto_7
    return-void

    .line 1438
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1443
    :cond_e
    invoke-virtual {v7}, Lcom/corrodinggames/rts/gameFramework/k1104;->C()V

    .line 1445
    monitor-enter v7

    .line 1447
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->dj:Lcom/corrodinggames/rts/gameFramework/j/j1071;

    .line 1448
    iput-object p0, v7, Lcom/corrodinggames/rts/gameFramework/k1104;->di:Ljava/lang/String;

    .line 1452
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1454
    if-nez p5, :cond_d

    .line 1456
    sget v0, Lcom/corrodinggames/rts/gameFramework/ac796;->b:I

    invoke-virtual {v7, v4, v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(ZI)V

    goto :goto_7

    .line 1452
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_f
    move v6, v0

    goto/16 :goto_0
.end method
