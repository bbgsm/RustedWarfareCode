.method public final strictfp au()V
    .locals 5

    .line 8401
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-ge v0, v1, :cond_5

    .line 8403
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v1, v1, v0

    .line 8404
    if-eqz v1, :cond_1

    .line 8406
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->c:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v2, v3, :cond_1

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v1, v2, :cond_1

    .line 52443
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    if-gt v1, v0, :cond_0

    .line 52445
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "completeWaypoint: waypointsCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waypointIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52447
    :cond_0
    if-nez v0, :cond_2

    .line 52449
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 8401
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52454
    :cond_2
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 52457
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    aget-object v2, v1, v0

    move v1, v0

    .line 52458
    :goto_2
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 52460
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v1

    .line 52458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52462
    :cond_3
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->Q:[Lcom/corrodinggames/rts/game/units/en734;

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    .line 52466
    :cond_4
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    goto :goto_1

    .line 8418
    :cond_5
    return-void
.end method
