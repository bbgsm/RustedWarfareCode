.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 1348
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1350
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1351
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1353
    new-instance v1, Lcom/corrodinggames/rts/appFramework/h192;

    invoke-direct {v1, p4}, Lcom/corrodinggames/rts/appFramework/h192;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1360
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 1362
    new-instance v1, Lcom/corrodinggames/rts/appFramework/i219;

    invoke-direct {v1, p6}, Lcom/corrodinggames/rts/appFramework/i219;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1370
    :cond_0
    const-string v1, "Cancel"

    new-instance v2, Lcom/corrodinggames/rts/appFramework/j245;

    invoke-direct {v2}, Lcom/corrodinggames/rts/appFramework/j245;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1378
    return-void
.end method
