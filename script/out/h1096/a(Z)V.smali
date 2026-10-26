.method public final strictfp a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1024
    if-nez p1, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->m:Z

    if-eqz v0, :cond_1

    .line 1031
    iput v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    .line 1032
    iput-boolean v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->m:Z

    .line 1034
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 1036
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->j:[B

    if-eqz v0, :cond_1

    .line 1038
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 1041
    :cond_1
    iput v1, p0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->l:I

    goto :goto_0
.end method
