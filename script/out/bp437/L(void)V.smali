.method private strictfp L()V
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bl()V

    .line 7958
    const/16 v0, -0x270f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->g:I

    .line 7960
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v0, :cond_0

    .line 7962
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 7968
    :cond_0
    return-void
.end method
