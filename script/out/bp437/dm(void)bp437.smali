.method private strictfp dm()Lcom/corrodinggames/rts/game/units/bp437;
    .locals 6

    .line 11299
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/ce454;

    .line 11301
    if-eq v0, p0, :cond_0

    .line 11303
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_0

    .line 11305
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 11307
    iget-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-nez v1, :cond_0

    .line 11309
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v1, v3, :cond_0

    .line 11311
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v1

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 52551
    iget v1, p0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v1, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v1

    .line 52552
    iget v3, p0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v3, v4

    .line 52554
    mul-float/2addr v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 52556
    const/4 v1, 0x1

    .line 11313
    :goto_0
    if-eqz v1, :cond_0

    .line 11324
    :goto_1
    return-object v0

    .line 52558
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 11324
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
