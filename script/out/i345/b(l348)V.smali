.method private strictfp b(Lcom/corrodinggames/rts/game/l348;)V
    .locals 3

    .line 3593
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    if-nez v0, :cond_0

    .line 3595
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Layer not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->h()V

    .line 3600
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->n()V

    .line 3601
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 3602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/i345;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    .line 3605
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p1, Lcom/corrodinggames/rts/game/l348;->f:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/corrodinggames/rts/game/l348;->e:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3606
    return-void
.end method
