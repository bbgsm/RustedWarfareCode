.method private strictfp dl()Z
    .locals 2

    .line 10447
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aM()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
