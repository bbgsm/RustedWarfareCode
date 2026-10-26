.method public final strictfp bg()V
    .locals 3

    const/4 v2, 0x0

    .line 11885
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v0, :cond_1

    .line 11905
    :cond_0
    :goto_0
    return-void

    .line 11895
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v0, p0}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/bp437;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deattach failed, forcing deattach. Child:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/bp437;->ce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 11898
    iput-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    .line 11901
    iput-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cR:Lcom/corrodinggames/rts/game/units/custom/b/n533;

    goto :goto_0
.end method
