.method private strictfp a(FLcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/units/bv443;Z)V
    .locals 11

    const v10, 0x473d1000    # 48400.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3667
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aO()I

    move-result v3

    .line 3669
    iget v4, p2, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 3670
    iget v5, p2, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 3671
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v6, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v6

    .line 3673
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v0, :cond_d

    .line 3676
    const v0, 0x48ef4200    # 490000.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    .line 3678
    cmpg-float v0, v6, v10

    if-gez v0, :cond_0

    .line 3680
    iput-boolean v1, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3684
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v0, v0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget-object v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget v7, v7, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v7, v4, v5}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v0

    .line 3685
    cmpg-float v7, v0, v10

    if-gez v7, :cond_1

    .line 3687
    iput-boolean v1, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3690
    :cond_1
    const v7, 0x48840800    # 270400.0f

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3692
    iput-boolean v1, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3697
    :cond_2
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-ne v0, p2, :cond_3

    .line 3699
    iput-boolean v1, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 3703
    :cond_3
    iget-boolean v0, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    if-eqz v0, :cond_c

    .line 3705
    const/4 v0, 0x0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    .line 3719
    :goto_0
    invoke-direct {p0, p2}, Lcom/corrodinggames/rts/game/units/bp437;->v(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v0

    .line 3722
    mul-float v7, v0, v0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_11

    .line 3724
    iget-object v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eq v7, p2, :cond_e

    .line 3726
    invoke-static {p0, p2}, Lcom/corrodinggames/rts/game/units/ci458;->a(Lcom/corrodinggames/rts/game/units/bp437;Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3728
    iput-object p2, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    .line 3729
    iput v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    .line 3730
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/corrodinggames/rts/game/units/bp437;->H(I)V

    .line 3740
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->D()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3742
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v0, v7

    .line 3745
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3747
    const/high16 v7, 0x40000000    # 2.0f

    sub-float/2addr v0, v7

    .line 3751
    :cond_5
    invoke-virtual {p0, v1}, Lcom/corrodinggames/rts/game/units/bp437;->e(I)F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 3753
    const/high16 v7, 0x40400000    # 3.0f

    sub-float/2addr v0, v7

    .line 3758
    :cond_6
    mul-float/2addr v0, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_11

    .line 3760
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aO()I

    move-result v0

    sget v7, Lcom/corrodinggames/rts/game/units/b421;->d:I

    if-eq v0, v7, :cond_11

    .line 3762
    if-nez p2, :cond_f

    move v0, v1

    .line 3787
    :goto_2
    if-eqz v0, :cond_b

    .line 3791
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 3792
    iput v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 3793
    iput v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 3795
    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 3797
    sget v0, Lcom/corrodinggames/rts/game/units/b421;->d:I

    if-ne v3, v0, :cond_7

    .line 3799
    invoke-direct {p0, v6, v4, v5}, Lcom/corrodinggames/rts/game/units/bp437;->c(FFF)V

    .line 3815
    :cond_7
    invoke-virtual {p0, p2}, Lcom/corrodinggames/rts/game/units/bp437;->j(Lcom/corrodinggames/rts/game/units/ce454;)I

    move-result v0

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 3817
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_8

    iput v9, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 3819
    :cond_8
    const v0, 0x4945c100    # 810000.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_b

    .line 3822
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bU()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aI()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3824
    :cond_9
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 3827
    :cond_a
    iget-boolean v0, p3, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 3829
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 3830
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    .line 3836
    :cond_b
    return-void

    .line 3709
    :cond_c
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    goto/16 :goto_0

    .line 3715
    :cond_d
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ak:F

    goto/16 :goto_0

    .line 3735
    :cond_e
    iput v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->U:F

    goto/16 :goto_1

    .line 3766
    :cond_f
    invoke-virtual {p0, p2}, Lcom/corrodinggames/rts/game/units/bp437;->e(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3770
    if-eqz p4, :cond_12

    .line 3772
    iput-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    move v0, v1

    goto :goto_2

    .line 3778
    :cond_10
    invoke-direct {p0, p2}, Lcom/corrodinggames/rts/game/units/bp437;->u(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 3780
    goto :goto_2

    :cond_11
    move v0, v2

    goto :goto_2

    :cond_12
    move v0, v1

    goto :goto_2
.end method
