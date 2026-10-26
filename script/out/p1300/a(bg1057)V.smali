.method public final a(Lcom/corrodinggames/rts/gameFramework/j/bg1057;)V
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->j:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 68
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 69
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->u:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 70
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->v:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 71
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->w:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 72
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->x:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 75
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->z:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 76
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->A:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 77
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->B:F

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(F)V

    .line 79
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->m:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 82
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 85
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 87
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 89
    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->b(Ljava/lang/String;)V

    .line 90
    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->j:Z

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 93
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->k:I

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 94
    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->l:I

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 97
    iget-boolean v2, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->m:Z

    invoke-virtual {p1, v2}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 100
    iget v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->n:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->y:I

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->c(I)V

    .line 109
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->l:Z

    invoke-virtual {p1, v0}, Lcom/corrodinggames/rts/gameFramework/j/bg1057;->a(Z)V

    .line 111
    return-void
.end method
