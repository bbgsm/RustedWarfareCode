.method public static a(Landroid/app/Activity;Ljava/lang/Runnable;Z)Z
    .locals 8

    const/4 v0, 0x0

    .line 919
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 921
    if-nez p2, :cond_0

    iget-object v2, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v2, v2, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->hasSelectedAStorageType:Z

    if-nez v2, :cond_1

    .line 924
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_2

    .line 1063
    :cond_1
    :goto_0
    return v0

    .line 929
    :cond_2
    new-instance v2, Lcom/corrodinggames/rts/appFramework/e111;

    invoke-direct {v2, v1, p1}, Lcom/corrodinggames/rts/appFramework/e111;-><init>(Lcom/corrodinggames/rts/gameFramework/k1104;Ljava/lang/Runnable;)V

    .line 952
    new-instance v3, Lcom/corrodinggames/rts/appFramework/f138;

    invoke-direct {v3, p0, v1, p1}, Lcom/corrodinggames/rts/appFramework/f138;-><init>(Landroid/app/Activity;Lcom/corrodinggames/rts/gameFramework/k1104;Ljava/lang/Runnable;)V

    .line 1042
    const-string v1, "menus.mods.androidStorageSetupTitle"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    const-string v4, "menus.mods.androidStorageSetupMessage"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1044
    const-string v5, "menus.mods.androidStorageSetupInternal"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1045
    const-string v6, "menus.mods.androidStorageSetupExternal"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1048
    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1049
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1051
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1052
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1057
    const-string v0, "Showing storage setup"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x1

    goto :goto_0
.end method
