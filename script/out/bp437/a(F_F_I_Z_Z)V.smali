.method private strictfp a(FFIZZ)V
    .locals 11

    .line 8794
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 8795
    iget-object v2, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bR:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    .line 8796
    iget-object v7, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bI:Lcom/corrodinggames/rts/game/b/b326;

    .line 8810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    .line 8812
    const/4 v0, 0x0

    .line 8813
    const/4 v1, 0x0

    .line 8815
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bU()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8817
    const/4 v0, 0x1

    .line 8821
    :cond_0
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v7, v3, v4}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 8822
    iget v3, v7, Lcom/corrodinggames/rts/game/b/b326;->U:I

    .line 8823
    iget v4, v7, Lcom/corrodinggames/rts/game/b/b326;->V:I

    .line 8827
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->a(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 8829
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/corrodinggames/rts/gameFramework/k/k1099;->b(Lcom/corrodinggames/rts/game/units/cg456;II)Z

    move-result v2

    if-nez v2, :cond_14

    .line 8833
    const/4 v2, 0x1

    .line 8834
    const/4 v0, 0x1

    move v1, v0

    .line 8840
    :goto_0
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 8842
    :cond_1
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->o:B

    .line 8845
    :cond_2
    iput p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->m:F

    .line 8846
    iput p2, p0, Lcom/corrodinggames/rts/game/units/bp437;->n:F

    .line 8849
    if-eqz v2, :cond_4

    .line 8852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 8853
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 8854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    .line 8856
    invoke-virtual {v7, p1}, Lcom/corrodinggames/rts/game/b/b326;->a(F)F

    move-result v2

    .line 8857
    invoke-virtual {v7, p2}, Lcom/corrodinggames/rts/game/b/b326;->b(F)F

    move-result v0

    .line 8859
    if-eqz v1, :cond_13

    .line 8861
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v1, v3, v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v3

    .line 8862
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v1, v4, v2, v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFFF)F

    move-result v0

    .line 8863
    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 8865
    const/high16 v0, 0x42700000    # 60.0f

    .line 8866
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 8868
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 8870
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 8874
    :cond_3
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 8875
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 8881
    :goto_1
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-direct {p0, v2, v1, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(IFF)V

    .line 8883
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 8884
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    .line 9123
    :goto_2
    return-void

    .line 8892
    :cond_4
    const/4 v5, 0x0

    .line 8893
    if-eqz p4, :cond_5

    .line 8895
    const/4 v5, 0x3

    .line 8899
    :cond_5
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v0

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/corrodinggames/rts/game/units/ci458;->a(Lcom/corrodinggames/rts/game/units/cg456;FFFFI)Z

    move-result v0

    .line 8902
    if-eqz v0, :cond_c

    .line 8912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 8913
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 8914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aw:Lcom/corrodinggames/rts/gameFramework/k/c1091;

    .line 8916
    invoke-virtual {v7, p1}, Lcom/corrodinggames/rts/game/b/b326;->a(F)F

    move-result v4

    .line 8917
    invoke-virtual {v7, p2}, Lcom/corrodinggames/rts/game/b/b326;->b(F)F

    move-result v5

    .line 8919
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 8920
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 8922
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v0

    .line 8923
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v1, v6, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->b(FFFF)F

    move-result v1

    .line 8925
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v6

    .line 8926
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v7

    .line 8932
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 8934
    const/4 v0, 0x1

    .line 8936
    const/4 v1, 0x4

    if-ge v8, v1, :cond_6

    .line 8938
    const/4 v0, 0x0

    .line 8941
    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_9

    .line 8943
    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v9, v6

    add-float/2addr v2, v9

    .line 8944
    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v9, v7

    add-float/2addr v3, v9

    .line 8946
    if-lez v0, :cond_8

    .line 8948
    add-int/lit8 v0, v0, -0x1

    .line 8941
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8952
    :cond_8
    iget v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-direct {p0, v9, v2, v3}, Lcom/corrodinggames/rts/game/units/bp437;->a(IFF)V

    .line 8954
    iget v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 8956
    iget v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/16 v10, 0x77

    if-lt v9, v10, :cond_7

    .line 8958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    .line 8963
    :cond_9
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    if-nez v0, :cond_a

    .line 8965
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    const/16 v1, 0x77

    if-ge v0, v1, :cond_b

    .line 8967
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    invoke-direct {p0, v0, v4, v5}, Lcom/corrodinggames/rts/game/units/bp437;->a(IFF)V

    .line 8968
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    .line 8976
    :cond_a
    :goto_4
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ay:I

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->t:I

    goto/16 :goto_2

    .line 8972
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->s:Z

    goto :goto_4

    .line 8982
    :cond_c
    const/4 v0, 0x0

    .line 8985
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v1

    .line 8986
    if-eqz v1, :cond_d

    .line 8988
    iget-object v0, v1, Lcom/corrodinggames/rts/game/units/en734;->i:Lcom/corrodinggames/rts/gameFramework/am806;

    .line 9006
    :cond_d
    if-eqz v0, :cond_10

    .line 9018
    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/am806;->g:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    if-eqz v1, :cond_10

    .line 9020
    const/4 v1, 0x0

    .line 9028
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/am806;->g:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corrodinggames/rts/gameFramework/d925;

    .line 9032
    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->a:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->a:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    invoke-virtual {v3}, Lcom/corrodinggames/rts/gameFramework/k/j1098;->b()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 9042
    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->e:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_e

    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->f:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_e

    .line 9052
    iget v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->g:I

    add-int/lit16 v3, v3, 0xb4

    iget v4, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    if-lt v3, v4, :cond_e

    .line 9061
    iget-object v3, v0, Lcom/corrodinggames/rts/gameFramework/d925;->h:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->g()Lcom/corrodinggames/rts/game/units/cg456;

    move-result-object v4

    if-ne v3, v4, :cond_e

    .line 9067
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v5, v0, Lcom/corrodinggames/rts/gameFramework/d925;->c:F

    iget v7, v0, Lcom/corrodinggames/rts/gameFramework/d925;->d:F

    invoke-static {v3, v4, v5, v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v3

    .line 9069
    const/high16 v4, 0x45610000    # 3600.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    :goto_6
    move-object v1, v0

    .line 9074
    goto :goto_5

    .line 9077
    :cond_f
    if-eqz v1, :cond_10

    .line 9080
    iget-object v0, v1, Lcom/corrodinggames/rts/gameFramework/d925;->a:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    goto/16 :goto_2

    .line 9110
    :cond_10
    sget-boolean v0, Lcom/corrodinggames/rts/game/units/bp437;->L:Z

    if-eqz v0, :cond_11

    .line 9112
    const/4 v0, 0x2

    if-le p3, v0, :cond_11

    .line 9114
    const/4 v3, 0x2

    .line 9120
    :goto_7
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFIZZZ)Lcom/corrodinggames/rts/gameFramework/k/j1098;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aW:Lcom/corrodinggames/rts/gameFramework/k/j1098;

    goto/16 :goto_2

    :cond_11
    move v3, p3

    goto :goto_7

    :cond_12
    move-object v0, v1

    goto :goto_6

    :cond_13
    move v1, v2

    goto/16 :goto_1

    :cond_14
    move v2, v0

    goto/16 :goto_0
.end method
