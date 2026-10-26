.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1503
    invoke-super {p0, p1}, Lcom/corrodinggames/rts/appFramework/a3;->onCreate(Landroid/os/Bundle;)V

    .line 1505
    const-string v0, "Levels"

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1508
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/corrodinggames/rts/appFramework/d84;->b(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1515
    :cond_0
    sget v0, Lcom/corrodinggames/rts/R$layout;->level_select_grid:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->setContentView(I)V

    .line 1519
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/appFramework/d84;->a(Landroid/view/View;)V

    .line 1526
    sget v0, Lcom/corrodinggames/rts/R$id1367;->aiDifficulty:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiDifficulty:Landroid/widget/Spinner;

    .line 1530
    sget v0, Lcom/corrodinggames/rts/R$id1367;->aiCount:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiCountSpinner:Landroid/widget/Spinner;

    .line 1533
    sget v0, Lcom/corrodinggames/rts/R$id1367;->gameMode:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameModeSpinner:Landroid/widget/Spinner;

    .line 1536
    sget v0, Lcom/corrodinggames/rts/R$id1367;->modsImportMod:I

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->modsImportMod:Landroid/widget/Button;

    .line 1539
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->b(Landroid/app/Activity;)Lcom/corrodinggames/rts/appFramework/ab5;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 1543
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->modsImportMod:Landroid/widget/Button;

    new-instance v1, Lcom/corrodinggames/rts/appFramework/bx54;

    invoke-direct {v1, p0}, Lcom/corrodinggames/rts/appFramework/bx54;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
