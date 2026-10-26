.method public strictfp H(I)V
    .locals 6

    const/4 v2, 0x0

    .line 10728
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 10730
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v1

    .line 10731
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 10733
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->H(I)V

    .line 10731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10738
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v0, p1

    .line 10740
    iput v2, v0, Lcom/corrodinggames/rts/game/units/ch457;->h:F

    .line 10741
    iput v2, v0, Lcom/corrodinggames/rts/game/units/ch457;->i:F

    .line 10743
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_1

    .line 10745
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->G(I)F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 10747
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->G(I)F

    move-result v2

    mul-float/2addr v1, v2

    .line 10749
    iget v2, v0, Lcom/corrodinggames/rts/game/units/ch457;->h:F

    neg-float v3, v1

    float-to-int v3, v3

    float-to-int v4, v1

    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Lcom/corrodinggames/rts/gameFramework/ah801;III)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/corrodinggames/rts/game/units/ch457;->h:F

    .line 10750
    iget v2, v0, Lcom/corrodinggames/rts/game/units/ch457;->i:F

    neg-float v3, v1

    float-to-int v3, v3

    float-to-int v1, v1

    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v3, v1, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(Lcom/corrodinggames/rts/gameFramework/ah801;III)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/corrodinggames/rts/game/units/ch457;->i:F

    .line 10753
    :cond_1
    return-void
.end method
