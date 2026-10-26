.method public final strictfp a(ZLcom/corrodinggames/rts/game/p352;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    .line 11065
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 11069
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    invoke-interface {v0}, Lcom/corrodinggames/rts/game/units/el732;->q()Lcom/corrodinggames/rts/game/units/custom/bx558;

    move-result-object v0

    .line 11070
    if-eqz v0, :cond_1

    .line 11072
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v0, p0, v2, v3}, Lcom/corrodinggames/rts/game/units/custom/bx558;->a(Lcom/corrodinggames/rts/game/units/bp437;FF)Ljava/lang/String;

    move-result-object v0

    .line 11073
    if-eqz v0, :cond_1

    .line 11134
    :cond_0
    :goto_0
    return-object v0

    .line 11081
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    invoke-interface {v0}, Lcom/corrodinggames/rts/game/units/el732;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11083
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v0, v2, v3}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 11084
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget-object v2, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v2, v2, Lcom/corrodinggames/rts/game/b/b326;->U:I

    iget-object v3, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v3, v3, Lcom/corrodinggames/rts/game/b/b326;->V:I

    invoke-virtual {v0, v2, v3}, Lcom/corrodinggames/rts/game/b/b326;->d(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v0

    .line 11085
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/b/i333;->i:Z

    if-nez v0, :cond_3

    .line 11088
    :cond_2
    const-string v0, "{2}"

    goto :goto_0

    .line 11092
    :cond_3
    if-nez p1, :cond_4

    .line 11094
    invoke-virtual {p0, v7, p2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/p352;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11097
    const-string v0, "{0}"

    goto :goto_0

    .line 11101
    :cond_4
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v0

    invoke-interface {v0}, Lcom/corrodinggames/rts/game/units/el732;->p()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11104
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bI()Landroid/graphics/Rect;

    move-result-object v8

    .line 11110
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->bm:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/b/b326;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 11111
    iget v9, v0, Landroid/graphics/Point;->x:I

    .line 11112
    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 11114
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v1

    .line 11115
    invoke-interface {v1}, Lcom/corrodinggames/rts/game/units/el732;->o()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v2

    .line 11117
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int v3, v9, v0

    :goto_1
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v9

    if-gt v3, v0, :cond_6

    .line 11119
    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int v4, v10, v0

    :goto_2
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v10

    if-gt v4, v0, :cond_5

    .line 11121
    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/corrodinggames/rts/game/units/d/f655;->a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/game/units/el732;Lcom/corrodinggames/rts/game/units/cg456;IIZLcom/corrodinggames/rts/game/p352;)Ljava/lang/String;

    move-result-object v0

    .line 11123
    if-nez v0, :cond_0

    .line 11119
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11117
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v7

    .line 11134
    goto :goto_0
.end method
