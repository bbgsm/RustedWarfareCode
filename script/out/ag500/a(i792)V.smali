.method private static a(Lcom/corrodinggames/rts/gameFramework/a/i792;)V
    .locals 6

    .line 352
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/a/i792;->g:Z

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/a/i792;->g:Z

    .line 356
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->e:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/ag500;->e:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iget-wide v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->F:J

    const-wide/16 v4, 0x0

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/corrodinggames/rts/gameFramework/i/b1019;->F:J

    .line 362
    :cond_0
    return-void
.end method
