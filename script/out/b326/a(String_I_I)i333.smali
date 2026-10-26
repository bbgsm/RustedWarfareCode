.method public final strictfp a(Ljava/lang/String;II)Lcom/corrodinggames/rts/game/b/i333;
    .locals 8

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1983
    const/4 v1, 0x0

    .line 38923
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/l336;

    .line 38925
    iget-object v5, v0, Lcom/corrodinggames/rts/game/b/l336;->a:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    move-object v1, v0

    .line 38929
    goto :goto_0

    .line 38931
    :cond_0
    if-nez v1, :cond_7

    .line 38936
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 38938
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/l336;

    .line 38939
    iget v1, v0, Lcom/corrodinggames/rts/game/b/l336;->l:I

    add-int/lit8 v1, v1, 0x64

    .line 39636
    iput v1, v0, Lcom/corrodinggames/rts/game/b/l336;->m:I

    move v0, v1

    .line 38944
    :goto_2
    new-instance v2, Lcom/corrodinggames/rts/game/b/l336;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, p0, p1, v0}, Lcom/corrodinggames/rts/game/b/l336;-><init>(Lcom/corrodinggames/rts/game/b/b326;Ljava/lang/String;I)V

    .line 38946
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38950
    :goto_3
    iget-object v0, v2, Lcom/corrodinggames/rts/game/b/l336;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_1

    .line 38952
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/b/l336;->c()V

    .line 1984
    :cond_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ai:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 1986
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ai:Ljava/util/HashMap;

    .line 39706
    :cond_2
    iget-object v0, v2, Lcom/corrodinggames/rts/game/b/l336;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    if-nez v0, :cond_3

    .line 39708
    const-string v0, "getIndexOffsetByPosition tilesetBitmap == null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v0, v3

    .line 39724
    :goto_4
    iget v1, v2, Lcom/corrodinggames/rts/game/b/l336;->l:I

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    add-int v7, v1, v0

    .line 1994
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/b326;->ai:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/b/i333;

    .line 1995
    if-eqz v0, :cond_5

    .line 2004
    :goto_5
    return-object v0

    .line 39713
    :cond_3
    iget v0, v2, Lcom/corrodinggames/rts/game/b/l336;->d:I

    if-nez v0, :cond_4

    .line 39715
    const-string v0, "getIndexOffsetByPosition tileWidth==0"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    move v0, v3

    .line 39716
    goto :goto_4

    .line 39720
    :cond_4
    iget-object v0, v2, Lcom/corrodinggames/rts/game/b/l336;->b:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/m/e1216;->h()I

    move-result v0

    iget v1, v2, Lcom/corrodinggames/rts/game/b/l336;->d:I

    div-int/2addr v0, v1

    goto :goto_4

    .line 2000
    :cond_5
    iget-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    iget v0, v2, Lcom/corrodinggames/rts/game/b/l336;->l:I

    sub-int v3, v7, v0

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/corrodinggames/rts/game/b/i333;->a(Lcom/corrodinggames/rts/game/b/b326;Lcom/corrodinggames/rts/game/b/g331;Lcom/corrodinggames/rts/game/b/l336;ISSZ)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v0

    .line 2002
    iget-object v1, p0, Lcom/corrodinggames/rts/game/b/b326;->ai:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    move-object v2, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method
