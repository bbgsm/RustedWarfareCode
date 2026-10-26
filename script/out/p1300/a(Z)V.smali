.method public final a(Z)V
    .locals 14

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xff

    const/4 v7, 0x1

    .line 318
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v8

    .line 323
    iput-boolean v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->q:Z

    .line 326
    iget v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b:I

    .line 328
    iget v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->c:I

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    .line 332
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 334
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->E:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v8, v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    .line 342
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 343
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 345
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->G:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v8, v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    .line 350
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 351
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 353
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v8, v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->F:Landroid/graphics/Paint;

    .line 357
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 358
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->F:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v8, v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/graphics/Paint;F)V

    .line 361
    iput-boolean v7, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->j:Z

    .line 370
    iget-object v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    if-nez v0, :cond_1

    .line 372
    const-string v0, "MissionEngine"

    const-string v1, "Error: \'triggers\' object layer is missing from this map"

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 383
    :goto_0
    if-nez v1, :cond_40

    .line 385
    const-string v0, "MissionEngine"

    const-string v2, "Error: map_info is missing from this map"

    invoke-static {v0, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 390
    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 392
    const-string v0, "MissionEngine"

    const-string v2, "Map warning: "

    const-string v3, "type is missing from map_info"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17060
    const-string v0, "Map error: "

    const-string v2, "type is missing from map_info"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 396
    :cond_0
    if-eqz v0, :cond_2

    .line 398
    const-string v0, "MissionEngine"

    const-string v1, "Defaulting to skirmish"

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput-boolean v7, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    .line 401
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->f:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    .line 989
    :goto_2
    return-void

    .line 379
    :cond_1
    iget-object v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    const-string v1, "map_info"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/k335;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/b/a325;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 412
    :cond_2
    const-string v0, "survival"

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    .line 414
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->k:Z

    if-eqz v0, :cond_5

    .line 416
    const-string v0, "true"

    const-string v2, "survivalWavesClassic"

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    .line 418
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    if-eqz v0, :cond_3

    .line 420
    const-string v0, "Classic survial waves selected"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 17900
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17902
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    const-string v2, "scout"

    const v3, 0x3f333333    # 0.7f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Ljava/lang/String;F)V

    .line 17904
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->i:Lcom/corrodinggames/rts/game/units/cj459;

    const v3, 0x40066666    # 2.1f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17906
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    const-string v2, "mechGun"

    invoke-direct {p0, v0, v2, v5}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Ljava/lang/String;F)V

    .line 17907
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    const-string v2, "lightGunship"

    const v3, 0x40333333    # 2.8f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Ljava/lang/String;F)V

    .line 17909
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->j:Lcom/corrodinggames/rts/game/units/cj459;

    const v3, 0x3ff33333    # 1.9f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17910
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->l:Lcom/corrodinggames/rts/game/units/cj459;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17911
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->w:Lcom/corrodinggames/rts/game/units/cj459;

    invoke-direct {p0, v0, v2, v5}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17912
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->x:Lcom/corrodinggames/rts/game/units/cj459;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17913
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->n:Lcom/corrodinggames/rts/game/units/cj459;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17914
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    const-string v2, "plasmaTank"

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Ljava/lang/String;F)V

    .line 17915
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->S:Ljava/util/ArrayList;

    const-string v2, "missileAirship"

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Ljava/lang/String;F)V

    .line 17918
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17919
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->T:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->F:Lcom/corrodinggames/rts/game/units/cj459;

    invoke-direct {p0, v0, v2, v5}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 17920
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->T:Ljava/util/ArrayList;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cj459;->O:Lcom/corrodinggames/rts/game/units/cj459;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v2, v3}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/util/ArrayList;Lcom/corrodinggames/rts/game/units/el732;F)V

    .line 427
    iput-boolean v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->p:Z

    .line 429
    iget-object v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->aiDifficulty:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    .line 431
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    if-nez v0, :cond_4

    .line 433
    const/high16 v0, 0x44960000    # 1200.0f

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 435
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    if-gez v0, :cond_5

    .line 443
    :cond_4
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    .line 457
    :cond_5
    const-string v0, "survivalWaves"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_6

    .line 461
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d(Ljava/lang/String;)V

    .line 467
    :cond_6
    const-string v0, "startWithMusic"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_7

    .line 472
    iget-object v2, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bK:Lcom/corrodinggames/rts/gameFramework/ax817;

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/gameFramework/ax817;->a(Ljava/lang/String;)V

    .line 479
    :cond_7
    const-string v0, "skirmish"

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    .line 481
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    if-eqz v0, :cond_8

    .line 483
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->f:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    .line 486
    :cond_8
    const-string v0, "true"

    const-string v2, "shareFogWithAllies"

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->o:Z

    .line 490
    const-string v0, "winCondition"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    if-nez v0, :cond_9

    iget-boolean v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    if-nez v2, :cond_9

    .line 494
    new-instance v0, Lcom/corrodinggames/rts/game/b/h332;

    const-string v1, "win condition not set"

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_9
    if-eqz v0, :cond_a

    .line 499
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 501
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->a:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    .line 534
    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    if-eqz v0, :cond_b

    .line 536
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->f:I

    .line 540
    :cond_b
    const-string v0, "introText"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/b/a325;->c(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/custom/bu555;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 543
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    if-eqz v0, :cond_c

    .line 545
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    const-string v1, "\\\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Lcom/corrodinggames/rts/game/units/custom/bu555;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/bu555;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 549
    iput-object v4, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->h:Lcom/corrodinggames/rts/game/units/custom/bu555;

    .line 558
    :cond_c
    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->n:Z

    if-nez v0, :cond_d

    .line 560
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d:Lcom/corrodinggames/rts/game/p352;

    .line 562
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d:Lcom/corrodinggames/rts/game/p352;

    if-eqz v0, :cond_d

    .line 564
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->d:Lcom/corrodinggames/rts/game/p352;

    iput v6, v0, Lcom/corrodinggames/rts/game/p352;->s:I

    .line 570
    :cond_d
    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->ac()Z

    .line 576
    iget-object v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/k335;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/a325;

    .line 581
    const-string v1, "team_info"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 584
    const-string v1, "team"

    const-string v2, "-2"

    invoke-virtual {v0, v1, v2}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 586
    const/4 v1, -0x2

    if-ne v5, v1, :cond_16

    .line 588
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot find team for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_f
    const-string v2, "allUnitsAndBuildings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 505
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->b:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 507
    :cond_10
    const-string v2, "allBuildings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 509
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->c:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 511
    :cond_11
    const-string v2, "mainBuilings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 513
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->d:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 515
    :cond_12
    const-string v2, "mainBuildings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 517
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->d:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 519
    :cond_13
    const-string v2, "commandCenter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 521
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->e:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 523
    :cond_14
    const-string v2, "requiredObjectives"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 525
    sget v0, Lcom/corrodinggames/rts/gameFramework/n/v1306;->g:I

    iput v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->e:I

    goto/16 :goto_3

    .line 529
    :cond_15
    new-instance v1, Lcom/corrodinggames/rts/game/b/h332;

    const-string v2, "unknown win condition:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_16
    invoke-static {v5}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v2

    .line 593
    if-nez v2, :cond_17

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No team loaded for:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 602
    :cond_17
    const-string v1, "credits"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_18

    .line 607
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v10, v1

    iput-wide v10, v2, Lcom/corrodinggames/rts/game/p352;->p:D

    .line 610
    :cond_18
    const-string v1, "basicAI"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    if-eqz v1, :cond_19

    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->G()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 613
    instance-of v1, v2, Lcom/corrodinggames/rts/game/a/a296;

    if-eqz v1, :cond_19

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Using basic AI:"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " by map request"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    move-object v1, v2

    .line 616
    check-cast v1, Lcom/corrodinggames/rts/game/a/a296;

    .line 617
    iput-boolean v7, v1, Lcom/corrodinggames/rts/game/a/a296;->bb:Z

    .line 622
    :cond_19
    const-string v1, "lockAiDifficulty"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 623
    if-eqz v9, :cond_1a

    .line 625
    instance-of v1, v2, Lcom/corrodinggames/rts/game/a/a296;

    if-eqz v1, :cond_1a

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Locking lockAiDifficulty:"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " by map request to: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    move-object v1, v2

    .line 628
    check-cast v1, Lcom/corrodinggames/rts/game/a/a296;

    .line 630
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 633
    iput v9, v1, Lcom/corrodinggames/rts/game/a/a296;->y:I

    .line 634
    iput-boolean v7, v1, Lcom/corrodinggames/rts/game/a/a296;->z:Z

    .line 636
    iget-object v1, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->B()Z

    .line 640
    :cond_1a
    const-string v1, "disabledAI"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    if-eqz v1, :cond_1b

    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->G()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 643
    instance-of v1, v2, Lcom/corrodinggames/rts/game/a/a296;

    if-eqz v1, :cond_1b

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Disabling AI:"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " by map request"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    move-object v1, v2

    .line 646
    check-cast v1, Lcom/corrodinggames/rts/game/a/a296;

    .line 647
    iput-boolean v7, v1, Lcom/corrodinggames/rts/game/a/a296;->ba:Z

    .line 653
    :cond_1b
    const-string v1, "allyGroup"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    if-eqz v1, :cond_1c

    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->G()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 657
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 658
    iput v1, v2, Lcom/corrodinggames/rts/game/p352;->s:I

    .line 661
    :cond_1c
    const-string v1, "ai"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_1d

    .line 665
    const-string v5, "survival"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/corrodinggames/rts/game/p352;->X:Z

    .line 669
    :cond_1d
    const-string v1, "camera_start"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 671
    if-nez p1, :cond_1e

    .line 673
    iget v1, v0, Lcom/corrodinggames/rts/game/b/a325;->e:F

    iget v2, v0, Lcom/corrodinggames/rts/game/b/a325;->f:F

    invoke-virtual {v8, v1, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(FF)V

    .line 674
    iput-boolean v7, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->q:Z

    .line 676
    const-string v1, "zoomTo"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 677
    if-eqz v1, :cond_1e

    .line 679
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->cS:F

    .line 686
    :cond_1e
    const-string v1, "attack_point"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 688
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->D:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/PointF;

    iget v5, v0, Lcom/corrodinggames/rts/game/b/a325;->e:F

    iget v9, v0, Lcom/corrodinggames/rts/game/b/a325;->f:F

    invoke-direct {v2, v5, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_1f
    const-string v1, "rotate"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 694
    const-string v1, "dir"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 697
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 699
    instance-of v9, v1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v9, :cond_20

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v9

    if-nez v9, :cond_20

    .line 701
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 703
    iput v2, v1, Lcom/corrodinggames/rts/game/units/ce454;->ci:F

    goto :goto_5

    .line 710
    :cond_21
    const-string v1, "fall"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 714
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 716
    instance-of v5, v1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_22

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v5

    if-nez v5, :cond_22

    .line 718
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 720
    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/ce454;->cE()V

    goto :goto_6

    .line 736
    :cond_23
    const-string v1, "set_team"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 738
    const-string v1, "team"

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 741
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 743
    instance-of v9, v1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v9, :cond_24

    .line 745
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 18091
    invoke-static {v2}, Lcom/corrodinggames/rts/game/p352;->i(I)Lcom/corrodinggames/rts/game/p352;

    move-result-object v9

    .line 18092
    if-nez v9, :cond_25

    .line 18094
    new-instance v0, Lcom/corrodinggames/rts/game/b/h332;

    const-string v1, "Could not find team with id: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/corrodinggames/rts/game/b/h332;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18096
    :cond_25
    invoke-virtual {v1, v9}, Lcom/corrodinggames/rts/game/units/ce454;->e(Lcom/corrodinggames/rts/game/p352;)V

    goto :goto_7

    .line 755
    :cond_26
    const-string v1, "ai_allow_full_use"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 758
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 760
    instance-of v5, v1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_27

    .line 762
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 764
    check-cast v1, Lcom/corrodinggames/rts/game/units/bp437;

    iput-boolean v6, v1, Lcom/corrodinggames/rts/game/units/bp437;->bO:Z

    goto :goto_8

    .line 772
    :cond_28
    const-string v1, "disable_unit_ai"

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 775
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 777
    instance-of v5, v1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_29

    .line 779
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/b/a325;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 781
    iput-boolean v7, v1, Lcom/corrodinggames/rts/game/units/ce454;->bP:Z

    goto :goto_9

    .line 799
    :cond_2a
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2b
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/corrodinggames/rts/game/units/ce454;

    .line 801
    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v0

    if-nez v0, :cond_2b

    instance-of v0, v1, Lcom/corrodinggames/rts/game/units/cd453;

    if-nez v0, :cond_2b

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/ce454;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/ce454;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v0, :cond_2b

    .line 805
    const v0, 0x45992000    # 4900.0f

    .line 809
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v0

    move-object v3, v4

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 811
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bT()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 813
    if-eq v1, v0, :cond_3f

    iget-object v5, v1, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    sget-object v11, Lcom/corrodinggames/rts/game/p352;->i:Lcom/corrodinggames/rts/game/p352;

    if-eq v5, v11, :cond_2c

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v11, v1, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v11}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 816
    :cond_2c
    iget v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v11, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v12, v1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v13, v1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v5, v11, v12, v13}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v5

    .line 818
    cmpg-float v11, v5, v2

    if-gez v11, :cond_3f

    .line 820
    invoke-virtual {v0, v1, v7}, Lcom/corrodinggames/rts/game/units/ce454;->c(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v11

    if-eqz v11, :cond_3f

    move v2, v5

    :goto_c
    move-object v3, v0

    .line 833
    goto :goto_b

    .line 835
    :cond_2d
    if-eqz v3, :cond_2b

    .line 840
    invoke-virtual {v3, v1, v7}, Lcom/corrodinggames/rts/game/units/ce454;->d(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    goto :goto_a

    .line 849
    :cond_2e
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 850
    iget-object v0, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/k335;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/a325;

    .line 853
    const-string v2, "team_info"

    iget-object v3, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 854
    const-string v3, "point"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 855
    const-string v3, "camera_pan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    .line 856
    const-string v3, "camera_start"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    .line 857
    const-string v3, "map_info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    .line 858
    const-string v3, "attack_point"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 859
    const-string v3, "rotate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 860
    const-string v3, "fall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 861
    const-string v3, "set_team"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 862
    const-string v3, "ai_allow_full_use"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 863
    const-string v3, "disable_unit_ai"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    .line 864
    const-string v3, "info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 870
    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->n:Ljava/util/Properties;

    if-nez v2, :cond_30

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Skipping trigger:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/a325;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - no properties found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->a(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 876
    :cond_30
    invoke-static {p0, v0}, Lcom/corrodinggames/rts/gameFramework/n/c1287;->a(Lcom/corrodinggames/rts/gameFramework/n/p1300;Lcom/corrodinggames/rts/game/b/a325;)Lcom/corrodinggames/rts/gameFramework/n/a1285;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_2f

    .line 880
    iget-object v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 886
    :cond_31
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 888
    const-string v0, "activateIds"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    if-nez v0, :cond_3e

    .line 892
    const-string v0, "alsoActivate"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 894
    :goto_e
    if-eqz v2, :cond_36

    .line 897
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 898
    array-length v7, v5

    move v3, v6

    :goto_f
    if-ge v3, v7, :cond_36

    aget-object v0, v5, v3

    .line 901
    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/n/a1285;

    move-result-object v0

    .line 902
    if-nez v0, :cond_35

    .line 904
    const-string v0, "linkedTo target not found: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    .line 907
    const-string v0, "Possible IDs:"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_33
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 910
    iget-object v9, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b:Ljava/lang/String;

    if-eqz v9, :cond_33

    .line 912
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_10

    .line 915
    :cond_34
    const-string v0, "--------"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 898
    :goto_11
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    .line 921
    :cond_35
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->d:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a(Lcom/corrodinggames/rts/gameFramework/n/a1285;)V

    goto :goto_11

    .line 931
    :cond_36
    const-string v0, "whenActivatedIds"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    if-nez v0, :cond_37

    .line 934
    const-string v0, "activatedBy"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    :cond_37
    if-eqz v0, :cond_39

    .line 938
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 939
    array-length v3, v2

    move v0, v6

    :goto_12
    if-ge v0, v3, :cond_39

    aget-object v5, v2, v0

    .line 941
    invoke-direct {p0, v5}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/n/a1285;

    move-result-object v7

    .line 942
    if-nez v7, :cond_38

    .line 944
    const-string v7, "linkedFrom target not found: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    .line 939
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 948
    :cond_38
    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/n/a1285;->d:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    invoke-virtual {v5, v7}, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a(Lcom/corrodinggames/rts/gameFramework/n/a1285;)V

    goto :goto_13

    .line 954
    :cond_39
    const-string v0, "deactivatedBy"

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    if-eqz v0, :cond_32

    .line 958
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 959
    array-length v3, v2

    move v0, v6

    :goto_14
    if-ge v0, v3, :cond_32

    aget-object v5, v2, v0

    .line 961
    invoke-direct {p0, v5}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/n/a1285;

    move-result-object v7

    .line 962
    if-nez v7, :cond_3a

    .line 964
    const-string v7, "deactivatedBy: target not found: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    .line 959
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 968
    :cond_3a
    iget-object v5, v1, Lcom/corrodinggames/rts/gameFramework/n/a1285;->e:Lcom/corrodinggames/rts/gameFramework/n/b1286;

    invoke-virtual {v5, v7}, Lcom/corrodinggames/rts/gameFramework/n/b1286;->a(Lcom/corrodinggames/rts/gameFramework/n/a1285;)V

    goto :goto_15

    .line 977
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " map triggers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 980
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->t:Lcom/corrodinggames/rts/game/b/a325;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/b/a325;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v6

    :goto_16
    if-ge v1, v4, :cond_3c

    aget-object v5, v3, v1

    .line 982
    const-string v7, "Key was not used: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/gameFramework/n/a1285;->i(Ljava/lang/String;)V

    .line 980
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 986
    :cond_3d
    invoke-direct {p0}, Lcom/corrodinggames/rts/gameFramework/n/p1300;->b()V

    goto/16 :goto_2

    :cond_3e
    move-object v2, v0

    goto/16 :goto_e

    :cond_3f
    move-object v0, v3

    goto/16 :goto_c

    :cond_40
    move v0, v6

    goto/16 :goto_1
.end method
