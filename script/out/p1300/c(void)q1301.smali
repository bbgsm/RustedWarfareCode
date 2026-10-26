.method private c()Lcom/corrodinggames/rts/gameFramework/n/q1301;
    .locals 2

    .line 1527
    iget v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->O:Ljava/util/ArrayList;

    iget v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/n/q1301;

    .line 1531
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
