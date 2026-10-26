.method public final strictfp at()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 8361
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 8362
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-lez v1, :cond_0

    .line 52437
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 8367
    :cond_0
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    .line 8368
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 8370
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    .line 8371
    const v1, -0x3b864000    # -999.0f

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->as:F

    .line 8372
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    .line 8374
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    .line 8376
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 8378
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aw()V

    .line 8380
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 8383
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->e:F

    .line 8384
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->d:F

    .line 8386
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 8388
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    .line 8390
    if-lez v0, :cond_1

    .line 8392
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->L()V

    .line 8395
    :cond_1
    return-void
.end method
