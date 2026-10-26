.method private static b()I
    .locals 1

    .line 625
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 626
    if-nez v0, :cond_0

    .line 628
    const-string v0, "getDefaultGameView: game==null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 629
    sget v0, Lcom/corrodinggames/rts/appFramework/l247;->d:I

    .line 638
    :goto_0
    return v0

    .line 632
    :cond_0
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->newRender:Z

    if-eqz v0, :cond_1

    .line 634
    sget v0, Lcom/corrodinggames/rts/appFramework/l247;->e:I

    goto :goto_0

    .line 638
    :cond_1
    sget v0, Lcom/corrodinggames/rts/appFramework/l247;->d:I

    goto :goto_0
.end method
