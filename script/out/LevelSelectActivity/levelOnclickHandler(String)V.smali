.method levelOnclickHandler(Ljava/lang/String;)V
    .locals 4

    .line 594
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 597
    invoke-static {p1}, Lcom/corrodinggames/rts/gameFramework/k1104;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v1}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->convertLevelFileNameForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->currentMapPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->isAvailableInDemo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 605
    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aq:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 609
    new-instance v0, Lcom/corrodinggames/rts/appFramework/bs49;

    invoke-direct {v0, p0}, Lcom/corrodinggames/rts/appFramework/bs49;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    .line 618
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 620
    const-string v2, "Full version only"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 621
    const-string v2, "Sorry this level is not available in the demo version."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 622
    const-string v2, "Ok"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 682
    :goto_0
    return-void

    .line 630
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bD:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bE:Z

    if-eqz v0, :cond_2

    .line 632
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->startNewLevel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 641
    :cond_2
    new-instance v0, Lcom/corrodinggames/rts/appFramework/cd61;

    invoke-direct {v0, p0, p0, p1}, Lcom/corrodinggames/rts/appFramework/cd61;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 645
    new-instance v1, Lcom/corrodinggames/rts/appFramework/bt50;

    invoke-direct {v1, p0}, Lcom/corrodinggames/rts/appFramework/bt50;-><init>(Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;)V

    .line 659
    invoke-static {p0, v0, v1}, Lcom/corrodinggames/rts/appFramework/d84;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
