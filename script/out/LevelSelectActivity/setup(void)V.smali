.method public setup()V
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 346
    iput-boolean v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->wasHidden:Z

    .line 348
    invoke-static {p0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Landroid/content/Context;)Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v4

    .line 354
    sget v0, Lcom/corrodinggames/rts/R$id1367;->levelButtonBack:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    new-instance v2, Lcom/corrodinggames/rts/appFramework/bo45;

    invoke-direct {v2, p0}, Lcom/corrodinggames/rts/appFramework/bo45;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 371
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 373
    :goto_0
    if-nez v2, :cond_1

    .line 375
    const-string v0, "LevelSelectActivity: mode==null, running this.finish()"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->finish()V

    .line 588
    :cond_0
    :goto_1
    return-void

    .line 380
    :cond_1
    invoke-static {v2}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->isCustomMapOrFolder(Ljava/lang/String;)Z

    move-result v5

    .line 383
    const-string v0, "maps/survival"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiDifficulty:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 393
    :goto_2
    if-eqz v5, :cond_5

    .line 395
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->modsImportMod:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    sget v0, Lcom/corrodinggames/rts/R$id1367;->messageInfo:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    const-string v6, "/maps"

    invoke-static {v6}, Lcom/corrodinggames/rts/appFramework/SettingsActivity;->getStorageInfoAndWarnings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    if-eqz v6, :cond_4

    .line 403
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_3
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiDifficulty:Landroid/widget/Spinner;

    iget-object v6, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget v6, v6, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->aiDifficulty:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 421
    const-string v0, "maps/skirmish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->skirmish:Z

    .line 423
    const-string v0, "/SD/rusted_warfare_maps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->custom:Z

    .line 426
    iget-boolean v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->skirmish:Z

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiCountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiCountSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 440
    :cond_2
    sget v0, Lcom/corrodinggames/rts/R$id1367;->levelHolder:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 452
    invoke-static {v2}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->isCustomMapOrFolder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 454
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->d(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 456
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->finish()V

    goto :goto_1

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiDifficulty:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_2

    .line 408
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->modsImportMod:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 461
    :cond_6
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/corrodinggames/rts/gameFramework/e/a926;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    .line 463
    iget-object v4, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bW:Lcom/corrodinggames/rts/gameFramework/i/a1018;

    iget-object v6, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcom/corrodinggames/rts/gameFramework/i/a1018;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    .line 466
    iget-boolean v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->custom:Z

    if-eqz v4, :cond_8

    .line 468
    iget-object v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_8

    .line 470
    :cond_7
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->c(Landroid/app/Activity;)Z

    .line 500
    :cond_8
    iget-object v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    if-nez v4, :cond_9

    .line 502
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    .line 506
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->currentMapPath:Ljava/lang/String;

    .line 508
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelViews:Ljava/util/ArrayList;

    .line 509
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelPaths:Ljava/util/ArrayList;

    .line 511
    iget-object v2, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levels:[Ljava/lang/String;

    array-length v4, v2

    :goto_4
    if-ge v1, v4, :cond_a

    aget-object v6, v2, v1

    .line 513
    iget-object v7, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v6, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 518
    :cond_a
    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->levelAdapter:Lcom/corrodinggames/rts/appFramework/cb59;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    new-instance v1, Lcom/corrodinggames/rts/appFramework/br48;

    invoke-direct {v1, p0}, Lcom/corrodinggames/rts/appFramework/br48;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 533
    if-eqz v5, :cond_b

    .line 537
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 576
    :cond_b
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 582
    :catch_0
    move-exception v0

    .line 584
    const-string v1, "dismissDialog failed"

    invoke-static {v1, v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    move-object v2, v3

    goto/16 :goto_0
.end method
