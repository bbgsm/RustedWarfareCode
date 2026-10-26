.method private strictfp e(Z)F
    .locals 6

    const/high16 v1, 0x433e0000    # 190.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    .line 7828
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->l()F

    move-result v0

    .line 7837
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v2

    .line 7838
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v3, v4, :cond_1

    .line 7840
    :cond_0
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v3, v4, :cond_3

    .line 7842
    add-float/2addr v0, v5

    .line 7852
    :goto_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    .line 7859
    :cond_1
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v2, Lcom/corrodinggames/rts/game/units/a384;->a:Lcom/corrodinggames/rts/game/units/a384;

    if-ne v1, v2, :cond_5

    .line 7861
    const/high16 v1, 0x437a0000    # 250.0f

    add-float/2addr v0, v1

    .line 7881
    :cond_2
    :goto_1
    return v0

    .line 7844
    :cond_3
    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v2, v3, :cond_4

    .line 7846
    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    goto :goto_0

    .line 7850
    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v0, v2

    goto :goto_0

    .line 7863
    :cond_5
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v2, Lcom/corrodinggames/rts/game/units/a384;->e:Lcom/corrodinggames/rts/game/units/a384;

    if-ne v1, v2, :cond_6

    .line 7865
    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    goto :goto_1

    .line 7867
    :cond_6
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->R:Lcom/corrodinggames/rts/game/units/a384;

    sget-object v2, Lcom/corrodinggames/rts/game/units/a384;->f:Lcom/corrodinggames/rts/game/units/a384;

    if-ne v1, v2, :cond_7

    .line 7869
    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    goto :goto_1

    .line 7873
    :cond_7
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ak()F

    move-result v1

    add-float/2addr v0, v1

    .line 7875
    if-eqz p1, :cond_2

    .line 7877
    add-float/2addr v0, v5

    goto :goto_1
.end method
