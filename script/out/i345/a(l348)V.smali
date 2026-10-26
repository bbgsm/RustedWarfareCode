.method private strictfp a(Lcom/corrodinggames/rts/game/l348;)V
    .locals 5

    const/4 v4, 0x0

    .line 3573
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    if-eqz v0, :cond_0

    .line 3575
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Layer already enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3578
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 3579
    iget-object v0, p1, Lcom/corrodinggames/rts/game/l348;->b:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 3581
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->g()V

    .line 3585
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->k()I

    move-result v2

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->l()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Landroid/graphics/Rect;)V

    .line 3587
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p1, Lcom/corrodinggames/rts/game/l348;->f:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/corrodinggames/rts/game/l348;->e:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3589
    return-void
.end method
