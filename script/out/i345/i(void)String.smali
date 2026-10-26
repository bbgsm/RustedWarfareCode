.method public final strictfp i()Ljava/lang/String;
    .locals 3

    .line 4764
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aU:Z

    if-eqz v0, :cond_0

    .line 4766
    const-string v0, "java"

    .line 4791
    :goto_0
    return-object v0

    .line 4768
    :cond_0
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aV:Z

    if-eqz v0, :cond_1

    .line 4770
    const-string v0, "java-gdx"

    goto :goto_0

    .line 4773
    :cond_1
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aR:Z

    if-eqz v0, :cond_2

    .line 4775
    const-string v0, "dedicatedServer"

    goto :goto_0

    .line 4778
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 4780
    const-string v0, "<null context>"

    goto :goto_0

    .line 4785
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4786
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 4789
    :catch_0
    move-exception v0

    .line 4791
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalArgumentException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
