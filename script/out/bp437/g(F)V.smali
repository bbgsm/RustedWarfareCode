.method public static strictfp g(F)V
    .locals 14

    const/16 v13, 0x9

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1534
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v5

    .line 1537
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->j:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 1539
    iget v6, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    .line 1540
    sget-object v7, Lcom/corrodinggames/rts/game/units/bp437;->aO:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 1542
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 52147
    iget-object v8, v0, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 1543
    sget-object v0, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v9

    move v4, v3

    .line 1545
    :goto_0
    if-ge v4, v9, :cond_3

    .line 1547
    aget-object v10, v8, v4

    .line 52150
    invoke-virtual {v10}, Lcom/corrodinggames/rts/game/units/ce454;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52152
    const/4 v0, 0x3

    .line 52159
    :goto_1
    iget-object v11, v10, Lcom/corrodinggames/rts/game/units/ce454;->cP:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v11, :cond_0

    move v0, v2

    .line 52164
    :cond_0
    iget-boolean v11, v10, Lcom/corrodinggames/rts/game/units/ce454;->bV:Z

    if-nez v11, :cond_1

    move v0, v2

    .line 52169
    :cond_1
    iput v0, v10, Lcom/corrodinggames/rts/game/units/ce454;->bW:I

    .line 1545
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 52154
    :cond_2
    invoke-virtual {v10}, Lcom/corrodinggames/rts/game/units/ce454;->Q()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52156
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 1550
    :goto_2
    if-ge v4, v9, :cond_9

    .line 1552
    aget-object v0, v8, v4

    instance-of v0, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_8

    .line 1554
    aget-object v0, v8, v4

    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 1556
    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->cd:Z

    if-eqz v2, :cond_8

    :cond_4
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1558
    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->aN:I

    if-gt v2, v6, :cond_8

    .line 1564
    iput-boolean v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->cd:Z

    .line 1565
    iput-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    .line 1569
    iget-boolean v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    if-eqz v2, :cond_6

    .line 1571
    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    const/high16 v10, 0x40e00000    # 7.0f

    add-float/2addr v2, v10

    .line 1573
    iget-byte v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    if-le v10, v13, :cond_5

    .line 1575
    add-int/lit16 v10, v6, 0xc8

    rem-int/lit8 v11, v4, 0x32

    add-int/2addr v10, v11

    iput v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->aN:I

    .line 1588
    :goto_3
    iput-byte v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    .line 1594
    invoke-virtual {v7}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->clear()V

    .line 1595
    iget-object v10, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bZ:Lcom/corrodinggames/rts/game/units/f/c738;

    iget v11, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v12, v0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v10, v11, v12, v2, v7}, Lcom/corrodinggames/rts/game/units/f/c738;->a(FFFLcom/corrodinggames/rts/gameFramework/utility/x1359;)V

    .line 52171
    iget-object v10, v7, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 1598
    iget v11, v7, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->b:I

    move v2, v3

    :goto_4
    if-ge v2, v11, :cond_7

    .line 1600
    aget-object v12, v10, v2

    .line 1601
    invoke-direct {v0, v12, p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;FZ)V

    .line 1598
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1579
    :cond_5
    add-int/lit8 v10, v6, 0x32

    rem-int/lit8 v11, v4, 0x32

    add-int/2addr v10, v11

    iput v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->aN:I

    goto :goto_3

    .line 1584
    :cond_6
    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v2, v10

    .line 1585
    add-int/lit16 v10, v6, 0xfa

    rem-int/lit8 v11, v4, 0x32

    add-int/2addr v10, v11

    iput v10, v0, Lcom/corrodinggames/rts/game/units/bp437;->aN:I

    goto :goto_3

    .line 1604
    :cond_7
    iget-byte v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    if-le v2, v13, :cond_8

    .line 1606
    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->bB:I

    add-int/lit16 v10, v6, -0x190

    if-le v2, v10, :cond_8

    .line 1611
    iget v2, v5, Lcom/corrodinggames/rts/gameFramework/k1104;->bv:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit8 v10, v4, 0x5

    add-int/2addr v2, v10

    iput v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->aN:I

    .line 1612
    iput-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->cd:Z

    .line 1550
    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1621
    :cond_9
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->j:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 1624
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->k:Lcom/corrodinggames/rts/gameFramework/cg911;

    move v2, v3

    .line 1626
    :goto_5
    if-ge v2, v9, :cond_c

    .line 1628
    aget-object v0, v8, v2

    instance-of v0, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_b

    .line 1630
    aget-object v0, v8, v2

    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 1632
    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aA:Z

    if-eqz v4, :cond_b

    .line 1634
    iget-byte v5, v0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    .line 1636
    if-lez v5, :cond_b

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->H()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1638
    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->cd:Z

    if-nez v4, :cond_a

    .line 1640
    iput-boolean v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->cd:Z

    :cond_a
    move v4, v3

    .line 1643
    :goto_6
    if-ge v4, v5, :cond_b

    .line 1645
    iget-object v6, v0, Lcom/corrodinggames/rts/game/units/bp437;->aL:[Lcom/corrodinggames/rts/game/units/ce454;

    aget-object v6, v6, v4

    .line 1646
    invoke-direct {v0, v6, p0, v3}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;FZ)V

    .line 1643
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1626
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 1652
    :cond_c
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->k:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 1654
    return-void

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method
