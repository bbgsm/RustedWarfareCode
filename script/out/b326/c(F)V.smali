.method public final strictfp c(F)V
    .locals 5

    .line 5205
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 5207
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->X()Z

    move-result v1

    .line 5209
    if-eqz v1, :cond_0

    .line 5212
    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget-object v3, Lcom/corrodinggames/rts/game/b/b326;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2, v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/util/concurrent/locks/Lock;)V

    .line 5215
    :cond_0
    invoke-static {p1}, Lcom/corrodinggames/rts/game/b/b326;->e(F)V

    .line 5217
    if-eqz v1, :cond_1

    .line 5220
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget-object v1, Lcom/corrodinggames/rts/game/b/b326;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Ljava/util/concurrent/locks/Lock;)V

    .line 5225
    :cond_1
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/b/b326;->Y:Z

    if-eqz v0, :cond_2

    .line 5227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5230
    iget v1, p0, Lcom/corrodinggames/rts/game/b/b326;->Z:I

    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    mul-int/2addr v1, v2

    .line 5231
    iget v2, p0, Lcom/corrodinggames/rts/game/b/b326;->aa:I

    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    mul-int/2addr v2, v3

    .line 5232
    iget v3, p0, Lcom/corrodinggames/rts/game/b/b326;->n:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/corrodinggames/rts/game/b/b326;->o:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5233
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->cr:I

    neg-int v1, v1

    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v2

    iget v2, v2, Lcom/corrodinggames/rts/gameFramework/k1104;->cs:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5237
    :cond_2
    return-void
.end method
