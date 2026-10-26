.method public final a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->a:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 75
    iget v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->b:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 76
    iget v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->c:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 79
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 81
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 83
    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->b(I)V

    .line 89
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->m:Lcom/corrodinggames/rts/game/a/u318;

    invoke-static {v0}, Lcom/corrodinggames/rts/game/a/a296;->a(Lcom/corrodinggames/rts/game/a/ab298;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 92
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->q:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 97
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->n:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 102
    iget v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->o:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 103
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->p:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 106
    iget v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->r:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 107
    iget v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->s:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 109
    invoke-super {p0, p1}, Lcom/corrodinggames/rts/game/a/u318;->a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V

    .line 110
    return-void
.end method
