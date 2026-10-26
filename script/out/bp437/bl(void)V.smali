.method public final strictfp bl()V
    .locals 2

    .line 12089
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dn()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    .line 12090
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bm()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v1

    .line 12093
    if-nez v0, :cond_2

    move-object v0, v1

    .line 12106
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->dL:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 12127
    :cond_1
    :goto_1
    return-void

    .line 12097
    :cond_2
    if-eqz v1, :cond_0

    .line 12103
    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;Lcom/corrodinggames/rts/game/units/custom/d/b579;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    goto :goto_0

    .line 12111
    :cond_3
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->dL:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 12113
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->dL:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->b(Lcom/corrodinggames/rts/game/units/custom/d/b579;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12120
    :cond_4
    invoke-static {p0}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 12122
    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->dL:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 12124
    invoke-static {p0}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    goto :goto_1
.end method
