.method private static m()V
    .locals 9

    const/4 v2, 0x0

    .line 1992
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1994
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1997
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1999
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    if-eqz v1, :cond_0

    .line 2001
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->J:Lcom/corrodinggames/rts/gameFramework/i/b1019;

    iget-object v1, v1, Lcom/corrodinggames/rts/gameFramework/i/b1019;->P:Ljava/lang/String;

    .line 2002
    if-eqz v1, :cond_0

    .line 2004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16803
    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 2004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(mod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/l609;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): Getting setup while mod has error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 2008
    :cond_0
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->gg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/p613;

    .line 2010
    iput-boolean v2, v1, Lcom/corrodinggames/rts/game/units/custom/p613;->e:Z

    goto :goto_1

    .line 2013
    :cond_1
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->fL:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->clear()V

    goto :goto_0

    .line 2017
    :cond_2
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2021
    :try_start_0
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2023
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->Q:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2025
    array-length v5, v4
    :try_end_0
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 2027
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2032
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v7

    .line 2034
    if-nez v7, :cond_4

    .line 2036
    new-instance v1, Lcom/corrodinggames/rts/game/units/custom/ch575;

    const-string v4, "Could not find overrideAndReplace target:"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_1 .. :try_end_1} :catch_0

    .line 2048
    :catch_0
    move-exception v1

    .line 18803
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 2050
    invoke-static {v4, v1, v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/game/units/el732;)V

    goto :goto_2

    .line 2039
    :cond_4
    :try_start_2
    instance-of v6, v7, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v6, :cond_5

    .line 2041
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Replacing:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 17803
    iget-object v8, v0, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 2041
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2044
    :cond_5
    sget-object v6, Lcom/corrodinggames/rts/game/units/custom/l609;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_2 .. :try_end_2} :catch_0

    .line 2025
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2058
    :cond_6
    invoke-static {}, Lcom/corrodinggames/rts/game/units/cj459;->values()[Lcom/corrodinggames/rts/game/units/cj459;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_7

    aget-object v2, v1, v0

    .line 2060
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/el732;)V

    .line 2058
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2062
    :cond_7
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2064
    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Lcom/corrodinggames/rts/game/units/el732;)V

    goto :goto_5

    .line 2068
    :cond_8
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2070
    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/p613;

    .line 2072
    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/custom/p613;->e:Z

    if-nez v4, :cond_a

    .line 2074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/custom/p613;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed to find target:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/custom/p613;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2076
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/units/custom/l609;->n(Ljava/lang/String;)V

    .line 2078
    iget v4, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    if-lez v4, :cond_a

    .line 2080
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Converting warning to error (meta.strictLevel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->R:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/units/custom/l609;->m(Ljava/lang/String;)V

    goto :goto_6

    .line 2087
    :cond_b
    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2089
    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gp:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/u618;

    .line 2094
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/game/units/custom/u618;->a(Lcom/corrodinggames/rts/game/units/custom/l609;)V
    :try_end_3
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 2096
    :catch_1
    move-exception v0

    .line 19803
    iget-object v4, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 2098
    invoke-static {v4, v0, v1}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/game/units/el732;)V

    goto :goto_7

    .line 2105
    :cond_c
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 2107
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/custom/l609;->r()V

    goto :goto_8

    .line 2110
    :cond_d
    sget-object v0, Lcom/corrodinggames/rts/game/units/custom/l609;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/corrodinggames/rts/game/units/custom/q614;

    invoke-direct {v1}, Lcom/corrodinggames/rts/game/units/custom/q614;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2113
    return-void
.end method
