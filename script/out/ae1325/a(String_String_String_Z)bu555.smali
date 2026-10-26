.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/corrodinggames/rts/game/units/custom/bu555;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 830
    if-eqz p4, :cond_0

    .line 832
    invoke-direct {p0, p1, p2}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_0
    if-nez v0, :cond_1

    .line 841
    if-nez p3, :cond_2

    move-object v0, v1

    .line 914
    :goto_1
    return-object v0

    .line 836
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 853
    :cond_2
    invoke-static {p3}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/bu555;

    invoke-direct {v2}, Lcom/corrodinggames/rts/game/units/custom/bu555;-><init>()V

    .line 858
    if-eqz v0, :cond_3

    const-string v3, "i:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 860
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/corrodinggames/rts/game/units/custom/bu555;->e:Ljava/lang/String;

    .line 861
    iget-object v0, v2, Lcom/corrodinggames/rts/game/units/custom/bu555;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/corrodinggames/rts/game/units/custom/bu555;->e:Ljava/lang/String;

    .line 863
    iget-object v0, v2, Lcom/corrodinggames/rts/game/units/custom/bu555;->e:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/h/a1015;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    .line 865
    goto :goto_1

    .line 869
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 872
    new-instance v4, Lcom/corrodinggames/rts/game/units/custom/bv556;

    invoke-direct {v4}, Lcom/corrodinggames/rts/game/units/custom/bv556;-><init>()V

    .line 873
    iput-object v1, v4, Lcom/corrodinggames/rts/game/units/custom/bv556;->a:Ljava/lang/String;

    .line 874
    iput-object v0, v4, Lcom/corrodinggames/rts/game/units/custom/bv556;->b:Ljava/lang/String;

    .line 875
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {p0, p1, v1}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 892
    if-eqz p4, :cond_4

    .line 894
    invoke-direct {p0, p1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    :goto_3
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/bv556;

    invoke-direct {v6}, Lcom/corrodinggames/rts/game/units/custom/bv556;-><init>()V

    .line 904
    iput-object v5, v6, Lcom/corrodinggames/rts/game/units/custom/bv556;->a:Ljava/lang/String;

    .line 905
    iput-object v0, v6, Lcom/corrodinggames/rts/game/units/custom/bv556;->b:Ljava/lang/String;

    .line 906
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 898
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 909
    :cond_5
    new-array v0, v7, [Lcom/corrodinggames/rts/game/units/custom/bv556;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/corrodinggames/rts/game/units/custom/bv556;

    iput-object v0, v2, Lcom/corrodinggames/rts/game/units/custom/bu555;->b:[Lcom/corrodinggames/rts/game/units/custom/bv556;

    .line 912
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/bu555;->b()Ljava/lang/String;

    move-object v0, v2

    .line 914
    goto/16 :goto_1
.end method
