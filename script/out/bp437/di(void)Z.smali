.method private strictfp di()Z
    .locals 3

    .line 9621
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 9623
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->renderAntiAlias:Z

    .line 9626
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cL()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9628
    const/4 v0, 0x0

    .line 9631
    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->cU:F

    .line 9632
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 9638
    const/4 v0, 0x1

    .line 9645
    :cond_0
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cq:Z

    if-eqz v1, :cond_1

    .line 9647
    sget-boolean v0, Lcom/corrodinggames/rts/game/units/cj459;->ag:Z

    .line 9650
    :cond_1
    return v0
.end method
