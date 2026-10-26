.method public final strictfp k()Z
    .locals 2

    const/4 v0, 0x1

    .line 4855
    sget-boolean v1, Lcom/corrodinggames/rts/gameFramework/k1104;->aW:Z

    if-nez v1, :cond_2

    .line 4857
    invoke-static {}, Lcom/corrodinggames/rts/game/i345;->ao()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4866
    :cond_0
    :goto_0
    return v0

    .line 4861
    :cond_1
    sget-boolean v1, Lcom/corrodinggames/rts/game/i345;->aS:Z

    if-nez v1, :cond_0

    .line 4866
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
