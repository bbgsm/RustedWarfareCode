.method public final strictfp e()V
    .locals 3

    const/4 v2, 0x0

    .line 5374
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/l336;

    .line 45661
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/l336;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    .line 45663
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/l336;->o:Lcom/corrodinggames/rts/game/b/b326;

    .line 45664
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/l336;->t:Ljava/util/HashMap;

    goto :goto_0

    .line 5378
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5381
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/g331;

    .line 46077
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/g331;->q:[S

    .line 46078
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/g331;->p:Ljava/util/Properties;

    .line 46079
    iput-object v2, v0, Lcom/corrodinggames/rts/game/b/g331;->i:Lcom/corrodinggames/rts/game/b/b326;

    goto :goto_1

    .line 5385
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5388
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5390
    iput-object v2, p0, Lcom/corrodinggames/rts/game/b/b326;->R:Lcom/corrodinggames/rts/game/b/k335;

    .line 5405
    sget-object v0, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/b/e329;->b()V

    .line 5408
    return-void
.end method
