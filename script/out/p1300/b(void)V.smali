.method private b()V
    .locals 5

    .line 997
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 1000
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->g:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    sget-object v2, Lcom/corrodinggames/rts/gameFramework/n/d1288;->a:Lcom/corrodinggames/rts/gameFramework/n/d1288;

    if-ne v1, v2, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;

    .line 1005
    iget-object v1, v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;->a:Lcom/corrodinggames/rts/gameFramework/n/a1285;

    if-ne v1, v0, :cond_3

    .line 1007
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 1009
    goto :goto_1

    .line 1011
    :cond_1
    if-nez v2, :cond_0

    .line 1013
    new-instance v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;

    invoke-direct {v1}, Lcom/corrodinggames/rts/gameFramework/n/w1307;-><init>()V

    .line 1014
    iput-object v0, v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;->a:Lcom/corrodinggames/rts/gameFramework/n/a1285;

    .line 1022
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Found objective: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19018
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;->a:Lcom/corrodinggames/rts/gameFramework/n/a1285;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->z:Lcom/corrodinggames/rts/game/units/custom/bu555;

    if-nez v0, :cond_2

    .line 19020
    const-string v0, "<null>"

    .line 1024
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 19023
    :cond_2
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/n/w1307;->a:Lcom/corrodinggames/rts/gameFramework/n/a1285;

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/n/a1285;->z:Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/bu555;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move v1, v2

    .line 1033
    goto :goto_2

    :cond_4
    return-void
.end method
