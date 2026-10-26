.method public strictfp a(F)V
    .locals 28

    .line 1019
    invoke-super/range {p0 .. p1}, Lcom/corrodinggames/rts/game/units/c449;->a(F)V

    .line 1021
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    if-eqz v4, :cond_0

    .line 1023
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    .line 1026
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cn:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 1028
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cn:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cn:F

    .line 1031
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bX:Z

    if-nez v4, :cond_b7

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 1034
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v19

    .line 1037
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1039
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    .line 1041
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aC:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1043
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aC:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aC:F

    .line 1046
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    if-eqz v4, :cond_5

    .line 49019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->br:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    .line 49021
    if-eqz v6, :cond_5

    .line 49026
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v4

    .line 49027
    iget v7, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    .line 49029
    invoke-virtual {v6}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a()[Ljava/lang/Object;

    move-result-object v8

    .line 49030
    iget v4, v6, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->a:I

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_5

    .line 49032
    aget-object v4, v8, v5

    check-cast v4, Lcom/corrodinggames/rts/game/units/g/a747;

    .line 49034
    iget v4, v4, Lcom/corrodinggames/rts/game/units/g/a747;->a:I

    if-gt v4, v7, :cond_4

    .line 49036
    invoke-virtual {v6, v5}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->remove(I)Ljava/lang/Object;

    .line 49030
    :cond_4
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    goto :goto_0

    .line 1051
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 1052
    move-object/from16 v0, p0

    iget v12, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v20

    .line 1055
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v4, v0, :cond_9

    .line 1057
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v5, v5, v4

    .line 1061
    iget v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->d:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 1063
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->x(I)F

    move-result v6

    .line 1065
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/corrodinggames/rts/game/units/bp437;->b(IF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v5, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_6

    .line 1069
    iget v7, v5, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v7, v6, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v7

    .line 1071
    invoke-static {v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1073
    const/high16 v6, 0x41a00000    # 20.0f

    iput v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->d:F

    .line 1075
    const/4 v6, 0x0

    iput v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    .line 1055
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1079
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFI)F

    goto :goto_2

    .line 1087
    :cond_8
    iget v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->d:F

    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v6

    iput v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->d:F

    goto :goto_2

    .line 49980
    :cond_9
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v21

    .line 49982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    .line 49984
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bT:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_b

    .line 49986
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bU:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bU:F

    .line 49988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bT:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    .line 49990
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bU:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 49992
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bT:Lcom/corrodinggames/rts/game/units/ce454;

    .line 49996
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_c

    .line 49998
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 50001
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_d

    .line 50003
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    move/from16 v0, p1

    invoke-static {v4, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    .line 50006
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v4

    .line 50008
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 50012
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50014
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50015
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->r:Z

    .line 50016
    const/16 v5, 0x96

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 50018
    if-eqz v4, :cond_d4

    .line 50020
    iget v5, v4, Lcom/corrodinggames/rts/game/units/en734;->l:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d4

    .line 50022
    iget v5, v4, Lcom/corrodinggames/rts/game/units/en734;->l:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d4

    .line 50024
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50025
    const/4 v4, 0x0

    move-object v11, v4

    .line 50030
    :goto_3
    sget-object v22, Lcom/corrodinggames/rts/game/units/bp437;->aR:Lcom/corrodinggames/rts/game/units/bv443;

    .line 50144
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->a:Z

    .line 50146
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->b:Z

    .line 50147
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->c:Z

    .line 50148
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->e:F

    .line 50149
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->f:F

    .line 50150
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 50033
    if-eqz v11, :cond_1d

    .line 50036
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    add-float v4, v4, p1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    .line 50038
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    .line 50040
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_e

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_e

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_2a

    .line 50152
    :cond_e
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v8

    .line 50153
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v9

    .line 50154
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v5, v8, v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v10

    .line 50156
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v14

    .line 50162
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aE()Z

    move-result v4

    if-nez v4, :cond_d3

    .line 50164
    const/4 v4, 0x0

    .line 50168
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cO()Lcom/corrodinggames/rts/game/units/custom/b/n533;

    move-result-object v5

    .line 50169
    if-eqz v5, :cond_f

    .line 50171
    iget-boolean v5, v5, Lcom/corrodinggames/rts/game/units/custom/b/n533;->H:Z

    if-eqz v5, :cond_f

    .line 50173
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bg()V

    .line 50174
    const/4 v4, 0x1

    .line 50178
    :cond_f
    if-nez v4, :cond_d3

    .line 50180
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50181
    const/4 v5, 0x0

    .line 50187
    :goto_4
    const/high16 v4, 0x40e00000    # 7.0f

    .line 50189
    const v6, 0x44d22000    # 1681.0f

    cmpg-float v6, v10, v6

    if-gez v6, :cond_10

    .line 50191
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    add-float v6, v6, p1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 50194
    :cond_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    const/high16 v15, 0x43700000    # 240.0f

    cmpl-float v6, v6, v15

    if-lez v6, :cond_11

    .line 50196
    const/high16 v4, 0x41800000    # 16.0f

    .line 50198
    :cond_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    const/high16 v15, 0x43aa0000    # 340.0f

    cmpl-float v6, v6, v15

    if-lez v6, :cond_12

    .line 50200
    const/high16 v4, 0x42100000    # 36.0f

    .line 50204
    :cond_12
    if-eqz v5, :cond_15

    .line 50207
    iget-object v6, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v15, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v6, v15, :cond_15

    .line 50209
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cU()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_24

    .line 50211
    const/high16 v4, 0x41a00000    # 20.0f

    .line 50212
    const/high16 v6, 0x41f00000    # 30.0f

    .line 50214
    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v15, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    if-eq v7, v15, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v15, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_14

    .line 50216
    :cond_13
    const/high16 v6, 0x428c0000    # 70.0f

    .line 50219
    :cond_14
    mul-float/2addr v6, v6

    cmpg-float v6, v10, v6

    if-gez v6, :cond_15

    .line 50221
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/en734;)Lcom/corrodinggames/rts/game/units/en734;

    .line 50223
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50224
    const/4 v5, 0x0

    .line 50243
    :cond_15
    :goto_5
    if-eqz v5, :cond_16

    .line 50246
    mul-float/2addr v4, v4

    cmpg-float v4, v10, v4

    if-gez v4, :cond_29

    .line 50248
    iget-object v4, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v6, :cond_26

    .line 50251
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cU()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    :cond_16
    move-object v4, v5

    .line 50307
    :goto_6
    if-eqz v4, :cond_1c

    .line 50309
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v5, v6, :cond_17

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v6, :cond_19

    .line 50312
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v5, :cond_18

    .line 50316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 50319
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/units/bv443;Z)V

    .line 50402
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_19

    .line 50404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget-object v5, v5, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_19

    .line 50406
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 50415
    :cond_19
    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_1c

    .line 50417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v4, :cond_1b

    .line 50419
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->o(F)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v4

    .line 50421
    if-eqz v4, :cond_1b

    .line 50423
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 50427
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1a

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 50430
    :cond_1a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50431
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 50432
    iget v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 50433
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 50435
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 50444
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ai()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 50447
    iget v4, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    rem-int/lit8 v4, v4, 0xa

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ej:J

    const-wide/16 v8, 0xa

    rem-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_1c

    .line 50449
    const/high16 v4, 0x43160000    # 150.0f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4, v5}, Lcom/corrodinggames/rts/game/units/d/ab644;->a(Lcom/corrodinggames/rts/game/units/bp437;FFZ)Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v4

    .line 50450
    if-eqz v4, :cond_1c

    .line 50452
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/corrodinggames/rts/game/units/en734;->m:Z

    .line 50453
    const/high16 v5, 0x43480000    # 200.0f

    iput v5, v4, Lcom/corrodinggames/rts/game/units/en734;->k:F

    .line 50458
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50460
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 50081
    :cond_1c
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v4

    if-eq v11, v4, :cond_1d

    .line 50083
    const/4 v11, 0x0

    .line 50088
    :cond_1d
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->a:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 50091
    if-eqz v11, :cond_20

    .line 50093
    iget-boolean v4, v11, Lcom/corrodinggames/rts/game/units/en734;->m:Z

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->O:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_20

    .line 50095
    const/4 v4, 0x1

    .line 50097
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cT()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v5

    .line 50098
    if-eqz v5, :cond_1f

    iget-object v6, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v7, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v6, v7, :cond_1e

    iget-object v5, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v6, :cond_1f

    .line 50103
    :cond_1e
    const/4 v4, 0x0

    .line 50106
    :cond_1f
    if-eqz v4, :cond_20

    .line 50108
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50109
    const/4 v11, 0x0

    .line 50116
    :cond_20
    if-nez v11, :cond_21

    .line 50118
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50121
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    if-eqz v4, :cond_ae

    .line 50124
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cO()Lcom/corrodinggames/rts/game/units/custom/b/n533;

    move-result-object v4

    .line 50125
    if-eqz v4, :cond_22

    .line 50127
    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/custom/b/n533;->H:Z

    if-eqz v4, :cond_22

    .line 50129
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bg()V

    .line 50138
    :cond_22
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/gameFramework/k1104;F)V

    .line 50140
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/gameFramework/k1104;FLcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V

    .line 1098
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v4, v0, :cond_af

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v5, v5, v4

    .line 1102
    iget v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_23

    .line 1104
    iget v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FF)F

    move-result v6

    iput v6, v5, Lcom/corrodinggames/rts/game/units/ch457;->e:F

    .line 1098
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 50229
    :cond_24
    const/high16 v4, 0x41f00000    # 30.0f

    .line 50232
    if-eqz v7, :cond_25

    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v7, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    if-eq v6, v7, :cond_25

    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    iget v7, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_15

    .line 50234
    :cond_25
    const/high16 v4, 0x42a00000    # 80.0f

    goto/16 :goto_5

    .line 50260
    :cond_26
    iget-object v4, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v6, :cond_28

    .line 50262
    const/4 v4, 0x0

    .line 50263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v6, v6, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v6, :cond_27

    .line 50265
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 50267
    const/4 v4, 0x1

    .line 50271
    :cond_27
    if-nez v4, :cond_16

    .line 50273
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50274
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 50281
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50282
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 50290
    :cond_29
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50291
    move-object/from16 v0, p0

    iput v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 50292
    move-object/from16 v0, p0

    iput v9, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 50293
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 50295
    iget-object v4, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->j:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v6, :cond_16

    .line 50297
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->r:Z

    .line 50299
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->av()V

    move-object v4, v5

    goto/16 :goto_6

    .line 50044
    :cond_2a
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->b:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_38

    .line 50470
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v5

    .line 50474
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aO()I

    move-result v4

    .line 50476
    sget v6, Lcom/corrodinggames/rts/game/units/b421;->d:I

    if-ne v4, v6, :cond_33

    .line 50484
    if-eqz v11, :cond_2d

    .line 50487
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_2b

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v4, :cond_2b

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v4, v6, :cond_2d

    .line 50489
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    if-nez v4, :cond_2d

    .line 50491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v4, :cond_2c

    .line 50493
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50496
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v4

    .line 50497
    const/high16 v6, 0x43480000    # 200.0f

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/gameFramework/k1104;FF)V

    .line 50498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_31

    .line 50500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50501
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->av()V

    .line 50502
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 50522
    :cond_2d
    :goto_a
    if-eqz v11, :cond_d2

    .line 50525
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_2e

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v4, :cond_2e

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v4, v5, :cond_d2

    .line 50528
    :cond_2e
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v4, :cond_32

    .line 50530
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50531
    const/4 v4, 0x0

    .line 50596
    :goto_b
    if-eqz v4, :cond_2f

    .line 50598
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_2f

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v5, :cond_2f

    .line 50600
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->bL()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 50602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v6, v6, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v6}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 50604
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/corrodinggames/rts/game/units/ci458;->b(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 50622
    :cond_2f
    if-eqz v4, :cond_30

    .line 50626
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aE()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->k()Z

    move-result v5

    if-nez v5, :cond_30

    .line 50628
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50629
    const/4 v4, 0x0

    .line 50634
    :cond_30
    if-eqz v4, :cond_1c

    .line 50636
    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/units/bv443;Z)V

    goto/16 :goto_7

    .line 50513
    :cond_31
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->au:Z

    .line 50515
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    goto :goto_a

    .line 50535
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->at:Z

    if-nez v4, :cond_d2

    .line 50543
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50544
    const/4 v4, 0x0

    goto :goto_b

    .line 50554
    :cond_33
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_34

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v4, :cond_34

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v4, v6, :cond_d2

    .line 50558
    :cond_34
    const/4 v4, 0x1

    .line 50560
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cU()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_35

    .line 50562
    const/4 v4, 0x0

    .line 50565
    :cond_35
    const/4 v6, 0x0

    iput-object v6, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50567
    if-eqz v4, :cond_37

    .line 50569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v4, :cond_36

    .line 50571
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50574
    :cond_36
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->e(Z)F

    move-result v4

    .line 50575
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/gameFramework/k1104;FF)V

    .line 50577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_37

    .line 50579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50580
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->av()V

    .line 50581
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    .line 50585
    :cond_37
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v4, :cond_d2

    .line 50587
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50588
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 50048
    :cond_38
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->c:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_5e

    .line 50641
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v8

    .line 50642
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v9

    .line 50643
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v5, v8, v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v10

    .line 50645
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v14

    .line 50649
    iget-object v5, v11, Lcom/corrodinggames/rts/game/units/en734;->b:Lcom/corrodinggames/rts/game/units/el732;

    .line 50666
    if-nez v5, :cond_d1

    .line 50668
    const-string v4, "activeBuildingType==null, removing waypoint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Ljava/lang/String;)V

    .line 50669
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 50670
    const/4 v4, 0x0

    move-object v7, v4

    .line 50673
    :goto_c
    if-eqz v7, :cond_1c

    .line 50679
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->g(Lcom/corrodinggames/rts/game/units/el732;)F

    move-result v15

    .line 50683
    const/4 v4, 0x0

    .line 50690
    const/high16 v5, 0x41c80000    # 25.0f

    cmpg-float v5, v15, v5

    if-gtz v5, :cond_39

    .line 50692
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_39

    .line 50694
    const/4 v4, 0x1

    .line 50699
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_3c

    .line 50701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v5

    .line 50703
    if-eqz v5, :cond_3a

    iget-object v6, v5, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v16, Lcom/corrodinggames/rts/game/units/eo735;->c:Lcom/corrodinggames/rts/game/units/eo735;

    move-object/from16 v0, v16

    if-eq v6, v0, :cond_3b

    .line 50705
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iput-boolean v6, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 50707
    :cond_3b
    if-eqz v5, :cond_3c

    .line 50709
    invoke-virtual {v7, v5}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/en734;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 50711
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 50717
    :cond_3c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->S:I

    const/16 v6, 0xc8

    invoke-static {v5, v6}, Lcom/corrodinggames/rts/gameFramework/utility/ab1322;->a(II)Z

    move-result v5

    if-nez v5, :cond_d0

    .line 50721
    const/4 v5, 0x1

    move v6, v5

    .line 50725
    :goto_d
    const v5, 0x49435000    # 800000.0f

    cmpl-float v5, v15, v5

    if-lez v5, :cond_41

    .line 50727
    const/4 v5, 0x1

    .line 50734
    :goto_e
    if-eqz v5, :cond_3d

    if-eqz v4, :cond_43

    .line 50737
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aE()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 50744
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 50745
    move-object/from16 v0, p0

    iput v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 50746
    move-object/from16 v0, p0

    iput v9, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 50751
    const/high16 v4, 0x42680000    # 58.0f

    cmpl-float v4, v15, v4

    if-lez v4, :cond_3e

    .line 50754
    const/high16 v4, 0x42240000    # 41.0f

    sub-float v4, v15, v4

    iget-object v5, v14, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v5, v5, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v5, v5

    const v6, 0x3fb4fdf4    # 1.414f

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 50757
    :cond_3e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 50760
    :cond_3f
    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    const/4 v5, 0x3

    if-le v4, v5, :cond_1c

    .line 52144
    :cond_40
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_7

    .line 50731
    :cond_41
    mul-float v5, v15, v15

    cmpg-float v5, v10, v5

    if-gtz v5, :cond_42

    const/4 v5, 0x1

    goto :goto_e

    :cond_42
    const/4 v5, 0x0

    goto :goto_e

    .line 50771
    :cond_43
    if-nez v6, :cond_1c

    .line 50778
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->u()Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/corrodinggames/rts/game/units/bp437;->b(FFF)F

    move-result v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1c

    .line 50789
    :cond_44
    iget-object v4, v7, Lcom/corrodinggames/rts/game/units/en734;->b:Lcom/corrodinggames/rts/game/units/el732;

    iget v6, v7, Lcom/corrodinggames/rts/game/units/en734;->d:I

    iget v8, v7, Lcom/corrodinggames/rts/game/units/en734;->e:F

    iget v9, v7, Lcom/corrodinggames/rts/game/units/en734;->f:F

    .line 50858
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v10

    .line 50879
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/el732;IZ)Lcom/corrodinggames/rts/game/units/a/s376;

    move-result-object v14

    .line 50883
    if-nez v14, :cond_47

    .line 50885
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unit \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v6

    invoke-interface {v6}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' can not build:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 50886
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    .line 50791
    :cond_45
    :goto_10
    const/4 v5, 0x0

    .line 50792
    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/br439;->a:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v6, :cond_59

    .line 50794
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/br439;->a:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50801
    :cond_46
    :goto_11
    if-eqz v5, :cond_5c

    .line 50803
    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/br439;->d:Lcom/corrodinggames/rts/game/units/a/s376;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/corrodinggames/rts/game/units/a/s376;->a(Lcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 50805
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 50808
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->w()F

    move-result v4

    const v6, 0x461c4000    # 10000.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5a

    .line 50810
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4}, Lcom/corrodinggames/rts/game/units/ce454;->p(F)V

    .line 50812
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 50827
    :goto_12
    const/16 v4, -0x270f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->S:I

    goto/16 :goto_7

    .line 50889
    :cond_47
    iget-boolean v5, v7, Lcom/corrodinggames/rts/game/units/en734;->n:Z

    if-nez v5, :cond_49

    .line 50892
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/corrodinggames/rts/game/units/a/s376;->g(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 50894
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Builder \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v5

    invoke-interface {v5}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' tried to build a locked building:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 50895
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    goto :goto_10

    .line 50898
    :cond_48
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/corrodinggames/rts/game/units/a/s376;->b(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 51124
    iget-object v5, v14, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/a/a358;->a()Z

    move-result v5

    .line 50900
    if-nez v5, :cond_49

    .line 50902
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Builder \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->q()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v5

    invoke-interface {v5}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' tried to build a unavailable building:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (add isLocked:false to fix)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Ljava/lang/String;)V

    .line 50903
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    goto/16 :goto_10

    .line 50910
    :cond_49
    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->k()Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->x()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 50912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/p352;->r()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v15}, Lcom/corrodinggames/rts/game/p352;->s()I

    move-result v15

    if-lt v5, v15, :cond_4b

    .line 50915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v5, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v4, v5, :cond_4a

    .line 50917
    iget-object v4, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v5, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/f/i988;->g:Lcom/corrodinggames/rts/gameFramework/f/a950;

    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/f/a950;->al:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/gameFramework/f/i988;->a(Ljava/lang/String;)V

    .line 50920
    :cond_4a
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    goto/16 :goto_10

    .line 50926
    :cond_4b
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/units/el732;)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v5

    .line 50927
    if-nez v5, :cond_4d

    .line 50929
    const-string v4, "{build is null}"

    .line 50930
    iget-object v5, v7, Lcom/corrodinggames/rts/game/units/en734;->b:Lcom/corrodinggames/rts/game/units/el732;

    if-eqz v5, :cond_4c

    .line 50932
    iget-object v4, v7, Lcom/corrodinggames/rts/game/units/en734;->b:Lcom/corrodinggames/rts/game/units/el732;

    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v4

    .line 50934
    :cond_4c
    const-string v5, "Build unit type missing: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 50935
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    goto/16 :goto_10

    .line 50939
    :cond_4d
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/d/f655;->h(Lcom/corrodinggames/rts/game/units/el732;)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v5

    .line 50944
    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->u()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v15

    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->b(Lcom/corrodinggames/rts/game/units/custom/d/b579;Lcom/corrodinggames/rts/game/units/custom/d/b579;)Z

    move-result v15

    if-eqz v15, :cond_4e

    .line 50945
    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v4

    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->P()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->b(Lcom/corrodinggames/rts/game/units/custom/d/b579;Lcom/corrodinggames/rts/game/units/custom/d/b579;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 50948
    :cond_4e
    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v4

    iput-object v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->bz:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 50949
    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->P()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v4

    iput-object v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->bA:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 50952
    :cond_4f
    instance-of v4, v14, Lcom/corrodinggames/rts/game/units/a/h365;

    if-eqz v4, :cond_50

    .line 50956
    const/4 v4, 0x0

    iput-object v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->bz:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 50957
    const/4 v4, 0x0

    iput-object v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->bA:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 50960
    :cond_50
    const/4 v4, 0x0

    iput v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    .line 50961
    const/4 v4, 0x0

    iput v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    .line 50963
    iget-object v4, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->cB()F

    move-result v15

    sub-float/2addr v8, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v8, v15

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->cC()F

    move-result v15

    sub-float/2addr v9, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v9, v15

    invoke-virtual {v4, v8, v9}, Lcom/corrodinggames/rts/game/b/b326;->b(FF)V

    .line 50967
    iget-object v4, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v4, v4, Lcom/corrodinggames/rts/game/b/b326;->U:I

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->cB()F

    move-result v8

    add-float/2addr v4, v8

    iput v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 50968
    iget-object v4, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v4, v4, Lcom/corrodinggames/rts/game/b/b326;->V:I

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->cC()F

    move-result v8

    add-float/2addr v4, v8

    iput v4, v5, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 50970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v4}, Lcom/corrodinggames/rts/game/units/ce454;->f(Lcom/corrodinggames/rts/game/p352;)V

    .line 50973
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/corrodinggames/rts/game/units/ce454;->s(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 50975
    const/4 v4, 0x1

    if-eq v6, v4, :cond_51

    instance-of v4, v5, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_51

    move-object v4, v5

    .line 50977
    check-cast v4, Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v4, v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(I)V

    .line 50981
    :cond_51
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->cs()V

    .line 50983
    instance-of v4, v5, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_55

    move-object v4, v5

    .line 50985
    check-cast v4, Lcom/corrodinggames/rts/game/units/bp437;

    .line 50988
    const/4 v6, 0x0

    .line 50992
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aj()Z

    move-result v8

    if-eqz v8, :cond_53

    move-object/from16 v6, p0

    .line 51001
    :cond_52
    :goto_13
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/p352;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 51003
    const/4 v6, 0x1

    .line 51006
    :goto_14
    if-nez v6, :cond_ce

    .line 51125
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/corrodinggames/rts/game/units/bp437;->a(ZLcom/corrodinggames/rts/game/p352;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_54

    const/4 v4, 0x1

    .line 51008
    :goto_15
    if-nez v4, :cond_ce

    .line 51010
    const/4 v4, 0x1

    .line 51014
    :goto_16
    if-eqz v4, :cond_55

    .line 51016
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->a()V

    .line 51018
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    .line 51020
    check-cast v5, Lcom/corrodinggames/rts/game/units/bp437;

    invoke-direct {v5}, Lcom/corrodinggames/rts/game/units/bp437;->dm()Lcom/corrodinggames/rts/game/units/bp437;

    move-result-object v5

    .line 51022
    iput-object v5, v4, Lcom/corrodinggames/rts/game/units/br439;->b:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51023
    iput-object v14, v4, Lcom/corrodinggames/rts/game/units/br439;->d:Lcom/corrodinggames/rts/game/units/a/s376;

    goto/16 :goto_10

    .line 50996
    :cond_53
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->bV:Z

    if-nez v8, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v8

    if-nez v8, :cond_52

    move-object/from16 v6, p0

    .line 50998
    goto :goto_13

    .line 51125
    :cond_54
    const/4 v4, 0x0

    goto :goto_15

    .line 51041
    :cond_55
    invoke-virtual {v14}, Lcom/corrodinggames/rts/game/units/a/s376;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v4

    .line 51043
    iget-boolean v6, v7, Lcom/corrodinggames/rts/game/units/en734;->n:Z

    if-eqz v6, :cond_56

    .line 51048
    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 51064
    :cond_56
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->c(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 51068
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->a()V

    .line 51069
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    .line 51072
    iget v6, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->S:I

    .line 51074
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    const/high16 v8, 0x447a0000    # 1000.0f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_45

    .line 51076
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/corrodinggames/rts/game/units/br439;->c:Z

    .line 51080
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget v8, v5, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v6, v8, v5}, Lcom/corrodinggames/rts/gameFramework/d/a917;->a(Lcom/corrodinggames/rts/game/p352;FF)Lcom/corrodinggames/rts/gameFramework/d/a917;

    move-result-object v5

    .line 51081
    if-eqz v5, :cond_45

    .line 51083
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/corrodinggames/rts/gameFramework/d/a917;->i:Z

    goto/16 :goto_10

    .line 51094
    :cond_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->h(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 51097
    instance-of v4, v5, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_58

    move-object v4, v5

    .line 51099
    check-cast v4, Lcom/corrodinggames/rts/game/units/bp437;

    .line 51101
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/bp437;->ba()V

    .line 51103
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 51105
    iget-object v6, v10, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    invoke-virtual {v6, v4}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    .line 51113
    :cond_58
    invoke-static {v5}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 51118
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bp:Lcom/corrodinggames/rts/game/units/br439;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/br439;->a()Lcom/corrodinggames/rts/game/units/br439;

    move-result-object v4

    .line 51120
    iput-object v5, v4, Lcom/corrodinggames/rts/game/units/br439;->a:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51121
    iput-object v14, v4, Lcom/corrodinggames/rts/game/units/br439;->d:Lcom/corrodinggames/rts/game/units/a/s376;

    goto/16 :goto_10

    .line 50796
    :cond_59
    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/br439;->b:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v6, :cond_46

    .line 50798
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/br439;->b:Lcom/corrodinggames/rts/game/units/ce454;

    goto/16 :goto_11

    .line 50816
    :cond_5a
    invoke-virtual {v7}, Lcom/corrodinggames/rts/game/units/en734;->b()V

    .line 50817
    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    iput-object v4, v7, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    .line 50818
    iput-object v5, v7, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 50819
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->ax()V

    goto/16 :goto_12

    .line 50824
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_12

    .line 50833
    :cond_5c
    iget-object v5, v7, Lcom/corrodinggames/rts/game/units/en734;->b:Lcom/corrodinggames/rts/game/units/el732;

    if-nez v5, :cond_5d

    .line 50835
    const-string v5, "active.build==null"

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 50842
    :cond_5d
    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/br439;->c:Z

    if-nez v4, :cond_1c

    .line 50844
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_7

    .line 50052
    :cond_5e
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_5f

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_96

    .line 51126
    :cond_5f
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v23

    .line 51129
    const/4 v5, 0x0

    .line 51131
    if-eqz v11, :cond_1c

    .line 51138
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v14

    .line 51139
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v15

    .line 51140
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v6, v14, v15}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v16

    .line 51143
    if-eqz v11, :cond_cd

    .line 51145
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v6, :cond_cd

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_cd

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->f()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_cd

    .line 51147
    const/4 v4, 0x1

    move/from16 v18, v4

    .line 51151
    :goto_17
    if-eqz v11, :cond_cc

    .line 51153
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_60

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v4, :cond_60

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_cc

    .line 51155
    :cond_60
    if-eqz v18, :cond_6e

    .line 51157
    const/4 v5, 0x1

    move-object/from16 v17, v11

    .line 51168
    :goto_18
    if-eqz v17, :cond_cb

    if-nez v5, :cond_cb

    .line 51172
    if-eqz v18, :cond_cb

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_cb

    .line 51174
    const/4 v4, 0x1

    .line 51177
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->g:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    add-int/lit8 v7, v7, -0x64

    if-ge v6, v7, :cond_61

    .line 51179
    const/4 v4, 0x0

    .line 51182
    :cond_61
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/corrodinggames/rts/game/units/bp437;->e(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 51184
    const/4 v4, 0x1

    .line 51187
    :goto_19
    if-nez v4, :cond_62

    .line 51189
    move-object/from16 v0, v23

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->g:I

    .line 51196
    :cond_62
    :goto_1a
    if-eqz v17, :cond_c9

    if-eqz v4, :cond_c9

    .line 51199
    const/4 v4, 0x0

    .line 51200
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_63

    .line 51202
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->cu()Lcom/corrodinggames/rts/game/units/custom/h605;

    move-result-object v4

    .line 51205
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cv()I

    move-result v7

    .line 51207
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v6, v6, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    int-to-float v7, v7

    .line 51911
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_6f

    .line 51913
    const/4 v4, 0x0

    .line 51208
    :goto_1b
    if-eqz v4, :cond_70

    .line 51210
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51213
    invoke-virtual/range {v17 .. v17}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v5

    .line 51214
    invoke-virtual/range {v17 .. v17}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v6

    .line 51215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v7, v5, v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v7

    .line 51217
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->av()V

    move v9, v5

    move v10, v6

    move/from16 v16, v7

    move-object/from16 v4, v17

    .line 51227
    :goto_1c
    if-eqz v4, :cond_64

    .line 51229
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v6, :cond_71

    .line 51231
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 51233
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51234
    const/4 v4, 0x0

    .line 51250
    :cond_64
    :goto_1d
    if-eqz v4, :cond_65

    .line 51252
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v6, :cond_65

    .line 51254
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_65

    .line 51256
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v6, v6, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_65

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_65

    .line 51259
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 51260
    const/4 v4, 0x0

    .line 51266
    :cond_65
    if-eqz v4, :cond_66

    .line 51269
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_66

    .line 51271
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51272
    const/4 v4, 0x0

    .line 51277
    :cond_66
    if-eqz v4, :cond_68

    .line 51280
    if-eqz v4, :cond_68

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v5, :cond_68

    .line 51282
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->f()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_68

    .line 51285
    const/4 v5, 0x0

    .line 51287
    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v7, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v6, v7, :cond_67

    .line 51289
    const/4 v5, 0x1

    .line 51302
    :cond_67
    if-eqz v5, :cond_68

    .line 51304
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51305
    const/4 v4, 0x0

    .line 51312
    :cond_68
    if-eqz v4, :cond_c8

    .line 51314
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v6, :cond_c8

    .line 51316
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v5, v5, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-eq v5, v6, :cond_c8

    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->f()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c8

    .line 51318
    const/4 v5, 0x1

    .line 51321
    invoke-virtual/range {v23 .. v23}, Lcom/corrodinggames/rts/gameFramework/k1104;->G()Z

    move-result v6

    if-eqz v6, :cond_69

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v7, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-object v7, v7, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v6, v7}, Lcom/corrodinggames/rts/game/p352;->c(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 51323
    const/4 v5, 0x0

    .line 51325
    :cond_69
    if-eqz v5, :cond_c8

    .line 51327
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51328
    const/4 v4, 0x0

    move-object v8, v4

    .line 51334
    :goto_1e
    if-eqz v8, :cond_1c

    .line 51340
    iget-object v4, v8, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_72

    .line 51342
    iget-object v4, v8, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->n(Lcom/corrodinggames/rts/game/units/ce454;)I

    move-result v5

    .line 51343
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bY()Z

    move-result v4

    .line 51351
    :goto_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v6, :cond_6c

    .line 51353
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v6, v6, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v7, v7, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v6, v7, v9, v10}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v6

    .line 51355
    add-int/lit8 v7, v5, 0x50

    .line 51356
    mul-int/2addr v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6a

    .line 51358
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iput-boolean v6, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 51361
    :cond_6a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v6}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v6

    .line 51362
    if-nez v6, :cond_6b

    .line 51364
    const/4 v7, 0x0

    move-object/from16 v0, v22

    iput-boolean v7, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 51366
    :cond_6b
    if-eqz v6, :cond_6c

    .line 51368
    invoke-virtual {v8, v6}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/en734;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 51370
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iput-boolean v6, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 51376
    :cond_6c
    int-to-float v6, v5

    .line 51378
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    if-eqz v7, :cond_c7

    .line 51380
    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    move v7, v6

    .line 51390
    :goto_20
    mul-float v6, v7, v7

    cmpl-float v6, v16, v6

    if-lez v6, :cond_79

    .line 51392
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aE()Z

    move-result v6

    if-eqz v6, :cond_6d

    iget v6, v8, Lcom/corrodinggames/rts/game/units/en734;->k:F

    const/4 v14, 0x0

    cmpl-float v6, v6, v14

    if-nez v6, :cond_73

    .line 51394
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_7

    .line 51161
    :cond_6e
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 51162
    const/16 v17, 0x0

    goto/16 :goto_18

    .line 51916
    :cond_6f
    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/corrodinggames/rts/game/units/bu442;->f:Z

    .line 51917
    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/corrodinggames/rts/game/units/bu442;->g:Z

    .line 51918
    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/corrodinggames/rts/game/units/bu442;->e:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51919
    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    mul-float v9, v7, v7

    iput v9, v8, Lcom/corrodinggames/rts/game/units/bu442;->d:F

    .line 51921
    sget-object v8, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    iput-object v4, v8, Lcom/corrodinggames/rts/game/units/bu442;->c:Lcom/corrodinggames/rts/game/units/custom/h605;

    .line 51923
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    iput v5, v4, Lcom/corrodinggames/rts/game/units/bu442;->a:F

    .line 51924
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    iput v6, v4, Lcom/corrodinggames/rts/game/units/bu442;->b:F

    .line 51927
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v4

    .line 51928
    iget-object v4, v4, Lcom/corrodinggames/rts/gameFramework/k1104;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    const/4 v9, 0x0

    sget-object v10, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    move-object/from16 v8, p0

    invoke-virtual/range {v4 .. v10}, Lcom/corrodinggames/rts/game/units/f/c738;->a(FFFLcom/corrodinggames/rts/game/units/bp437;FLcom/corrodinggames/rts/game/units/f/i744;)V

    .line 51931
    sget-object v4, Lcom/corrodinggames/rts/game/units/bp437;->bq:Lcom/corrodinggames/rts/game/units/bu442;

    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/bu442;->e:Lcom/corrodinggames/rts/game/units/ce454;

    goto/16 :goto_1b

    .line 51221
    :cond_70
    invoke-direct/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->cV()V

    .line 51222
    const/4 v4, 0x0

    move v9, v14

    move v10, v15

    goto/16 :goto_1c

    .line 51239
    :cond_71
    if-nez v18, :cond_64

    .line 51241
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->g(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 51243
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51244
    const/4 v4, 0x0

    goto/16 :goto_1d

    .line 51347
    :cond_72
    iget-object v4, v8, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->m(Lcom/corrodinggames/rts/game/units/ce454;)I

    move-result v5

    .line 51348
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bZ()Z

    move-result v4

    goto/16 :goto_1f

    .line 51398
    :cond_73
    const/4 v6, 0x0

    .line 51400
    iget v14, v8, Lcom/corrodinggames/rts/game/units/en734;->k:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_74

    .line 51402
    move/from16 v0, v16

    float-to-int v14, v0

    invoke-static {v14}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(I)I

    move-result v14

    int-to-float v14, v14

    .line 51403
    iget v8, v8, Lcom/corrodinggames/rts/game/units/en734;->k:F

    sub-float v7, v14, v7

    cmpg-float v7, v8, v7

    if-gez v7, :cond_74

    .line 51405
    const/4 v6, 0x1

    .line 51409
    :cond_74
    if-nez v6, :cond_40

    .line 51416
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 51417
    move-object/from16 v0, p0

    iput v9, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 51418
    move-object/from16 v0, p0

    iput v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 51425
    const/16 v6, 0x3a

    if-le v5, v6, :cond_78

    .line 51428
    int-to-float v6, v5

    const/high16 v7, 0x42240000    # 41.0f

    sub-float/2addr v6, v7

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    iget v7, v7, Lcom/corrodinggames/rts/game/b/b326;->n:I

    int-to-float v7, v7

    const v8, 0x3fb4fdf4    # 1.414f

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 51437
    :goto_21
    const/16 v6, 0x1e

    if-lt v5, v6, :cond_75

    if-eqz v4, :cond_77

    .line 51440
    :cond_75
    const v4, 0x44524000    # 841.0f

    cmpg-float v4, v16, v4

    if-gez v4, :cond_76

    .line 51442
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 51445
    :cond_76
    add-int/lit8 v4, v5, 0xe

    int-to-float v4, v4

    .line 51447
    mul-float/2addr v4, v4

    cmpg-float v4, v16, v4

    if-gez v4, :cond_77

    .line 51449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_77

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v4, :cond_77

    .line 51451
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 51457
    :cond_77
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 51459
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1c

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    goto/16 :goto_7

    .line 51432
    :cond_78
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    goto :goto_21

    .line 51470
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aG()I

    move-result v4

    .line 51471
    const/4 v5, -0x1

    if-ne v4, v5, :cond_c6

    .line 51473
    const/4 v4, 0x0

    move v7, v4

    .line 51477
    :goto_22
    const/4 v4, 0x0

    .line 51478
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->u()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 51480
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/corrodinggames/rts/game/units/bp437;->b(FFF)F

    move-result v4

    .line 51488
    :cond_7a
    invoke-static {v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_7b

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->u()Z

    move-result v4

    if-nez v4, :cond_c5

    .line 51491
    :cond_7b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->f:Z

    .line 51492
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->a:Z

    .line 51494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v4, v4, v7

    .line 51496
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_82

    .line 51498
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    add-float v5, v5, p1

    iput v5, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    const/4 v4, 0x0

    .line 51507
    :goto_23
    if-eqz v4, :cond_1c

    .line 51510
    iget-object v4, v8, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51513
    iget-object v5, v8, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v6, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v5, v6, :cond_89

    .line 51524
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_87

    .line 51526
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bl()V

    .line 51528
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->t(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v16

    .line 51530
    mul-float v5, v16, p1

    .line 51533
    const/4 v6, 0x0

    .line 51534
    const/4 v8, 0x0

    .line 51537
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/bp437;->a_(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v10

    .line 51539
    if-eqz v10, :cond_c4

    .line 51541
    iget v9, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    add-float/2addr v9, v5

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v14

    if-lez v9, :cond_7c

    .line 51543
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    sub-float/2addr v5, v6

    .line 51544
    const/4 v6, 0x1

    .line 51547
    :cond_7c
    iget v9, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    add-float/2addr v9, v5

    iget v14, v4, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    sub-float/2addr v9, v14

    float-to-double v0, v9

    move-wide/from16 v24, v0

    .line 51548
    const-wide/16 v14, 0x0

    .line 51550
    if-eqz v6, :cond_83

    .line 51552
    const/high16 v9, 0x3f800000    # 1.0f

    iget v14, v4, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    sub-float/2addr v9, v14

    float-to-double v14, v9

    .line 51568
    :cond_7d
    :goto_24
    const/4 v9, 0x0

    .line 51569
    const-wide/16 v24, 0x0

    cmpl-double v17, v14, v24

    if-lez v17, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/corrodinggames/rts/game/p352;->ap:Lcom/corrodinggames/rts/game/units/custom/e/c591;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/corrodinggames/rts/game/units/custom/e/c591;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;)Z

    move-result v17

    if-eqz v17, :cond_7e

    .line 51571
    const/4 v9, 0x1

    .line 51574
    :cond_7e
    if-nez v9, :cond_84

    const-wide/16 v24, 0x0

    cmpg-double v17, v14, v24

    if-lez v17, :cond_7f

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v14, v15}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->c(Lcom/corrodinggames/rts/game/units/ce454;D)Z

    move-result v17

    if-eqz v17, :cond_84

    .line 51576
    :cond_7f
    iget v9, v4, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    float-to-double v0, v9

    move-wide/from16 v24, v0

    add-double v14, v14, v24

    double-to-float v9, v14

    iput v9, v4, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    move v9, v5

    move v10, v6

    .line 51596
    :goto_25
    if-nez v8, :cond_86

    .line 51599
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v7}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;FI)V

    .line 51601
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    add-float/2addr v5, v9

    .line 51604
    if-eqz v10, :cond_80

    .line 51606
    const/high16 v5, 0x3f800000    # 1.0f

    .line 51610
    :cond_80
    invoke-virtual {v4, v5}, Lcom/corrodinggames/rts/game/units/ce454;->p(F)V

    .line 51612
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_81

    .line 51614
    move/from16 v0, v16

    float-to-double v6, v0

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpg-double v5, v6, v8

    if-gez v5, :cond_81

    .line 51616
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bp:Lcom/corrodinggames/rts/game/p352;

    if-ne v5, v6, :cond_81

    .line 51618
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    iget-object v5, v5, Lcom/corrodinggames/rts/gameFramework/f/i988;->i:Lcom/corrodinggames/rts/gameFramework/f/ay975;

    invoke-virtual {v5, v4}, Lcom/corrodinggames/rts/gameFramework/f/ay975;->a(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 51623
    :cond_81
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aQ:Z

    goto/16 :goto_7

    .line 51502
    :cond_82
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v5

    iput v5, v4, Lcom/corrodinggames/rts/game/units/ch457;->f:F

    .line 51503
    const/4 v4, 0x1

    goto/16 :goto_23

    .line 51558
    :cond_83
    const-wide v26, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v9, v24, v26

    if-ltz v9, :cond_7d

    .line 51560
    const-wide v14, 0x3f50624de0000000L    # 0.0010000000474974513

    div-double v14, v24, v14

    double-to-int v9, v14

    .line 51561
    int-to-double v14, v9

    const-wide v24, 0x3f50624de0000000L    # 0.0010000000474974513

    mul-double v14, v14, v24

    goto/16 :goto_24

    .line 51582
    :cond_84
    if-nez v9, :cond_85

    .line 51584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v5, v5, Lcom/corrodinggames/rts/game/p352;->ap:Lcom/corrodinggames/rts/game/units/custom/e/c591;

    move-object/from16 v0, p0

    invoke-virtual {v5, v10, v0, v14, v15}, Lcom/corrodinggames/rts/game/units/custom/e/c591;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;Lcom/corrodinggames/rts/game/units/ce454;D)V

    .line 51587
    :cond_85
    const/4 v6, 0x0

    .line 51588
    const/4 v5, 0x1

    const/4 v10, 0x0

    move v8, v5

    move v9, v6

    goto :goto_25

    .line 51630
    :cond_86
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aQ:Z

    goto/16 :goto_7

    .line 51640
    :cond_87
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v7}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;FI)V

    .line 51643
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->x()F

    move-result v6

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    iput v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    .line 51644
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_88

    .line 51646
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    iput v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    .line 51647
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51650
    :cond_88
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aQ:Z

    goto/16 :goto_7

    .line 51663
    :cond_89
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v7}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;FI)V

    .line 51666
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aQ:Z

    .line 51669
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->bl()V

    .line 51672
    const/4 v7, 0x0

    .line 51676
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/bp437;->o(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v9

    .line 51678
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->p(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v6

    .line 51681
    iget-object v5, v8, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/ce454;->f()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-lez v5, :cond_8c

    const/4 v5, 0x1

    .line 51683
    :goto_26
    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/bp437;->a_(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v8

    .line 51692
    if-nez v5, :cond_c3

    .line 51696
    move-object/from16 v0, p0

    iget v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->X:F

    const/high16 v14, 0x42c80000    # 100.0f

    cmpg-float v10, v10, v14

    if-gez v10, :cond_c3

    if-nez v5, :cond_c3

    .line 51698
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v14, v16

    if-gez v5, :cond_8d

    .line 51700
    if-nez v8, :cond_c3

    .line 51702
    const/4 v5, 0x1

    .line 51712
    :goto_27
    if-nez v5, :cond_d5

    .line 51714
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v10

    if-gez v5, :cond_8f

    .line 51717
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->Y()F

    move-result v5

    mul-float v5, v5, p1

    .line 51720
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_8e

    .line 51723
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    .line 51724
    const/4 v6, 0x0

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    .line 51732
    :goto_28
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cp:F

    .line 51735
    if-eqz v8, :cond_8a

    .line 51737
    float-to-double v6, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v6, v7, v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    .line 51741
    :cond_8a
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c2

    .line 51743
    const/4 v5, 0x1

    .line 51831
    :goto_29
    if-eqz v5, :cond_1c

    .line 51833
    iget-boolean v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v5, :cond_1c

    .line 51835
    if-nez v9, :cond_8b

    .line 51839
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->cq()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v5

    .line 51843
    if-eqz v5, :cond_94

    .line 51845
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refund: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(ZIZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 51847
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    .line 51878
    :cond_8b
    :goto_2a
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    .line 51879
    move-object/from16 v0, v23

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    int-to-long v6, v5

    iput-wide v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->bY:J

    .line 51882
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->bN()V

    .line 51884
    instance-of v5, v4, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_1c

    .line 51886
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 51889
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    check-cast v4, Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v5, v4}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/bp437;)V

    goto/16 :goto_7

    .line 51681
    :cond_8c
    const/4 v5, 0x0

    goto/16 :goto_26

    .line 51705
    :cond_8d
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    iget v10, v4, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    div-float/2addr v5, v10

    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v14, v16

    if-gez v5, :cond_c3

    .line 51707
    const/4 v5, 0x1

    goto/16 :goto_27

    .line 51728
    :cond_8e
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    goto :goto_28

    .line 51748
    :cond_8f
    mul-float v5, v6, p1

    .line 51750
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_92

    .line 51753
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    .line 51754
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    .line 51761
    :goto_2b
    const/high16 v6, 0x447a0000    # 1000.0f

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->dr:F

    .line 51763
    if-eqz v9, :cond_91

    .line 51766
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    div-float v10, v5, v6

    .line 51768
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->cp()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v6

    .line 51771
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->cq()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v5

    .line 51772
    if-eqz v5, :cond_c1

    .line 51782
    :goto_2c
    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a()I

    move-result v6

    if-lez v6, :cond_93

    .line 51784
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    add-float/2addr v6, v14

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    .line 51785
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v14

    if-lez v6, :cond_90

    .line 51787
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-wide v14, v6, Lcom/corrodinggames/rts/game/p352;->p:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    iput-wide v14, v6, Lcom/corrodinggames/rts/game/p352;->p:D

    .line 51788
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    float-to-int v14, v14

    int-to-float v14, v14

    sub-float/2addr v6, v14

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ad:F

    .line 51791
    :cond_90
    float-to-double v14, v10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v14, v15, v6}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    .line 51823
    :cond_91
    :goto_2d
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_d5

    .line 51825
    const/4 v5, 0x1

    goto/16 :goto_29

    .line 51758
    :cond_92
    iget v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    goto :goto_2b

    .line 51797
    :cond_93
    float-to-double v14, v10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v14, v15, v6}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    goto :goto_2d

    .line 51851
    :cond_94
    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->cp()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v5

    .line 51855
    iget-object v6, v4, Lcom/corrodinggames/rts/game/units/ce454;->bz:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    if-eqz v6, :cond_95

    .line 51857
    iget-object v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->bz:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 51859
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refund==null overridePriceBuildCost: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v9, v10}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(ZIZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 51863
    :cond_95
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7, v9}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    .line 51865
    iget v5, v4, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_8b

    .line 51867
    if-eqz v8, :cond_8b

    .line 51869
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v6, v7, v5}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/ce454;DZ)V

    goto/16 :goto_2a

    .line 50056
    :cond_96
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->e:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_a2

    .line 51932
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v7

    .line 51933
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v8

    .line 51934
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v5, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v9

    .line 51938
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_97

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v4, :cond_c0

    .line 51940
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51941
    const/4 v4, 0x0

    move-object v6, v4

    .line 51944
    :goto_2e
    if-eqz v6, :cond_98

    .line 51946
    iget-object v4, v6, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/corrodinggames/rts/game/units/ce454;->c(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v4

    if-nez v4, :cond_98

    .line 51948
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 51952
    :cond_98
    if-eqz v6, :cond_1c

    .line 51954
    iget-object v10, v6, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51956
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    .line 51958
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 51960
    invoke-virtual {v10}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v14

    if-eqz v14, :cond_a1

    .line 51966
    const v5, 0x44704000    # 961.0f

    cmpg-float v5, v9, v5

    if-gez v5, :cond_99

    .line 51968
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    add-float v5, v5, p1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    .line 51970
    :cond_99
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aa:F

    const/high16 v14, 0x43700000    # 240.0f

    cmpl-float v5, v5, v14

    if-lez v5, :cond_9a

    .line 51972
    const/4 v4, 0x1

    .line 51975
    :cond_9a
    const/high16 v5, 0x41a80000    # 21.0f

    .line 51977
    invoke-virtual {v10}, Lcom/corrodinggames/rts/game/units/ce454;->bH()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 51979
    const/high16 v5, 0x41300000    # 11.0f

    .line 51982
    :cond_9b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/corrodinggames/rts/game/units/bp437;->b:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9c

    .line 51984
    iget v5, v10, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    const/high16 v10, 0x41f80000    # 31.0f

    add-float/2addr v5, v10

    .line 51987
    :cond_9c
    mul-float/2addr v5, v5

    cmpg-float v5, v9, v5

    if-gez v5, :cond_9d

    .line 51989
    const/4 v4, 0x1

    .line 52006
    :cond_9d
    :goto_2f
    if-nez v4, :cond_a0

    .line 52011
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 52012
    move-object/from16 v0, p0

    iput v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 52013
    move-object/from16 v0, p0

    iput v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 52019
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9e

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 52021
    :cond_9e
    const/16 v5, 0x12

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 52024
    const v5, 0x473d1000    # 48400.0f

    cmpg-float v5, v9, v5

    if-gez v5, :cond_9f

    .line 52026
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 52029
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v5, :cond_9f

    .line 52031
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 52035
    :cond_9f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v5, :cond_a0

    .line 52037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v5}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v5

    if-nez v5, :cond_a0

    .line 52039
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 52046
    :cond_a0
    if-eqz v4, :cond_1c

    .line 52048
    iget-object v4, v6, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52049
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/corrodinggames/rts/game/units/ce454;->d(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    .line 52050
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_7

    .line 51999
    :cond_a1
    const v4, 0x43dc8000    # 441.0f

    cmpg-float v4, v9, v4

    if-gez v4, :cond_d6

    .line 52001
    const/4 v4, 0x1

    goto :goto_2f

    .line 50060
    :cond_a2
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->i:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_a8

    .line 52056
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v5

    .line 52057
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v6

    .line 52058
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v4, v7, v5, v6}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v7

    .line 52061
    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v4, :cond_a3

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v4, v4, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v4, :cond_a3

    iget-object v4, v11, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/ce454;->by()Z

    move-result v4

    if-nez v4, :cond_bf

    .line 52063
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 52064
    const/4 v4, 0x0

    .line 52067
    :goto_30
    if-eqz v4, :cond_a4

    .line 52071
    iget-object v8, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/corrodinggames/rts/game/units/bp437;->c(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 52073
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 52077
    :cond_a4
    if-eqz v4, :cond_1c

    .line 52079
    iget-object v8, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52083
    const v8, 0x43dc8000    # 441.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_a7

    .line 52088
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 52089
    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 52090
    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 52096
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a5

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 52098
    :cond_a5
    const/16 v4, 0x12

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 52101
    const v4, 0x478e6200    # 72900.0f

    cmpg-float v4, v7, v4

    if-gez v4, :cond_a6

    .line 52103
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 52106
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-nez v4, :cond_a6

    .line 52108
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 52112
    :cond_a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_1c

    .line 52114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v4}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 52116
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    goto/16 :goto_7

    .line 52126
    :cond_a7
    iget-object v4, v4, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/corrodinggames/rts/game/units/bp437;->d(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    .line 52129
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_7

    .line 50064
    :cond_a8
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->m:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_a9

    .line 50066
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v11, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V

    goto/16 :goto_7

    .line 50068
    :cond_a9
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_aa

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->l:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_aa

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->n:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_ab

    .line 50070
    :cond_aa
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V

    goto/16 :goto_7

    .line 50072
    :cond_ab
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->o:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v4, v5, :cond_ac

    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->p:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_ad

    .line 50074
    :cond_ac
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/corrodinggames/rts/game/units/bp437;->c(Lcom/corrodinggames/rts/game/units/en734;)V

    goto/16 :goto_7

    .line 50076
    :cond_ad
    sget-object v5, Lcom/corrodinggames/rts/game/units/eo735;->q:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v4, v5, :cond_1c

    .line 52136
    invoke-virtual {v11}, Lcom/corrodinggames/rts/game/units/en734;->f()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v4

    .line 52138
    if-eqz v4, :cond_40

    .line 52140
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 52141
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_40

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->V:F

    goto/16 :goto_f

    .line 50135
    :cond_ae
    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-byte v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    goto/16 :goto_8

    .line 1111
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aS()Z

    move-result v6

    .line 1116
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b8

    :cond_b0
    const/4 v4, 0x1

    .line 1119
    :goto_31
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_b1

    if-eqz v4, :cond_be

    :cond_b1
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 1123
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->y()F

    move-result v7

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aT()Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 1129
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cj:F

    .line 1132
    :cond_b2
    if-nez v6, :cond_b9

    .line 1134
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    mul-float/2addr v6, v7

    mul-float v8, v6, p1

    .line 1136
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v13

    .line 1137
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aK()F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v5, v12

    .line 1140
    if-eqz v4, :cond_bd

    .line 1142
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    mul-float v4, v4, p1

    add-float/2addr v6, v4

    .line 1143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    mul-float v4, v4, p1

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aK()F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v4, v5

    .line 1156
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    invoke-static {v5, v8, v9, v10}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v5

    .line 1157
    mul-float v8, v7, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_b3

    .line 1159
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    float-to-double v8, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    float-to-double v10, v5

    const-wide v12, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v10, v12

    move/from16 v0, p1

    float-to-double v12, v0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v5, v8

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 1160
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    float-to-double v8, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    float-to-double v10, v5

    const-wide v12, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v10, v12

    move/from16 v0, p1

    float-to-double v12, v0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v5, v8

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    .line 1163
    :cond_b3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, v7

    mul-float v9, v9, p1

    invoke-static {v5, v8, v9}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 1164
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    mul-float v7, v7, p1

    invoke-static {v5, v8, v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    .line 1240
    :goto_32
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    .line 1249
    :goto_33
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_b4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_b5

    .line 1260
    :cond_b4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    const/high16 v7, -0x3ef00000    # -9.0f

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v5, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    .line 1261
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    const/high16 v7, -0x3ef00000    # -9.0f

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v5, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    .line 1271
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    add-float/2addr v6, v5

    .line 1272
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    add-float/2addr v4, v5

    .line 1275
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    .line 1276
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    .line 1298
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    .line 1303
    :cond_b5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    if-eqz v5, :cond_b6

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v5

    if-eqz v5, :cond_b6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cQ:Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v5, :cond_b6

    .line 1307
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(FLcom/corrodinggames/rts/gameFramework/k1104;FF)V

    .line 1312
    :cond_b6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->az:Z

    if-eqz v4, :cond_b7

    .line 1314
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->az:Z

    .line 1316
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/corrodinggames/rts/game/units/bp437;->a(Z)V

    .line 1318
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    .line 1323
    :cond_b7
    return-void

    .line 1116
    :cond_b8
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 1197
    :cond_b9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_bb

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->B()F

    move-result v4

    const v6, 0x3fb47ae1    # 1.41f

    mul-float/2addr v4, v6

    .line 1200
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v8

    .line 1201
    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v5

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->ch:F

    mul-float/2addr v5, v8

    .line 1210
    :goto_34
    move-object/from16 v0, p0

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    invoke-static {v8, v9, v6, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v8

    .line 1212
    mul-float/2addr v7, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_ba

    .line 1214
    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    float-to-double v10, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    float-to-double v14, v7

    const-wide v16, 0x3fa999999999999aL    # 0.05

    mul-double v14, v14, v16

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    double-to-float v7, v10

    move-object/from16 v0, p0

    iput v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 1215
    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    float-to-double v10, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    float-to-double v14, v7

    const-wide v16, 0x3fa999999999999aL    # 0.05

    mul-double v14, v14, v16

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    double-to-float v7, v10

    move-object/from16 v0, p0

    iput v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    .line 1218
    :cond_ba
    mul-float v4, v4, p1

    .line 1220
    mul-float v7, v4, v4

    cmpg-float v7, v8, v7

    if-gez v7, :cond_bc

    .line 1222
    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 1223
    move-object/from16 v0, p0

    iput v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    .line 1233
    :goto_35
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    mul-float v4, v4, p1

    add-float v5, v13, v4

    .line 1234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    mul-float v4, v4, p1

    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->aK()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v12

    move v6, v5

    goto/16 :goto_32

    .line 1205
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/units/bp437;->C()F

    move-result v4

    const v5, 0x3fb47ae1    # 1.41f

    mul-float/2addr v4, v5

    .line 1206
    const/4 v6, 0x0

    .line 1207
    const/4 v5, 0x0

    goto :goto_34

    .line 1227
    :cond_bc
    move-object/from16 v0, p0

    iget v7, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    invoke-static {v7, v8, v6, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v5

    .line 1229
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->ce:F

    .line 1230
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    invoke-static {v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cf:F

    goto :goto_35

    :cond_bd
    move v4, v5

    goto/16 :goto_32

    :cond_be
    move v4, v12

    move v6, v13

    goto/16 :goto_33

    :cond_bf
    move-object v4, v11

    goto/16 :goto_30

    :cond_c0
    move-object v6, v11

    goto/16 :goto_2e

    :cond_c1
    move-object v5, v6

    goto/16 :goto_2c

    :cond_c2
    const/4 v5, 0x0

    goto/16 :goto_29

    :cond_c3
    const/4 v5, 0x0

    goto/16 :goto_27

    :cond_c4
    const/4 v6, 0x0

    move v9, v5

    move v10, v6

    goto/16 :goto_25

    :cond_c5
    const/4 v4, 0x0

    goto/16 :goto_23

    :cond_c6
    move v7, v4

    goto/16 :goto_22

    :cond_c7
    move v7, v6

    goto/16 :goto_20

    :cond_c8
    move-object v8, v4

    goto/16 :goto_1e

    :cond_c9
    move v9, v14

    move v10, v15

    move-object/from16 v4, v17

    goto/16 :goto_1c

    :cond_ca
    move v4, v5

    goto/16 :goto_19

    :cond_cb
    move v4, v5

    goto/16 :goto_1a

    :cond_cc
    move-object/from16 v17, v11

    goto/16 :goto_18

    :cond_cd
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_17

    :cond_ce
    move v4, v6

    goto/16 :goto_16

    :cond_cf
    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_d0
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_d

    :cond_d1
    move-object v7, v11

    goto/16 :goto_c

    :cond_d2
    move-object v4, v11

    goto/16 :goto_b

    :cond_d3
    move-object v5, v11

    goto/16 :goto_4

    :cond_d4
    move-object v11, v4

    goto/16 :goto_3

    :cond_d5
    move v5, v7

    goto/16 :goto_29

    :cond_d6
    move v4, v5

    goto/16 :goto_2f
.end method
