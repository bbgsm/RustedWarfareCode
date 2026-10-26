.method private strictfp b(Z)Z
    .locals 2

    const/4 v0, 0x1

    .line 191
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bY:Lcom/corrodinggames/rts/gameFramework/bp890;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/bp890;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/gameFramework/f/i988;->u:Z

    if-eqz v1, :cond_2

    .line 234
    :cond_1
    :goto_0
    return v0

    .line 199
    :cond_2
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->bm:Z

    if-nez v1, :cond_1

    .line 204
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->bE:Z

    if-eqz v1, :cond_1

    .line 209
    :cond_3
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->bC:Z

    .line 219
    :cond_4
    if-eqz p1, :cond_5

    .line 221
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aY:Z

    if-eqz v1, :cond_1

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method
