.method public final strictfp j(F)V
    .locals 4

    .line 2326
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v1

    .line 2327
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2329
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v0

    .line 2331
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->w(I)F

    move-result v3

    add-float/2addr v3, p1

    iput v3, v2, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 2327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2333
    :cond_0
    return-void
.end method
