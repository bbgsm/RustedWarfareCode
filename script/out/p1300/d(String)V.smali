.method private d(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    .line 1484
    const-string v0, "Loading survival waves"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->N:Z

    .line 1488
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1493
    array-length v5, v4

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 1495
    add-int/lit8 v1, v2, 0x1

    .line 1497
    new-instance v2, Lcom/corrodinggames/rts/gameFramework/n/q1301;

    invoke-direct {v2, p0}, Lcom/corrodinggames/rts/gameFramework/n/q1301;-><init>(Lcom/corrodinggames/rts/gameFramework/n/p1300;)V

    .line 1499
    invoke-virtual {v2, v6}, Lcom/corrodinggames/rts/gameFramework/n/q1301;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1507
    iget v6, v2, Lcom/corrodinggames/rts/gameFramework/n/q1301;->d:F

    float-to-int v6, v6

    add-int/2addr v0, v6

    iput v0, v2, Lcom/corrodinggames/rts/gameFramework/n/q1301;->e:I

    .line 1509
    iget v0, v2, Lcom/corrodinggames/rts/gameFramework/n/q1301;->e:I

    .line 1512
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding wave "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/corrodinggames/rts/gameFramework/n/q1301;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1514
    iget-object v6, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    .line 1519
    :cond_1
    return-void
.end method
