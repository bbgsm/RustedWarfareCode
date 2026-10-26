.method private static e()Z
    .locals 15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2848
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 2850
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 31102
    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 2851
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v8

    move v3, v2

    move v5, v2

    :goto_0
    if-ge v5, v8, :cond_7

    .line 2853
    aget-object v9, v7, v5

    .line 2854
    iget-object v0, v9, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    sget-object v4, Lcom/corrodinggames/rts/game/p352;->i:Lcom/corrodinggames/rts/game/p352;

    if-ne v0, v4, :cond_6

    instance-of v0, v9, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lcom/corrodinggames/rts/game/units/ce454;->by()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2856
    invoke-virtual {v9}, Lcom/corrodinggames/rts/game/units/ce454;->n()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2859
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v10

    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_6

    .line 2861
    aget-object v11, v7, v4

    .line 2866
    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->ac()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2868
    iget-object v0, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v12, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v0, v12, :cond_2

    move v0, v1

    .line 2880
    :cond_0
    :goto_2
    iget-object v12, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eqz v12, :cond_1

    .line 2882
    iget-object v12, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget v12, v12, Lcom/corrodinggames/rts/game/p352;->l:I

    if-gez v12, :cond_1

    move v0, v2

    .line 2888
    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v12, v9, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eq v0, v12, :cond_5

    instance-of v0, v11, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_5

    .line 2890
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/ce454;->h()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/ce454;->by()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2892
    iget v0, v11, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v12, v11, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v13, v9, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v14, v9, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v0, v12, v13, v14}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    const v12, 0x46e1c800    # 28900.0f

    cmpg-float v0, v0, v12

    if-gez v0, :cond_5

    .line 2894
    iget-object v0, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v9, v0}, Lcom/corrodinggames/rts/game/units/ce454;->e(Lcom/corrodinggames/rts/game/p352;)V

    .line 2897
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, v9, Lcom/corrodinggames/rts/game/units/ce454;->cL:F

    move v0, v1

    .line 2851
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v3, v0

    move v5, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2868
    goto :goto_2

    .line 2872
    :cond_3
    iget-object v0, v11, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/p352;->x:Z

    if-nez v0, :cond_4

    move v0, v1

    .line 2874
    :goto_4
    invoke-virtual {v9}, Lcom/corrodinggames/rts/game/units/ce454;->cr()Z

    move-result v12

    if-eqz v12, :cond_0

    move v0, v1

    .line 2876
    goto :goto_2

    :cond_4
    move v0, v2

    .line 2872
    goto :goto_4

    .line 2859
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_6
    move v0, v3

    .line 2912
    goto :goto_3

    :cond_7
    return v3
.end method
