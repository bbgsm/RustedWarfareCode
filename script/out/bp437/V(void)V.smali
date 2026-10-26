.method public final strictfp V()V
    .locals 3

    .line 2138
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 2139
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v1, v2, :cond_0

    .line 2141
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->i:Lcom/corrodinggames/rts/gameFramework/f/ay975;

    invoke-virtual {v0, p0}, Lcom/corrodinggames/rts/gameFramework/f/ay975;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 2143
    :cond_0
    return-void
.end method
