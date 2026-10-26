.method private strictfp a(Lcom/corrodinggames/rts/gameFramework/k1104;FLcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V
    .locals 11

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5846
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v8

    .line 5851
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-eqz v0, :cond_0

    .line 5853
    invoke-direct {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/gameFramework/k1104;)V

    .line 5856
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_2

    .line 5858
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5860
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 5866
    :cond_2
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    if-eqz v0, :cond_7

    .line 5870
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dd()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v7

    .line 5874
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 5875
    if-nez v0, :cond_3

    .line 5877
    iput-boolean v1, p4, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 5880
    :cond_3
    sget-boolean v2, Lcom/corrodinggames/rts/game/units/bp437;->L:Z

    if-eqz v2, :cond_4

    .line 5882
    iput-boolean v1, p4, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 5885
    :cond_4
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ai:I

    if-lez v2, :cond_5

    .line 5887
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->df()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5890
    iget v2, p1, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ap:I

    .line 5896
    :cond_5
    if-eqz v0, :cond_6

    .line 5902
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v2, :cond_6

    iget-boolean v2, p4, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    if-eqz v2, :cond_6

    .line 5904
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v2

    .line 5906
    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/en734;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5908
    iput-boolean v1, p4, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 5914
    :cond_6
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_8

    iget-boolean v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    if-eqz v0, :cond_8

    .line 5919
    invoke-direct {p0, p2, v7, p4, p3}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/game/units/bx445;Lcom/corrodinggames/rts/game/units/bv443;Lcom/corrodinggames/rts/game/units/en734;)V

    .line 6099
    :cond_7
    :goto_0
    invoke-direct {p0, p2, p4, p3, v8}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/game/units/bv443;Lcom/corrodinggames/rts/game/units/en734;Z)V

    .line 6102
    return-void

    .line 5923
    :cond_8
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cn:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_9

    .line 5927
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    iput v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 5928
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    iput v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 5929
    iput-boolean v6, p4, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    goto :goto_0

    .line 5937
    :cond_9
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v0, :cond_1b

    .line 5939
    if-nez v7, :cond_1a

    .line 5942
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v2, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v0, :cond_19

    move v0, v6

    .line 5948
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_a

    move v0, v6

    .line 5954
    :cond_a
    :goto_2
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bU()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5956
    :cond_b
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->l()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 5959
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_c

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 5960
    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_d

    :cond_c
    move v0, v6

    .line 5967
    :cond_d
    if-eqz p3, :cond_10

    .line 5969
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_10

    iget-object v2, p3, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->e:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v2, v3, :cond_e

    iget-object v2, p3, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->i:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v2, v3, :cond_10

    .line 5977
    :cond_e
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_f

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 5978
    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_10

    :cond_f
    move v0, v6

    .line 5986
    :cond_10
    if-eqz p3, :cond_13

    .line 6004
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    int-to-float v2, v2

    .line 6006
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_11

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 6007
    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_13

    .line 6011
    :cond_11
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_12

    iput v10, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 6014
    :cond_12
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_13

    move v0, v6

    .line 6026
    :cond_13
    :goto_3
    if-eqz v0, :cond_14

    .line 6028
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 6032
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v0, :cond_15

    iget-short v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aj:S

    if-le v0, v6, :cond_15

    move v4, v6

    .line 6034
    :goto_4
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    iget-boolean v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->r:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFIZZ)V

    .line 6054
    :cond_14
    if-eqz v7, :cond_18

    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    if-nez v0, :cond_18

    .line 6056
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 6059
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ax:[Lcom/corrodinggames/rts/game/units/bx445;

    aget-object v0, v0, v6

    .line 6061
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, v7, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v4, v7, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v1

    .line 6062
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iget v0, v0, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    invoke-static {v2, v3, v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    .line 6064
    const/high16 v2, 0x42100000    # 36.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    .line 6066
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dh()V

    .line 6067
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dd()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v0

    .line 6079
    :goto_5
    if-eqz v0, :cond_17

    .line 6081
    iget v1, v0, Lcom/corrodinggames/rts/game/units/bx445;->a:F

    iput v1, p4, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 6082
    iget v0, v0, Lcom/corrodinggames/rts/game/units/bx445;->b:F

    iput v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 6083
    iput-boolean v6, p4, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    goto/16 :goto_0

    :cond_15
    move v4, v1

    .line 6032
    goto :goto_4

    .line 6069
    :cond_16
    const v1, 0x43b48000    # 361.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 6071
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dh()V

    .line 6072
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->dd()Lcom/corrodinggames/rts/game/units/bx445;

    move-result-object v0

    goto :goto_5

    .line 6087
    :cond_17
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    if-eqz v0, :cond_7

    .line 6089
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    iput v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 6090
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    iput v0, p4, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 6091
    iput-boolean v6, p4, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    goto/16 :goto_0

    :cond_18
    move-object v0, v7

    goto :goto_5

    :cond_19
    move v0, v1

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    goto/16 :goto_2

    :cond_1b
    move v0, v1

    goto/16 :goto_3
.end method
