.method private strictfp c()V
    .locals 17

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->q:Lcom/corrodinggames/rts/gameFramework/k/k1099;

    iget-object v6, v1, Lcom/corrodinggames/rts/gameFramework/k/k1099;->q:Lcom/corrodinggames/rts/game/b/b326;

    .line 557
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->d:[B

    .line 559
    iget-object v1, v6, Lcom/corrodinggames/rts/game/b/b326;->u:Lcom/corrodinggames/rts/game/b/g331;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/b/g331;->a()[S

    move-result-object v8

    .line 560
    iget-object v9, v6, Lcom/corrodinggames/rts/game/b/b326;->C:[Lcom/corrodinggames/rts/game/b/i333;

    .line 561
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    .line 564
    move-object/from16 v0, p0

    iget v11, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->b:I

    .line 565
    move-object/from16 v0, p0

    iget v12, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->c:I

    .line 2494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->d:Lcom/corrodinggames/rts/game/units/cg456;

    .line 2495
    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/corrodinggames/rts/gameFramework/k/h1096;->a:Lcom/corrodinggames/rts/game/units/cg456;

    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->a:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 569
    :goto_0
    if-nez v1, :cond_2

    .line 776
    :cond_0
    return-void

    .line 2495
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 574
    :cond_2
    sget-object v1, Lcom/corrodinggames/rts/game/units/cg456;->e:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v1}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/corrodinggames/rts/game/units/cg456;->f:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v1}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/corrodinggames/rts/game/units/cg456;->h:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v1}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_3
    const/4 v1, 0x1

    .line 575
    :goto_1
    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->f:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->g:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/corrodinggames/rts/game/units/cg456;->h:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v2}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    const/4 v2, 0x1

    .line 576
    :goto_2
    sget-object v3, Lcom/corrodinggames/rts/game/units/cg456;->g:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v3}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/corrodinggames/rts/game/units/cg456;->h:Lcom/corrodinggames/rts/game/units/cg456;

    invoke-virtual {v10, v3}, Lcom/corrodinggames/rts/game/units/cg456;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_5
    const/4 v3, 0x1

    .line 579
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v11, :cond_13

    .line 581
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_12

    .line 583
    mul-int v13, v4, v12

    add-int/2addr v13, v5

    .line 585
    const/4 v14, 0x0

    aput-byte v14, v7, v13

    .line 589
    aget-short v14, v8, v13

    .line 590
    aget-object v14, v9, v14

    .line 593
    if-eqz v14, :cond_a

    .line 596
    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->e:Z

    if-eqz v15, :cond_6

    if-nez v1, :cond_6

    .line 598
    const/4 v15, -0x1

    aput-byte v15, v7, v13

    .line 601
    :cond_6
    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->h:Z

    if-eqz v15, :cond_7

    if-nez v2, :cond_7

    .line 603
    const/4 v15, -0x1

    aput-byte v15, v7, v13

    .line 606
    :cond_7
    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->k:Z

    if-eqz v15, :cond_8

    if-nez v3, :cond_8

    .line 608
    const/4 v15, -0x1

    aput-byte v15, v7, v13

    .line 611
    :cond_8
    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->g:Z

    if-eqz v15, :cond_9

    .line 613
    const/4 v15, -0x1

    aput-byte v15, v7, v13

    .line 616
    :cond_9
    sget-object v15, Lcom/corrodinggames/rts/game/units/cg456;->e:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v10, v15, :cond_a

    .line 619
    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->e:Z

    if-nez v15, :cond_a

    iget-boolean v15, v14, Lcom/corrodinggames/rts/game/b/i333;->f:Z

    if-nez v15, :cond_a

    .line 621
    const/4 v15, -0x1

    aput-byte v15, v7, v13

    .line 678
    :cond_a
    invoke-virtual {v6, v4, v5}, Lcom/corrodinggames/rts/game/b/b326;->d(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v15

    .line 679
    if-eqz v15, :cond_d

    .line 681
    sget-object v16, Lcom/corrodinggames/rts/game/units/cg456;->b:Lcom/corrodinggames/rts/game/units/cg456;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_b

    .line 683
    iget-boolean v0, v15, Lcom/corrodinggames/rts/game/b/i333;->i:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 685
    const/16 v16, -0x1

    aput-byte v16, v7, v13

    .line 699
    :cond_b
    iget-boolean v0, v15, Lcom/corrodinggames/rts/game/b/i333;->k:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    if-nez v3, :cond_c

    .line 701
    const/16 v16, -0x1

    aput-byte v16, v7, v13

    .line 705
    :cond_c
    aget-byte v16, v7, v13

    if-nez v16, :cond_d

    .line 707
    iget-byte v15, v15, Lcom/corrodinggames/rts/game/b/i333;->j:B

    aput-byte v15, v7, v13

    .line 713
    :cond_d
    if-eqz v14, :cond_e

    .line 715
    aget-byte v15, v7, v13

    if-nez v15, :cond_e

    .line 717
    iget-byte v14, v14, Lcom/corrodinggames/rts/game/b/i333;->j:B

    aput-byte v14, v7, v13

    .line 581
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 574
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 575
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 576
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 579
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 723
    :cond_13
    iget-object v4, v6, Lcom/corrodinggames/rts/game/b/b326;->x:Lcom/corrodinggames/rts/game/b/g331;

    if-eqz v4, :cond_0

    .line 725
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_0

    .line 727
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v12, :cond_1a

    .line 729
    iget-object v8, v6, Lcom/corrodinggames/rts/game/b/b326;->x:Lcom/corrodinggames/rts/game/b/g331;

    invoke-virtual {v8, v4, v5}, Lcom/corrodinggames/rts/game/b/g331;->a(II)Lcom/corrodinggames/rts/game/b/i333;

    move-result-object v8

    .line 730
    if-eqz v8, :cond_19

    .line 732
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    const/4 v13, 0x0

    aput-byte v13, v7, v9

    .line 735
    iget-boolean v9, v8, Lcom/corrodinggames/rts/game/b/i333;->e:Z

    if-eqz v9, :cond_14

    if-nez v1, :cond_14

    .line 737
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    const/4 v13, -0x1

    aput-byte v13, v7, v9

    .line 740
    :cond_14
    iget-boolean v9, v8, Lcom/corrodinggames/rts/game/b/i333;->h:Z

    if-eqz v9, :cond_15

    if-nez v2, :cond_15

    .line 742
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    const/4 v13, -0x1

    aput-byte v13, v7, v9

    .line 745
    :cond_15
    iget-boolean v9, v8, Lcom/corrodinggames/rts/game/b/i333;->k:Z

    if-eqz v9, :cond_16

    if-nez v3, :cond_16

    .line 747
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    const/4 v13, -0x1

    aput-byte v13, v7, v9

    .line 750
    :cond_16
    iget-boolean v9, v8, Lcom/corrodinggames/rts/game/b/i333;->g:Z

    if-eqz v9, :cond_17

    .line 752
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    const/4 v13, -0x1

    aput-byte v13, v7, v9

    .line 755
    :cond_17
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    aget-byte v9, v7, v9

    if-nez v9, :cond_18

    .line 757
    mul-int v9, v4, v12

    add-int/2addr v9, v5

    iget-byte v13, v8, Lcom/corrodinggames/rts/game/b/i333;->j:B

    aput-byte v13, v7, v9

    .line 760
    :cond_18
    sget-object v9, Lcom/corrodinggames/rts/game/units/cg456;->e:Lcom/corrodinggames/rts/game/units/cg456;

    if-ne v10, v9, :cond_19

    .line 763
    iget-boolean v9, v8, Lcom/corrodinggames/rts/game/b/i333;->e:Z

    if-nez v9, :cond_19

    iget-boolean v8, v8, Lcom/corrodinggames/rts/game/b/i333;->f:Z

    if-nez v8, :cond_19

    .line 765
    mul-int v8, v4, v12

    add-int/2addr v8, v5

    const/4 v9, -0x1

    aput-byte v9, v7, v8

    .line 727
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 725
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method
