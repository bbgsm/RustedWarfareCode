.method private static a(Ljava/lang/String;IZLcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 2461
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    move v8, v2

    .line 2464
    :goto_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v13

    .line 2466
    if-eqz p3, :cond_3

    .line 2468
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->f:Z

    if-eqz v2, :cond_2

    iget-object v2, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->loadDisabledModData:Z

    if-nez v2, :cond_2

    .line 2470
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->A:Z

    .line 2680
    :cond_0
    :goto_1
    return-void

    .line 2461
    :cond_1
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 2476
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->A:Z

    .line 2480
    :cond_3
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->f:Z

    if-eqz v2, :cond_4

    .line 2482
    const-string v2, "Note: Loading disabled mod: "

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2488
    :cond_4
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/e/a926;->d()Ljava/lang/String;

    .line 2490
    invoke-static/range {p0 .. p0}, Lcom/corrodinggames/rts/gameFramework/e/a926;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2492
    if-nez v14, :cond_7

    .line 2494
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/e/a926;->d()Ljava/lang/String;

    move-result-object v2

    .line 2496
    const-string v3, "readAllCustomUnitConfigs: ERROR"

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2497
    const-string v3, "readAllCustomUnitConfigs: Failed to load:"

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2498
    if-eqz p3, :cond_0

    .line 2500
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->B:Z

    if-nez v3, :cond_6

    .line 2502
    if-nez v2, :cond_5

    .line 2504
    const-string v2, "Failed to list directory, check file permissions"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->P:Ljava/lang/String;

    goto :goto_1

    .line 2508
    :cond_5
    const-string v3, "Failed to list directory: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->P:Ljava/lang/String;

    goto :goto_1

    .line 2513
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to list subdirectory: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' check file permissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->Q:Ljava/lang/String;

    .line 2515
    if-eqz v2, :cond_0

    .line 2517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->Q:Ljava/lang/String;

    goto/16 :goto_1

    .line 2526
    :cond_7
    if-eqz p3, :cond_8

    .line 2528
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->B:Z

    .line 2531
    :cond_8
    if-nez v8, :cond_17

    .line 2533
    array-length v4, v14

    const/4 v3, 0x0

    move-object/from16 v2, p5

    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v5, v14, v3

    .line 2535
    const-string v6, "all-units.template"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v2, p0

    .line 2533
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    move-object v7, v2

    .line 2551
    :goto_3
    array-length v15, v14

    const/4 v2, 0x0

    move v12, v2

    :goto_4
    if-ge v12, v15, :cond_0

    aget-object v3, v14, v12

    .line 2554
    const-string v2, "custom_units_here.txt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "mods_here_will_be_enabled_by_default.txt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2559
    const-string v2, "__MACOSX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2565
    if-eqz p2, :cond_15

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    if-nez p3, :cond_15

    .line 2571
    iget-object v2, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->d(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/i/b1019;

    move-result-object v5

    .line 2573
    if-nez v5, :cond_b

    .line 2575
    const-string v2, "readAllCustomUnitConfigs: Could not find linked mod:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2577
    iget-object v2, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    iget-object v5, v2, Lcom/corrodinggames/rts/gameFramework/i/a1018;->c:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2580
    :cond_b
    const/4 v2, 0x1

    move v9, v2

    .line 2585
    :goto_5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".ini"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez v8, :cond_f

    .line 2587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2589
    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/ag500;->r:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eq v4, v5, :cond_c

    if-eqz v5, :cond_c

    .line 2591
    sput-object v5, Lcom/corrodinggames/rts/game/units/custom/ag500;->r:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    .line 2593
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ag500;->i()V

    .line 2595
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Loading units from mod: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/corrodinggames/rts/gameFramework/i/b1019;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2599
    :cond_c
    const-string v4, "desktop.ini"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2601
    const-string v3, "Skipping possible system file: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2551
    :cond_d
    :goto_6
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_4

    .line 2605
    :cond_e
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v10

    .line 2607
    move-object/from16 v0, p4

    invoke-static {v2, v5, v0, v7}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2609
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/ah501;->f:Lcom/corrodinggames/rts/game/units/custom/ah501;

    invoke-static {v10, v11, v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(JLcom/corrodinggames/rts/game/units/custom/ah501;)V

    goto :goto_6

    .line 2612
    :cond_f
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".tmx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2615
    const-string v3, "Found map: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2618
    if-eqz v5, :cond_10

    iget-boolean v3, v5, Lcom/corrodinggames/rts/gameFramework/i/b1019;->z:Z

    if-eqz v3, :cond_10

    .line 2620
    iget-object v3, v13, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    invoke-virtual {v3, v2, v5}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/i/b1019;)V

    goto :goto_6

    .line 2624
    :cond_10
    const-string v2, "Skipping map due to mod settings"

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 2633
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2634
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ge v0, v3, :cond_14

    .line 2637
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/e/a926;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2641
    if-nez p4, :cond_16

    move-object v6, v2

    .line 2646
    :goto_7
    const-wide/16 v10, -0x1

    .line 2647
    if-eqz v9, :cond_12

    .line 2649
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/cf910;->a()J

    move-result-wide v10

    .line 2650
    const-string v3, "============"

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2651
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>> Mod \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->i()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2654
    :cond_12
    add-int/lit8 v3, p1, 0x1

    move/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;IZLcom/corrodinggames/rts/gameFramework/i/b1019;Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    if-eqz v9, :cond_d

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2659
    invoke-static {v10, v11}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(J)F

    move-result v2

    float-to-double v2, v2

    .line 2661
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Mod \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/corrodinggames/rts/gameFramework/i/b1019;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' load took:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/corrodinggames/rts/gameFramework/cf910;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2651
    :cond_13
    const-string v3, " (disabled)"

    goto :goto_8

    .line 2673
    :cond_14
    const-string v3, "Too many levels:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    const/4 v2, 0x0

    move v9, v2

    move-object/from16 v5, p3

    goto/16 :goto_5

    :cond_16
    move-object/from16 v6, p4

    goto/16 :goto_7

    :cond_17
    move-object/from16 v7, p5

    goto/16 :goto_3
.end method
