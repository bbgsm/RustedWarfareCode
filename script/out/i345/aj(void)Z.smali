.method private strictfp aj()Z
    .locals 3

    const/4 v0, 0x1

    .line 3398
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    if-nez v1, :cond_0

    .line 3400
    new-instance v1, Lcom/corrodinggames/rts/game/l348;

    const-string v2, "assets/shaders/post_base.frag"

    invoke-direct {v1, v2}, Lcom/corrodinggames/rts/game/l348;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    .line 3403
    :cond_0
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    if-nez v1, :cond_1

    .line 3405
    new-instance v1, Lcom/corrodinggames/rts/game/l348;

    const-string v2, "assets/shaders/post_displacement.frag"

    invoke-direct {v1, v2}, Lcom/corrodinggames/rts/game/l348;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    .line 3409
    :cond_1
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/l348;->a(Lcom/corrodinggames/rts/gameFramework/m/fi1252;)V

    .line 3410
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/l348;->a(Lcom/corrodinggames/rts/gameFramework/m/fi1252;)V

    .line 3413
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/l348;->g:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/l348;->g:Z

    if-eqz v1, :cond_4

    .line 3415
    :cond_2
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->L:Z

    if-nez v1, :cond_3

    .line 3417
    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->L:Z

    .line 3420
    const-string v0, "setupPostprocessing: failed"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->c(Ljava/lang/String;)V

    .line 3423
    :cond_3
    const/4 v0, 0x0

    .line 3425
    :cond_4
    return v0
.end method
