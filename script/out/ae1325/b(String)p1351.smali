.method public final b(Ljava/lang/String;)Lcom/corrodinggames/rts/gameFramework/utility/p1351;
    .locals 4

    .line 1919
    new-instance v1, Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-direct {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;-><init>()V

    .line 1921
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1923
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1925
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1927
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1930
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1936
    :cond_1
    return-object v1
.end method
