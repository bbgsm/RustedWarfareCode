.method public final strictfp h()Ljava/lang/String;
    .locals 1

    .line 4742
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aU:Z

    if-eqz v0, :cond_0

    .line 4744
    const-string v0, "com.corrodinggames.rts.java"

    .line 4759
    :goto_0
    return-object v0

    .line 4746
    :cond_0
    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aV:Z

    if-eqz v0, :cond_1

    .line 4748
    const-string v0, "com.corrodinggames.rts.gdx"

    goto :goto_0

    .line 4750
    :cond_1
    sget-boolean v0, Lcom/corrodinggames/rts/game/i345;->aR:Z

    if-eqz v0, :cond_2

    .line 4752
    const-string v0, "com.corrodinggames.rts.server"

    goto :goto_0

    .line 4755
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 4757
    const-string v0, "<null context>"

    goto :goto_0

    .line 4759
    :cond_3
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->al:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
