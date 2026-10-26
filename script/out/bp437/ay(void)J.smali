.method public final strictfp ay()J
    .locals 6

    .line 9388
    const-wide/16 v2, 0x0

    .line 9389
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    if-ge v0, v1, :cond_1

    .line 9391
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v1, v1, v0

    .line 9392
    if-eqz v1, :cond_0

    .line 9394
    iget v4, v1, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    .line 9395
    add-long/2addr v2, v4

    iget v1, v1, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 9389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9398
    :cond_1
    return-wide v2
.end method
