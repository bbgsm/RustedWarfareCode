.method private c(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 4

    .line 1081
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 1083
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    .line 1085
    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, v0, Lcom/corrodinggames/rts/game/b/k335;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/a325;

    .line 1089
    const-string v2, "point"

    iget-object v3, v0, Lcom/corrodinggames/rts/game/b/a325;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1091
    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/corrodinggames/rts/game/b/a325;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->K:Landroid/graphics/PointF;

    iget v2, v0, Lcom/corrodinggames/rts/game/b/a325;->e:F

    iget v0, v0, Lcom/corrodinggames/rts/game/b/a325;->f:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 1094
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->K:Landroid/graphics/PointF;

    .line 1100
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
