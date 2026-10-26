.method private static a(Lcom/corrodinggames/rts/gameFramework/m/e1216;)V
    .locals 6

    .line 277
    if-eqz p0, :cond_0

    .line 279
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    instance-of v0, p0, Lcom/corrodinggames/rts/gameFramework/m/f1243;

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/m/e1216;->v:Z

    .line 291
    invoke-virtual {p0}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->l()I

    move-result v0

    .line 8189
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->e:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eqz v1, :cond_0

    .line 8191
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/ag500;->e:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iget-wide v2, v1, Lcom/corrodinggames/rts/gameFramework/i/b1019;->E:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/corrodinggames/rts/gameFramework/i/b1019;->E:J

    goto :goto_0
.end method
