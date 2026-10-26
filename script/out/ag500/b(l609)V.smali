.method private static b(Lcom/corrodinggames/rts/game/units/custom/l609;)V
    .locals 13

    const/4 v1, 0x0

    .line 7703
    iget-object v8, p0, Lcom/corrodinggames/rts/game/units/custom/l609;->ax:[Lcom/corrodinggames/rts/game/units/custom/bt554;

    move v6, v1

    .line 7707
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_6

    .line 7709
    aget-object v9, v8, v6

    .line 7711
    const/high16 v3, -0x40800000    # -1.0f

    .line 7712
    const/4 v2, 0x0

    .line 7714
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7716
    iget-boolean v4, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->o:Z

    if-eqz v4, :cond_7

    .line 7718
    const v0, 0x3dcccccd    # 0.1f

    move v7, v0

    :goto_1
    move v0, v1

    .line 7723
    :goto_2
    array-length v4, v8

    if-ge v0, v4, :cond_2

    .line 7725
    aget-object v5, v8, v0

    .line 7726
    if-eq v9, v5, :cond_1

    iget-boolean v4, v5, Lcom/corrodinggames/rts/game/units/custom/bt554;->l:Z

    if-nez v4, :cond_1

    .line 7728
    iget v4, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->d:F

    mul-float/2addr v4, v7

    iget v10, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->e:F

    iget v11, v5, Lcom/corrodinggames/rts/game/units/custom/bt554;->d:F

    mul-float/2addr v11, v7

    iget v12, v5, Lcom/corrodinggames/rts/game/units/custom/bt554;->e:F

    invoke-static {v4, v10, v11, v12}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v4

    .line 7729
    if-eqz v2, :cond_0

    cmpg-float v10, v4, v3

    if-gez v10, :cond_1

    :cond_0
    move v3, v4

    move-object v2, v5

    .line 7723
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7742
    :cond_2
    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v2, v0

    .line 7743
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 7746
    :goto_3
    array-length v4, v8

    if-ge v0, v4, :cond_4

    .line 7748
    aget-object v4, v8, v0

    .line 7749
    if-eq v9, v4, :cond_3

    iget-boolean v5, v4, Lcom/corrodinggames/rts/game/units/custom/bt554;->l:Z

    if-nez v5, :cond_3

    .line 7751
    iget v5, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->d:F

    mul-float/2addr v5, v7

    iget v10, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->e:F

    iget v11, v4, Lcom/corrodinggames/rts/game/units/custom/bt554;->d:F

    mul-float/2addr v11, v7

    iget v12, v4, Lcom/corrodinggames/rts/game/units/custom/bt554;->e:F

    invoke-static {v5, v10, v11, v12}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v5

    .line 7753
    mul-float v10, v2, v2

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_3

    .line 7755
    iget v4, v4, Lcom/corrodinggames/rts/game/units/custom/bt554;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7746
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7763
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->S:[I

    move v2, v1

    .line 7764
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 7766
    iget-object v4, v9, Lcom/corrodinggames/rts/game/units/custom/bt554;->S:[I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    .line 7764
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 7707
    :cond_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 7776
    :cond_6
    return-void

    :cond_7
    move v7, v0

    goto/16 :goto_1
.end method
