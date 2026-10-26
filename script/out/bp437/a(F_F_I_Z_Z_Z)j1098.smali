.method public final strictfp a(FFIZZZ)Lcom/corrodinggames/rts/gameFramework/k/j1098;
    .locals 9

    .line 9131
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 9132
    iget-object v7, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    .line 9133
    iget-object v8, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 9135
    invoke-virtual {v7, p5}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Z)Lcom/corrodinggames/rts/gameFramework/k/j1098;

    move-result-object v0

    .line 9136
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v8, v1, v2}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 9138
    const/4 v5, 0x0

    .line 9139
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v1, :cond_1

    .line 9141
    :cond_0
    const/4 v5, 0x1

    .line 9144
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v1

    iget v2, v8, Lcom/corrodinggames/rts/game/b/b326;->U:I

    int-to-short v2, v2

    iget v3, v8, Lcom/corrodinggames/rts/game/b/b326;->V:I

    int-to-short v3, v3

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->a(Lcom/corrodinggames/rts/game/units/cg456;SSLjava/lang/Float;Z)V

    .line 9145
    invoke-virtual {v8, p1, p2}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 9146
    iget v1, v8, Lcom/corrodinggames/rts/game/b/b326;->U:I

    int-to-short v1, v1

    iget v2, v8, Lcom/corrodinggames/rts/game/b/b326;->V:I

    int-to-short v2, v2

    int-to-short v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->a(SSS)V

    .line 9147
    iput-boolean p4, v0, Lcom/corrodinggames/rts/gameFramework/k/j1098;->p:Z

    .line 9148
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aR()I

    move-result v1

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/k/j1098;->q:I

    .line 9149
    iput-boolean p6, v0, Lcom/corrodinggames/rts/gameFramework/k/j1098;->r:Z

    .line 9154
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    .line 9155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    .line 9157
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9160
    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->aX:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 9161
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/gameFramework/k/j1098;

    .line 9164
    iget v4, v1, Lcom/corrodinggames/rts/gameFramework/k/j1098;->g:I

    add-int/lit8 v4, v4, 0x3c

    iget v5, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    if-ge v4, v5, :cond_3

    .line 9166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9170
    :cond_3
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->a(Lcom/corrodinggames/rts/gameFramework/k/j1098;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9192
    :goto_1
    return-object v1

    .line 9179
    :cond_4
    invoke-virtual {v7, v0, p5}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/gameFramework/k/j1098;Z)V

    .line 9181
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    .line 9184
    if-eqz p5, :cond_5

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9187
    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->aX:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v0

    .line 9192
    goto :goto_1
.end method
