.method public final strictfp b()V
    .locals 24

    .line 900
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->M()J

    .line 902
    move-object/from16 v0, p0

    iget v6, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    mul-int/2addr v2, v6

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->f:[B

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v3, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    :cond_0
    return-void

    .line 923
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v7, v2, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 925
    iget v8, v7, Lcom/corrodinggames/rts/game/b/b326;->p:I

    .line 926
    iget v9, v7, Lcom/corrodinggames/rts/game/b/b326;->q:I

    .line 928
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 4102
    iget-object v10, v2, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 929
    sget-object v2, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v11

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v11, :cond_0

    .line 931
    aget-object v12, v10, v3

    .line 933
    iget-boolean v2, v12, Lcom/corrodinggames/rts/game/units/ce454;->bV:Z

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v12, Lcom/corrodinggames/rts/game/units/ce454;->cM:Z

    if-nez v2, :cond_8

    instance-of v2, v12, Lcom/corrodinggames/rts/game/units/cd453;

    if-nez v2, :cond_8

    .line 935
    iget-boolean v2, v12, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v2, :cond_8

    invoke-virtual {v12}, Lcom/corrodinggames/rts/game/units/ce454;->h()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v12, Lcom/corrodinggames/rts/game/units/ce454;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v2, :cond_8

    invoke-virtual {v12}, Lcom/corrodinggames/rts/game/units/ce454;->Q()Z

    move-result v2

    if-nez v2, :cond_8

    .line 937
    const/4 v2, 0x2

    .line 939
    iget v4, v12, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v5, v12, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-virtual {v7, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 941
    iget v13, v7, Lcom/corrodinggames/rts/game/b/b326;->U:I

    .line 942
    iget v14, v7, Lcom/corrodinggames/rts/game/b/b326;->V:I

    .line 951
    iget v4, v12, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    const/high16 v5, 0x40a00000    # 5.0f

    add-float v15, v4, v5

    .line 952
    iget v4, v12, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    const/high16 v5, 0x41200000    # 10.0f

    add-float v16, v4, v5

    .line 955
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v16, v4

    if-gez v4, :cond_5

    .line 957
    const/4 v2, 0x0

    .line 964
    :cond_2
    :goto_1
    sub-int v4, v13, v2

    move v5, v4

    :goto_2
    add-int v4, v13, v2

    if-gt v5, v4, :cond_8

    .line 966
    sub-int v4, v14, v2

    :goto_3
    add-int v17, v14, v2

    move/from16 v0, v17

    if-gt v4, v0, :cond_7

    .line 968
    invoke-virtual {v7, v5, v4}, Lcom/corrodinggames/rts/game/b/b326;->c(II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 971
    invoke-virtual {v7, v5, v4}, Lcom/corrodinggames/rts/game/b/b326;->a(II)V

    .line 973
    iget v0, v7, Lcom/corrodinggames/rts/game/b/b326;->U:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 974
    iget v0, v7, Lcom/corrodinggames/rts/game/b/b326;->V:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 976
    iget v0, v12, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    move/from16 v19, v0

    iget v0, v12, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v17

    .line 987
    mul-int v18, v5, v6

    add-int v18, v18, v4

    .line 990
    mul-float v19, v15, v15

    cmpg-float v19, v17, v19

    if-gez v19, :cond_6

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->f:[B

    move-object/from16 v17, v0

    aget-byte v19, v17, v18

    add-int/lit8 v19, v19, 0x6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 999
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->f:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v18

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->f:[B

    move-object/from16 v17, v0

    const/16 v19, 0x7f

    aput-byte v19, v17, v18

    .line 966
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 959
    :cond_5
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v16, v4

    if-gez v4, :cond_2

    .line 961
    const/4 v2, 0x1

    goto :goto_1

    .line 994
    :cond_6
    mul-float v19, v16, v16

    cmpg-float v17, v17, v19

    if-gez v17, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->f:[B

    move-object/from16 v17, v0

    aget-byte v19, v17, v18

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ffff7ced916872cL    # 1.9980000000000002

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    goto :goto_4

    .line 964
    :cond_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_2

    .line 929
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0
.end method
