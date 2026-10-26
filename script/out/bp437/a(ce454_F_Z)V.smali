.method private final strictfp a(Lcom/corrodinggames/rts/game/units/ce454;FZ)V
    .locals 12

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x40400000    # 3.0f

    const v8, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    .line 1660
    if-ne p1, p0, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->bW:I

    .line 1668
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p1, Lcom/corrodinggames/rts/game/units/ce454;->bW:I

    if-ne v0, v2, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    if-eq v0, p1, :cond_0

    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/ce454;->bS:Lcom/corrodinggames/rts/game/units/ce454;

    if-eq v0, p0, :cond_0

    .line 1705
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    add-float/2addr v2, v0

    .line 1706
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    add-float/2addr v3, v0

    .line 1708
    iget v0, p1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v4, p1, Lcom/corrodinggames/rts/game/units/ce454;->cb:F

    add-float/2addr v4, v0

    .line 1709
    iget v0, p1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iget v5, p1, Lcom/corrodinggames/rts/game/units/ce454;->cc:F

    add-float/2addr v5, v0

    .line 1712
    invoke-static {v2, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    .line 1715
    iget v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    iget v7, p1, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v6, v7

    .line 1718
    if-eqz p3, :cond_8

    .line 1722
    mul-float v2, v6, v6

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1e

    .line 1728
    :goto_1
    instance-of v0, p1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1730
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 1732
    iget-byte v3, v0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    .line 1734
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1736
    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->aL:[Lcom/corrodinggames/rts/game/units/ce454;

    aget-object v4, v4, v2

    if-eq v4, p0, :cond_0

    .line 1734
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1744
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aL:[Lcom/corrodinggames/rts/game/units/ce454;

    if-nez v0, :cond_3

    .line 1746
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/corrodinggames/rts/game/units/ce454;

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aL:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 1747
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aM:[F

    .line 1749
    :cond_3
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->aL:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 1750
    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->aM:[F

    .line 1752
    const/4 v0, 0x0

    :goto_3
    iget-byte v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    if-ge v0, v2, :cond_1d

    .line 1755
    aget v2, v4, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 1761
    :goto_4
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 1763
    iget-byte v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 1765
    iget-byte v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    .line 1773
    :cond_4
    iget-byte v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    array-length v5, v3

    if-ge v2, v5, :cond_5

    .line 1775
    iget-byte v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    .line 1778
    :cond_5
    iget-byte v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->aK:B

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-le v2, v0, :cond_7

    .line 1780
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v2

    .line 1778
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1753
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1782
    :cond_7
    aput-object p1, v3, v0

    .line 1783
    aput v1, v4, v0

    goto/16 :goto_0

    .line 1789
    :cond_8
    mul-float v7, v6, v6

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 1792
    invoke-virtual {p1, p0, p2}, Lcom/corrodinggames/rts/game/units/ce454;->a(Lcom/corrodinggames/rts/game/units/ce454;F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1796
    invoke-virtual {p0, p1, p2}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1803
    invoke-static {v2, v3, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v7

    .line 1806
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1809
    sub-float v0, v6, v0

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v0, v2

    .line 1823
    cmpg-float v2, v0, v1

    if-lez v2, :cond_0

    .line 1829
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bv()I

    move-result v2

    .line 1830
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bv()I

    move-result v3

    .line 1832
    if-le v2, v3, :cond_17

    .line 1835
    :goto_6
    if-eqz v2, :cond_9

    .line 1838
    int-to-float v2, v2

    div-float v2, v0, v2

    mul-float/2addr v2, p2

    .line 1840
    cmpl-float v3, v2, v0

    if-lez v3, :cond_1c

    .line 1856
    :cond_9
    :goto_7
    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v0, v2

    .line 1858
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a

    .line 1860
    mul-float/2addr v0, v8

    .line 1862
    :cond_a
    cmpl-float v2, v0, v9

    if-lez v2, :cond_b

    .line 1864
    sub-float/2addr v0, v9

    mul-float/2addr v0, v8

    add-float/2addr v0, v9

    .line 1866
    :cond_b
    cmpl-float v2, v0, v10

    if-lez v2, :cond_c

    .line 1868
    sub-float/2addr v0, v10

    mul-float/2addr v0, v8

    add-float/2addr v0, v10

    .line 1870
    :cond_c
    cmpl-float v2, v0, v11

    if-lez v2, :cond_1b

    .line 1872
    sub-float/2addr v0, v11

    mul-float/2addr v0, v8

    add-float/2addr v0, v11

    move v2, v0

    .line 1887
    :goto_8
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bu()F

    move-result v6

    .line 1888
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bu()F

    move-result v5

    .line 1944
    const/4 v0, 0x0

    .line 1945
    instance-of v3, p1, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v3, :cond_d

    move-object v0, p1

    .line 1947
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 1951
    :cond_d
    iget-object v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v4, p1, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    if-ne v3, v4, :cond_1f

    .line 1953
    const/4 v4, 0x0

    .line 1954
    const v3, 0x3fd9999a    # 1.7f

    .line 1958
    if-eqz v0, :cond_1f

    .line 1963
    iget v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v9, 0x43480000    # 200.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_e

    iget v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->Y:F

    const/high16 v9, 0x43480000    # 200.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_f

    .line 1965
    :cond_e
    const/high16 v3, 0x40a00000    # 5.0f

    .line 1970
    :cond_f
    iget-object v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-ne v8, v0, :cond_10

    .line 1973
    mul-float/2addr v5, v3

    .line 1975
    const/4 v4, 0x1

    .line 1978
    :cond_10
    iget-object v8, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-ne v8, p0, :cond_11

    .line 1981
    mul-float/2addr v6, v3

    .line 1983
    const/4 v4, 0x1

    .line 1986
    :cond_11
    if-nez v4, :cond_1f

    .line 1988
    iget-boolean v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_18

    .line 1991
    mul-float/2addr v3, v6

    .line 2013
    :goto_9
    instance-of v4, p1, Lcom/corrodinggames/rts/game/units/bn435;

    if-eqz v4, :cond_12

    .line 2015
    add-float v1, v3, v5

    div-float v1, v3, v1

    .line 2019
    :cond_12
    invoke-static {v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v3

    .line 2022
    invoke-static {v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v4

    .line 2024
    instance-of v5, p1, Lcom/corrodinggames/rts/game/units/bn435;

    if-eqz v5, :cond_13

    .line 2026
    mul-float v5, v1, v2

    .line 2050
    iget v6, p1, Lcom/corrodinggames/rts/game/units/ce454;->cb:F

    mul-float v7, v3, v5

    add-float/2addr v6, v7

    iput v6, p1, Lcom/corrodinggames/rts/game/units/ce454;->cb:F

    .line 2051
    mul-float/2addr v5, v4

    iget v6, p1, Lcom/corrodinggames/rts/game/units/ce454;->cc:F

    add-float/2addr v5, v6

    iput v5, p1, Lcom/corrodinggames/rts/game/units/ce454;->cc:F

    .line 2057
    :cond_13
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v1, v5, v1

    mul-float/2addr v1, v2

    .line 2062
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cb:F

    .line 2063
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    mul-float/2addr v1, v4

    sub-float v1, v2, v1

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cc:F

    .line 2067
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v1

    .line 2068
    iget v1, v1, Lcom/corrodinggames/rts/gameFramework/k1104;->bu:I

    .line 2071
    iput-object p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ab:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2072
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    .line 2074
    if-eqz v0, :cond_0

    .line 2079
    iput-object p0, v0, Lcom/corrodinggames/rts/game/units/bp437;->ab:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2080
    iput v1, v0, Lcom/corrodinggames/rts/game/units/bp437;->ac:I

    .line 2085
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ae:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ae:I

    iget v2, v0, Lcom/corrodinggames/rts/game/units/bp437;->ae:I

    if-ne v1, v2, :cond_0

    .line 2090
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2092
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v1

    .line 2093
    if-eqz v1, :cond_15

    .line 2095
    iget-object v2, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v2, v3, :cond_14

    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v1, v2, :cond_15

    .line 2097
    :cond_14
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 2102
    :cond_15
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 2105
    if-eqz v0, :cond_0

    .line 2107
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v2, Lcom/corrodinggames/rts/game/units/eo735;->a:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v1, v2, :cond_16

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v1, Lcom/corrodinggames/rts/game/units/eo735;->h:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v0, v1, :cond_0

    .line 2109
    :cond_16
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    goto/16 :goto_0

    :cond_17
    move v2, v3

    .line 1832
    goto/16 :goto_6

    .line 1993
    :cond_18
    iget-boolean v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->ag:Z

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v4, :cond_19

    .line 1996
    mul-float/2addr v5, v3

    move v3, v6

    goto/16 :goto_9

    .line 1998
    :cond_19
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1a

    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1a

    .line 2000
    mul-float/2addr v3, v6

    goto/16 :goto_9

    .line 2002
    :cond_1a
    iget v4, v0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1f

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->c:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1f

    .line 2004
    mul-float/2addr v5, v3

    move v3, v6

    goto/16 :goto_9

    :cond_1b
    move v2, v0

    goto/16 :goto_8

    :cond_1c
    move v0, v2

    goto/16 :goto_7

    :cond_1d
    const/4 v0, -0x1

    goto/16 :goto_4

    :cond_1e
    move v1, v0

    goto/16 :goto_1

    :cond_1f
    move v3, v6

    goto/16 :goto_9
.end method
