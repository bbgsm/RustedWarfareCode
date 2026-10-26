.method private strictfp Q(I)V
    .locals 3

    const/16 v2, 0x1e

    .line 8219
    if-lt p1, v2, :cond_0

    .line 8221
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waypoint index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too large"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8228
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->P:[Lcom/corrodinggames/rts/game/units/en734;

    if-ne v0, v1, :cond_1

    .line 8230
    new-array v0, v2, [Lcom/corrodinggames/rts/game/units/en734;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    .line 8233
    :cond_1
    return-void
.end method
