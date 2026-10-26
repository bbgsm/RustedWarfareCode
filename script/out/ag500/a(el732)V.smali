.method private static a(Lcom/corrodinggames/rts/game/units/el732;)V
    .locals 13

    .line 1526
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v8

    .line 1531
    :try_start_0
    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->h()V

    .line 1535
    instance-of v1, p0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v1, :cond_4

    .line 1537
    move-object v0, p0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    move-object v1, v0

    .line 1540
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1542
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->p(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v2

    .line 1543
    if-nez v2, :cond_1

    .line 1545
    new-instance v2, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find [ai]upgradedFrom target:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1962
    :catch_0
    move-exception v1

    .line 1967
    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/game/units/el732;)V

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/corrodinggames/rts/game/units/custom/l609;->b(Lcom/corrodinggames/rts/game/units/el732;)V

    .line 1552
    :cond_2
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->p:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v2}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/v619;

    .line 1554
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/custom/v619;->a()V
    :try_end_1
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1972
    :catch_1
    move-exception v1

    .line 1976
    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/corrodinggames/rts/game/units/custom/ag500;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/corrodinggames/rts/game/units/el732;)V

    goto :goto_0

    .line 1557
    :cond_3
    :try_start_2
    iget-boolean v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->eH:Z

    if-eqz v2, :cond_4

    .line 1560
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/l609;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    :cond_4
    sget-object v1, Lcom/corrodinggames/rts/game/units/custom/l609;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/l609;

    .line 1573
    instance-of v2, p0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v2, :cond_6

    .line 1575
    move-object v0, p0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    move-object v2, v0

    .line 1579
    iget-object v3, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fI:Ljava/lang/String;

    .line 11803
    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/l609;->M:Ljava/lang/String;

    .line 1579
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1584
    invoke-virtual {v2, v1}, Lcom/corrodinggames/rts/game/units/custom/l609;->b(Lcom/corrodinggames/rts/game/units/el732;)V

    .line 1591
    :cond_6
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/p613;

    .line 1593
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->a:Ljava/lang/String;

    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1595
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->e:Z

    .line 1599
    iget v4, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->cl:I

    .line 1601
    const/4 v3, 0x0

    move v7, v4

    .line 1603
    :goto_2
    const/4 v4, 0x3

    if-gt v7, v4, :cond_7

    .line 1605
    invoke-interface {p0, v7}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 1610
    iget-boolean v4, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->aH:Z

    if-nez v4, :cond_8

    iget-boolean v4, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->c:Z

    if-eqz v4, :cond_b

    .line 1612
    :cond_8
    new-instance v4, Lcom/corrodinggames/rts/game/units/a/v379;

    invoke-direct {v4, v1}, Lcom/corrodinggames/rts/game/units/a/v379;-><init>(Lcom/corrodinggames/rts/game/units/el732;)V

    move-object v6, v4

    .line 1619
    :goto_3
    iget v4, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->b:F

    const v5, -0x3b864000    # -999.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 1621
    iget v4, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->b:F

    iput v4, v6, Lcom/corrodinggames/rts/game/units/a/s376;->g:F

    .line 1624
    :cond_9
    iget-object v4, v2, Lcom/corrodinggames/rts/game/units/custom/p613;->f:Lcom/corrodinggames/rts/game/units/custom/logicBooleans/LogicBoolean;

    if-eqz v4, :cond_d

    .line 1626
    const/4 v4, 0x0

    .line 1627
    instance-of v5, p0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-nez v5, :cond_a

    .line 1629
    invoke-static {p0}, Lcom/corrodinggames/rts/game/units/ce454;->b(Lcom/corrodinggames/rts/game/units/el732;)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v5

    .line 1631
    instance-of v5, v5, Lcom/corrodinggames/rts/game/units/bp437;

    if-nez v5, :cond_a

    .line 1634
    const/4 v4, 0x1

    .line 1638
    :cond_a
    if-nez v4, :cond_c

    .line 1640
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/a/c488;->a(Lcom/corrodinggames/rts/game/units/custom/p613;)Lcom/corrodinggames/rts/game/units/a/a358;

    move-result-object v4

    iput-object v4, v6, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    move v4, v3

    .line 1656
    :goto_4
    const/4 v5, 0x0

    .line 1657
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/corrodinggames/rts/game/units/a/s376;

    .line 1659
    invoke-virtual {v6, v3}, Lcom/corrodinggames/rts/game/units/a/s376;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1661
    const/4 v3, 0x1

    :goto_6
    move v5, v3

    .line 1663
    goto :goto_5

    .line 1616
    :cond_b
    new-instance v4, Lcom/corrodinggames/rts/game/units/a/l369;

    invoke-direct {v4, v1}, Lcom/corrodinggames/rts/game/units/a/l369;-><init>(Lcom/corrodinggames/rts/game/units/el732;)V

    move-object v6, v4

    goto :goto_3

    .line 1644
    :cond_c
    if-nez v3, :cond_d

    .line 1646
    const/4 v3, 0x1

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "builtFrom isLocked currently cannot be used when targeting old-style unit:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->o(Ljava/lang/String;)V

    :cond_d
    move v4, v3

    goto :goto_4

    .line 1665
    :cond_e
    if-nez v5, :cond_f

    .line 1667
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12518
    :cond_f
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1603
    add-int/lit8 v5, v7, 0x1

    move v3, v4

    move v7, v5

    goto/16 :goto_2

    .line 1679
    :cond_10
    instance-of v1, p0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v1, :cond_22

    .line 1681
    move-object v0, p0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    move-object v1, v0

    .line 1685
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->gh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;

    .line 1691
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    const-string v4, "setRally"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1694
    const/4 v3, 0x1

    :goto_7
    const/4 v4, 0x3

    if-gt v3, v4, :cond_11

    .line 1696
    invoke-interface {p0, v3}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1699
    new-instance v5, Lcom/corrodinggames/rts/game/units/a/o372;

    invoke-direct {v5}, Lcom/corrodinggames/rts/game/units/a/o372;-><init>()V

    .line 1700
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    const v7, -0x3b864000    # -999.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_12

    .line 1702
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    iput v6, v5, Lcom/corrodinggames/rts/game/units/a/s376;->g:F

    .line 1705
    :cond_12
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->dc:Z

    .line 13518
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1694
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1716
    :cond_13
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    const-string v4, "reclaim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1719
    const/4 v3, 0x1

    :goto_8
    const/4 v4, 0x3

    if-gt v3, v4, :cond_11

    .line 1721
    invoke-interface {p0, v3}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1723
    new-instance v5, Lcom/corrodinggames/rts/game/units/a/m370;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/corrodinggames/rts/game/units/a/m370;-><init>(Z)V

    .line 1725
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    const v7, -0x3b864000    # -999.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_14

    .line 1727
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    iput v6, v5, Lcom/corrodinggames/rts/game/units/a/s376;->g:F

    .line 1730
    :cond_14
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14518
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1719
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1738
    :cond_15
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    const-string v4, "repair"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1741
    const/4 v3, 0x1

    :goto_9
    const/4 v4, 0x3

    if-gt v3, v4, :cond_11

    .line 1743
    invoke-interface {p0, v3}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1746
    new-instance v5, Lcom/corrodinggames/rts/game/units/a/n371;

    invoke-direct {v5}, Lcom/corrodinggames/rts/game/units/a/n371;-><init>()V

    .line 1748
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    const v7, -0x3b864000    # -999.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_16

    .line 1750
    iget v6, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    iput v6, v5, Lcom/corrodinggames/rts/game/units/a/s376;->g:F

    .line 1753
    :cond_16
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15518
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1741
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1765
    :cond_17
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 1770
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/corrodinggames/rts/game/units/cj459;->a(Ljava/lang/String;)Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v3

    .line 1772
    if-nez v3, :cond_2c

    .line 1776
    new-instance v1, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find canBuild target:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1782
    :cond_18
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aM:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    sget-object v4, Lcom/corrodinggames/rts/game/units/custom/a/f491;->b:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    if-eq v3, v4, :cond_1a

    .line 1788
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "\'Target\' required for action:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16035
    iget-object v1, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->d:Lcom/corrodinggames/rts/game/units/custom/aj503;

    if-eqz v1, :cond_19

    .line 16037
    iget-object v1, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->d:Lcom/corrodinggames/rts/game/units/custom/aj503;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/custom/aj503;->a()Ljava/lang/String;

    move-result-object v1

    .line 1788
    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v3

    .line 16039
    :cond_19
    iget-object v1, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->c:Ljava/lang/String;

    goto :goto_a

    :cond_1a
    const/4 v3, 0x0

    move-object v4, v3

    .line 1804
    :goto_b
    const/4 v3, 0x1

    move v7, v3

    :goto_c
    const/4 v3, 0x3

    if-gt v7, v3, :cond_11

    .line 1806
    invoke-interface {p0, v7}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 1811
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aM:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/a/f491;->a:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    if-ne v3, v5, :cond_1e

    .line 1813
    invoke-interface {v4}, Lcom/corrodinggames/rts/game/units/el732;->j()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-boolean v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aK:Z

    if-eqz v3, :cond_1d

    .line 1816
    :cond_1b
    new-instance v3, Lcom/corrodinggames/rts/game/units/a/v379;

    iget v5, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aJ:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/corrodinggames/rts/game/units/a/v379;-><init>(Lcom/corrodinggames/rts/game/units/el732;ILjava/lang/Integer;)V

    .line 1817
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/a/c488;->a(Lcom/corrodinggames/rts/game/units/custom/a/d489;)Lcom/corrodinggames/rts/game/units/a/a358;

    move-result-object v5

    iput-object v5, v3, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    move-object v6, v3

    .line 1840
    :goto_d
    iget v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    const v5, -0x3b864000    # -999.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1c

    .line 1842
    iget v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->p:F

    iput v3, v6, Lcom/corrodinggames/rts/game/units/a/s376;->g:F

    .line 1848
    :cond_1c
    const/4 v5, 0x0

    .line 1849
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/corrodinggames/rts/game/units/a/s376;

    .line 1851
    invoke-virtual {v6, v3}, Lcom/corrodinggames/rts/game/units/a/s376;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1853
    const/4 v3, 0x1

    :goto_f
    move v5, v3

    .line 1855
    goto :goto_e

    .line 1822
    :cond_1d
    new-instance v3, Lcom/corrodinggames/rts/game/units/a/l369;

    invoke-direct {v3, v4}, Lcom/corrodinggames/rts/game/units/a/l369;-><init>(Lcom/corrodinggames/rts/game/units/el732;)V

    .line 1823
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/custom/a/c488;->a(Lcom/corrodinggames/rts/game/units/custom/a/d489;)Lcom/corrodinggames/rts/game/units/a/a358;

    move-result-object v5

    iput-object v5, v3, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    move-object v6, v3

    goto :goto_d

    .line 1828
    :cond_1e
    iget-object v3, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aM:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    sget-object v5, Lcom/corrodinggames/rts/game/units/custom/a/f491;->b:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    if-ne v3, v5, :cond_1f

    .line 1830
    new-instance v3, Lcom/corrodinggames/rts/game/units/custom/a/g492;

    invoke-static {v4}, Lcom/corrodinggames/rts/game/units/custom/l609;->a(Lcom/corrodinggames/rts/game/units/el732;)Lcom/corrodinggames/rts/game/units/custom/v619;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lcom/corrodinggames/rts/game/units/custom/a/g492;-><init>(Lcom/corrodinggames/rts/game/units/custom/a/d489;Lcom/corrodinggames/rts/game/units/custom/v619;)V

    move-object v6, v3

    goto :goto_d

    .line 1835
    :cond_1f
    new-instance v1, Lcom/corrodinggames/rts/game/units/custom/ch575;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find actionType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/corrodinggames/rts/game/units/custom/a/d489;->aM:Lcom/corrodinggames/rts/game/units/custom/a/f491;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/corrodinggames/rts/game/units/custom/ch575;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1857
    :cond_20
    if-nez v5, :cond_21

    .line 1859
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16518
    :cond_21
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1804
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_c

    .line 1874
    :cond_22
    instance-of v1, p0, Lcom/corrodinggames/rts/game/units/custom/l609;

    if-eqz v1, :cond_26

    .line 1876
    move-object v0, p0

    check-cast v0, Lcom/corrodinggames/rts/game/units/custom/l609;

    move-object v1, v0

    .line 1878
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fu:Z

    .line 1880
    const/4 v2, 0x1

    move v3, v2

    :goto_10
    const/4 v2, 0x3

    if-gt v3, v2, :cond_25

    .line 1882
    invoke-interface {p0, v3}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1883
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corrodinggames/rts/game/units/a/s376;

    .line 1885
    instance-of v5, v2, Lcom/corrodinggames/rts/game/units/custom/a/g492;

    if-nez v5, :cond_23

    .line 1893
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/a/s376;->h()Lcom/corrodinggames/rts/game/units/el732;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1895
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->fu:Z

    goto :goto_11

    .line 1880
    :cond_24
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    .line 1909
    :cond_25
    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/custom/l609;->p:Lcom/corrodinggames/rts/gameFramework/utility/p1351;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/gameFramework/utility/p1351;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/v619;

    .line 1911
    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/custom/v619;->b()V

    goto :goto_12

    .line 1918
    :cond_26
    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/k1104;->F()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v8, Lcom/corrodinggames/rts/gameFramework/k1104;->bU:Lcom/corrodinggames/rts/gameFramework/j/ae1028;

    iget-object v1, v1, Lcom/corrodinggames/rts/gameFramework/j/ae1028;->aA:Lcom/corrodinggames/rts/gameFramework/j/as1042;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/gameFramework/j/as1042;->k:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    move v3, v1

    .line 1922
    :goto_13
    const/4 v1, 0x1

    move v4, v1

    :goto_14
    const/4 v1, 0x3

    if-gt v4, v1, :cond_0

    .line 1924
    invoke-interface {p0, v4}, Lcom/corrodinggames/rts/game/units/el732;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1925
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/corrodinggames/rts/game/units/a/s376;

    move-object v2, v0

    .line 1928
    iget-object v1, v2, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    instance-of v1, v1, Lcom/corrodinggames/rts/game/units/custom/a/b487;

    if-eqz v1, :cond_28

    .line 1930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "=== ChainedActionConfig already on: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/corrodinggames/rts/game/units/el732;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " action:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/a/s376;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Ljava/lang/String;)V

    .line 1933
    iget-object v1, v2, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    check-cast v1, Lcom/corrodinggames/rts/game/units/custom/a/b487;

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/custom/a/b487;->b:Lcom/corrodinggames/rts/game/units/a/a358;

    iput-object v1, v2, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    .line 1937
    :cond_28
    if-eqz v3, :cond_27

    .line 1939
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/a/s376;->B()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v1

    .line 1940
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/a/s376;->P()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v6

    .line 1942
    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->c()Z

    move-result v7

    if-nez v7, :cond_27

    if-nez v6, :cond_27

    .line 1944
    new-instance v6, Lcom/corrodinggames/rts/game/units/custom/a/b487;

    iget-object v7, v2, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    invoke-direct {v6, v7}, Lcom/corrodinggames/rts/game/units/custom/a/b487;-><init>(Lcom/corrodinggames/rts/game/units/a/a358;)V

    .line 1946
    iput-object v6, v2, Lcom/corrodinggames/rts/game/units/a/s376;->h:Lcom/corrodinggames/rts/game/units/a/a358;

    .line 1948
    sget-object v2, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    iput-object v2, v6, Lcom/corrodinggames/rts/game/units/custom/a/b487;->c:Lcom/corrodinggames/rts/game/units/custom/d/b579;

    .line 1949
    iput-object v1, v6, Lcom/corrodinggames/rts/game/units/custom/a/b487;->d:Lcom/corrodinggames/rts/game/units/custom/d/b579;
    :try_end_2
    .catch Lcom/corrodinggames/rts/game/units/custom/ch575; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_15

    .line 1918
    :cond_29
    const/4 v1, 0x0

    move v3, v1

    goto :goto_13

    .line 1922
    :cond_2a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_14

    :cond_2b
    move v3, v5

    goto/16 :goto_f

    :cond_2c
    move-object v4, v3

    goto/16 :goto_b

    :cond_2d
    move v3, v5

    goto/16 :goto_6
.end method
