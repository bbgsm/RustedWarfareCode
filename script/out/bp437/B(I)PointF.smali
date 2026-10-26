.method public strictfp B(I)Landroid/graphics/PointF;
    .locals 9

    const/4 v3, 0x0

    .line 10637
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v4, v0, p1

    .line 10639
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 10640
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 10642
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->C(I)F

    move-result v2

    .line 10644
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_0

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_0

    .line 10646
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->D(I)F

    move-result v5

    .line 10647
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->E(I)F

    move-result v6

    .line 10650
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->b(I)F

    move-result v7

    iget v8, v4, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    sub-float/2addr v7, v8

    .line 10653
    cmpg-float v8, v7, v5

    if-gez v8, :cond_1

    .line 10655
    div-float v5, v7, v5

    mul-float/2addr v2, v5

    .line 10661
    :goto_0
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 10663
    iget v3, v4, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 10664
    iget v3, v4, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 10669
    :cond_0
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->bj:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 10670
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bj:Landroid/graphics/PointF;

    return-object v0

    .line 10657
    :cond_1
    add-float v8, v6, v5

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 10659
    sub-float v5, v7, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v2

    sub-float/2addr v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method
