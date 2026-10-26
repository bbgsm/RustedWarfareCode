.method public static strictfp a(Lcom/corrodinggames/rts/game/b/i333;II)Lcom/corrodinggames/rts/game/b/i333;
    .locals 3

    .line 855
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/i333;->m:[Lcom/corrodinggames/rts/game/b/i333;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/corrodinggames/rts/game/b/i333;->m:[Lcom/corrodinggames/rts/game/b/i333;

    array-length v0, v0

    .line 860
    mul-int/lit8 v1, p1, 0xd

    mul-int/lit16 v2, p2, 0x521

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    rem-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 864
    if-ltz v0, :cond_0

    .line 866
    iget-object v1, p0, Lcom/corrodinggames/rts/game/b/i333;->m:[Lcom/corrodinggames/rts/game/b/i333;

    aget-object p0, v1, v0

    .line 873
    :cond_0
    return-object p0
.end method
