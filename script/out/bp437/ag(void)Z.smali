.method public final strictfp ag()Z
    .locals 2

    .line 7599
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->N()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/a/s376;

    .line 7601
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/a/s376;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7603
    const/4 v0, 0x1

    .line 7606
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
