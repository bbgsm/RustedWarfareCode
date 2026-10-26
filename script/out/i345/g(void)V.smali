.method public final strictfp g()V
    .locals 6

    .line 2029
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/ah801;->dj()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v1

    .line 2035
    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 2037
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/ah801;->a()V

    goto :goto_0

    .line 2042
    :cond_0
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    .line 2043
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/ah801;->dj()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    .line 2045
    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->size()I

    move-result v0

    .line 2046
    if-eqz v0, :cond_1

    .line 2048
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SHOULD_NOT_HAPPEN: we still had "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " objects in gameObjectListForLogic after removeAll"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/ah801;

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Object: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/corrodinggames/rts/gameFramework/ah801;->ej:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2053
    instance-of v3, v0, Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v3, :cond_2

    .line 2055
    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->J()Ljava/lang/String;

    move-result-object v0

    .line 2057
    :goto_2
    const-string v1, "Remaining object: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2068
    :cond_1
    invoke-static {}, Lcom/corrodinggames/rts/game/units/ce454;->bn()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->clear()V

    .line 2069
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/ah801;->dj()Lcom/corrodinggames/rts/gameFramework/utility/r1353;

    move-result-object v0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/r1353;->clear()V

    .line 2072
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/j607;->cV()V

    .line 2075
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->V:Lcom/corrodinggames/rts/gameFramework/utility/v1357;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/v1357;->clear()V

    .line 2079
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
