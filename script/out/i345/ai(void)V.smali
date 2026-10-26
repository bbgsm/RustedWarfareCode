.method private strictfp ai()V
    .locals 4

    .line 1981
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->h()V

    .line 1983
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 1985
    iget-object v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v2, :cond_0

    .line 1988
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->ai()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->i_()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->by()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->s()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1990
    const-string v1, "selectAnyOnScreenBuilder: found builder"

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 1992
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/f/i988;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    .line 2000
    :goto_0
    return-void

    .line 1999
    :cond_1
    const-string v0, "selectAnyOnScreenBuilder: no builder found"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
