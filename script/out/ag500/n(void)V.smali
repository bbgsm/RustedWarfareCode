.method private static n()V
    .locals 6

    .line 7000
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/ah501;->values()[Lcom/corrodinggames/rts/game/units/custom/ah501;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 7002
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/corrodinggames/rts/game/units/custom/ah501;->o:D

    .line 7000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7005
    :cond_0
    return-void
.end method
