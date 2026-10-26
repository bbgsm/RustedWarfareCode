.method public final strictfp a()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/f/i988;->u:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
