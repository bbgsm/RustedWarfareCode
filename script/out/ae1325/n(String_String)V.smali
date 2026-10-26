.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->c:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/utility/ae1325;->d:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method
