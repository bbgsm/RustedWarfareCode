.method public final strictfp a(Lcom/corrodinggames/rts/game/units/el732;IZ)Lcom/corrodinggames/rts/game/units/a/s376;
    .locals 5

    const/4 v1, 0x0

    .line 7614
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->N()Ljava/util/ArrayList;

    move-result-object v0

    .line 7618
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7620
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/a/s376;

    .line 7623
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/a/s376;->y()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v3

    .line 7625
    if-eqz p3, :cond_4

    .line 7627
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/a/s376;->G()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v2

    .line 7628
    if-eqz v2, :cond_4

    .line 7634
    :goto_1
    if-ne v2, p1, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/a/s376;->u()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 7638
    :cond_0
    invoke-virtual {v0, p0}, Lcom/corrodinggames/rts/game/units/a/s376;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/corrodinggames/rts/game/units/a/s376;->a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7670
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    .line 7667
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 7670
    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method
