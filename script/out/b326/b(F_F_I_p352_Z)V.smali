.method private strictfp b(FFILcom/corrodinggames/rts/game/p352;Z)V
    .locals 23

    .line 5806
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v8

    .line 5808
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/b/b326;->F:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    if-eqz v2, :cond_9

    .line 5813
    invoke-virtual/range {p0 .. p0}, Lcom/corrodinggames/rts/game/b/b326;->h()V

    .line 5819
    add-int/lit8 v2, p3, -0x5

    add-int/lit8 v3, p3, -0x5

    mul-int/2addr v2, v3

    int-to-float v9, v2

    .line 5823
    add-int/lit8 v2, p3, -0x3

    add-int/lit8 v3, p3, -0x3

    mul-int/2addr v2, v3

    int-to-float v10, v2

    .line 5824
    mul-int v2, p3, p3

    int-to-float v11, v2

    .line 5826
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v11, v10

    div-float v12, v2, v3

    .line 5831
    invoke-virtual/range {p0 .. p2}, Lcom/corrodinggames/rts/game/b/b326;->a(FF)V

    .line 5832
    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/b/b326;->U:I

    .line 5833
    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/b/b326;->V:I

    .line 5835
    move-object/from16 v0, p0

    iget v13, v0, Lcom/corrodinggames/rts/game/b/b326;->r:F

    .line 5836
    move-object/from16 v0, p0

    iget v14, v0, Lcom/corrodinggames/rts/game/b/b326;->s:F

    .line 5838
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/corrodinggames/rts/game/p352;->Q:[[B

    .line 5841
    add-int/lit8 v5, p3, -0x1

    .line 5843
    sub-int v6, v3, v5

    .line 5844
    sub-int v2, v4, v5

    .line 5845
    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 5846
    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 5848
    :cond_1
    add-int/2addr v3, v5

    .line 5849
    add-int/2addr v4, v5

    .line 5850
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v5, v5, -0x1

    if-le v3, v5, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/corrodinggames/rts/game/b/b326;->D:I

    add-int/lit8 v3, v3, -0x1

    .line 5851
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/corrodinggames/rts/game/b/b326;->E:I

    add-int/lit8 v4, v4, -0x1

    .line 5854
    :cond_3
    sget-object v16, Lcom/corrodinggames/rts/game/b/b326;->am:Lcom/corrodinggames/rts/game/b/e329;

    .line 5855
    const/4 v5, 0x0

    .line 5857
    invoke-virtual/range {p4 .. p4}, Lcom/corrodinggames/rts/game/p352;->m()Z

    move-result v17

    move v7, v6

    .line 5860
    :goto_0
    if-gt v7, v3, :cond_8

    move v6, v2

    .line 5862
    :goto_1
    if-gt v6, v4, :cond_7

    .line 5872
    aget-object v18, v15, v7

    aget-byte v18, v18, v6

    .line 5875
    if-eqz v18, :cond_4

    .line 5880
    mul-float v19, p1, v13

    mul-float v20, p2, v14

    int-to-float v0, v7

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v19

    .line 5890
    cmpg-float v20, v19, v10

    if-gtz v20, :cond_6

    .line 5892
    if-lez v18, :cond_4

    .line 5894
    aget-object v18, v15, v7

    const/16 v20, 0x0

    aput-byte v20, v18, v6

    .line 5897
    if-eqz v17, :cond_4

    .line 5899
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v6}, Lcom/corrodinggames/rts/game/b/e329;->a(II)V

    .line 5900
    const/4 v5, 0x1

    .line 5904
    cmpg-float v18, v19, v9

    if-gtz v18, :cond_5

    if-eqz p5, :cond_5

    .line 5907
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/corrodinggames/rts/game/b/b326;->e(II)V

    .line 5862
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5911
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/corrodinggames/rts/game/b/b326;->f(II)V

    goto :goto_2

    .line 5917
    :cond_6
    cmpg-float v20, v19, v11

    if-gtz v20, :cond_4

    .line 5927
    sub-float v19, v19, v10

    const/high16 v20, 0x41200000    # 10.0f

    mul-float v20, v20, v12

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    .line 5929
    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 5931
    aget-object v18, v15, v7

    aput-byte v19, v18, v6

    .line 5934
    if-eqz v17, :cond_4

    .line 5936
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v6}, Lcom/corrodinggames/rts/game/b/e329;->a(II)V

    .line 5937
    const/4 v5, 0x1

    .line 5941
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/corrodinggames/rts/game/b/b326;->f(II)V

    goto :goto_2

    .line 5860
    :cond_7
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 5954
    :cond_8
    if-eqz v5, :cond_9

    .line 5956
    iget-object v2, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bT:Lcom/corrodinggames/rts/gameFramework/f/q996;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/gameFramework/f/q996;->O:Z

    .line 5963
    :cond_9
    return-void
.end method
