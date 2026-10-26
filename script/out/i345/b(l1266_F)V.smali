.method private strictfp b(Lcom/corrodinggames/rts/gameFramework/m/l1266;F)V
    .locals 8

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 3611
    if-nez p1, :cond_1

    .line 3613
    const-string v0, "drawAll"

    const-string v1, "canvas is null, not may not be available yet"

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/i345;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    :cond_0
    :goto_0
    return-void

    .line 3617
    :cond_1
    sget-boolean v1, Lcom/corrodinggames/rts/game/i345;->aA:Z

    if-nez v1, :cond_0

    .line 3632
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v1, p1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/l1266;)V

    .line 3633
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v2, p0, Lcom/corrodinggames/rts/game/i345;->an:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-interface {v2}, Lcom/corrodinggames/rts/appFramework/ab5;->getRenderer()Lcom/corrodinggames/rts/gameFramework/m/a1108;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/a1108;)V

    .line 3635
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->e()V

    .line 3637
    iget v1, p0, Lcom/corrodinggames/rts/game/i345;->bw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/corrodinggames/rts/game/i345;->bw:I

    .line 3638
    sput v6, Lcom/corrodinggames/rts/gameFramework/m/f1243;->G:F

    .line 3641
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/i345;->dr:Z

    if-eqz v1, :cond_2

    .line 3645
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(I)V

    .line 3646
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const-string v1, "Loading.."

    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->cl:F

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->cm:F

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->dm:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3652
    :cond_2
    iget v2, p0, Lcom/corrodinggames/rts/game/i345;->ck:F

    .line 3653
    cmpl-float v1, v2, v5

    if-eqz v1, :cond_3

    .line 3655
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->g()V

    .line 3656
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v1, v2, v2}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(FF)V

    .line 3661
    :cond_3
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->ae()Z

    move-result v1

    .line 3663
    if-eqz v1, :cond_4

    .line 3665
    const/16 v3, 0x71

    invoke-virtual {p0, v3}, Lcom/corrodinggames/rts/game/i345;->f(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/corrodinggames/rts/game/i345;->f(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v0

    .line 3671
    :cond_4
    if-eqz v1, :cond_d

    .line 3673
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/i345;->aj()Z

    move-result v3

    .line 3675
    if-nez v3, :cond_d

    .line 3681
    :goto_1
    if-eqz v0, :cond_c

    .line 3683
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/game/l348;)V

    .line 3687
    :try_start_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(I)V

    .line 3689
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->d:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3690
    invoke-direct {p0, p2}, Lcom/corrodinggames/rts/game/i345;->c(F)V

    .line 3691
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->d:Lcom/corrodinggames/rts/gameFramework/cg911;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3696
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->b(Lcom/corrodinggames/rts/game/l348;)V

    .line 3699
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/l348;->b()V

    .line 3701
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/l348;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3706
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/i345;->a(Lcom/corrodinggames/rts/game/l348;)V

    .line 3709
    :try_start_1
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/16 v1, 0x80

    const/16 v3, 0x80

    const/16 v4, 0xff

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->b(I)V

    .line 3711
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->I()V

    .line 3715
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(I)I

    move-result v0

    .line 3717
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/corrodinggames/rts/gameFramework/d/c919;->l:Lcom/corrodinggames/rts/gameFramework/m/e1216;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3723
    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/i345;->b(Lcom/corrodinggames/rts/game/l348;)V

    .line 3726
    if-lez v0, :cond_5

    .line 3730
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/l348;->d:Lcom/corrodinggames/rts/gameFramework/m/fo1258;

    const-string v1, "screenBase"

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    iget-object v3, v3, Lcom/corrodinggames/rts/game/l348;->a:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v0, v1, v3}, Lcom/corrodinggames/rts/gameFramework/m/fo1258;->a(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 3731
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/l348;->d:Lcom/corrodinggames/rts/gameFramework/m/fo1258;

    const-string v1, "screenBaseSize"

    iget-object v3, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    iget-object v3, v3, Lcom/corrodinggames/rts/game/l348;->a:Lcom/corrodinggames/rts/gameFramework/m/e1216;

    invoke-virtual {v0, v1, v3}, Lcom/corrodinggames/rts/gameFramework/m/fo1258;->b(Ljava/lang/String;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 3732
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/l348;->d:Lcom/corrodinggames/rts/gameFramework/m/fo1258;

    const-string v1, "u_resolution"

    iget v3, p0, Lcom/corrodinggames/rts/game/i345;->ci:F

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cj:F

    invoke-virtual {v0, v1, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fo1258;->a(Ljava/lang/String;FF)V

    .line 3734
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/l348;->d:Lcom/corrodinggames/rts/gameFramework/m/fo1258;

    const-string v1, "u_offsetBy"

    const v3, 0x3e4ccccd    # 0.2f

    iget v4, p0, Lcom/corrodinggames/rts/game/i345;->cU:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/corrodinggames/rts/gameFramework/m/fo1258;->a(Ljava/lang/String;F)V

    .line 3736
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    iget-object v0, v0, Lcom/corrodinggames/rts/game/l348;->d:Lcom/corrodinggames/rts/gameFramework/m/fo1258;

    const-string v1, "u_uiScaling"

    invoke-virtual {v0, v1, v5}, Lcom/corrodinggames/rts/gameFramework/m/fo1258;->a(Ljava/lang/String;F)V

    .line 3738
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/l348;->b()V

    .line 3764
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->s()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3766
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->f:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3768
    invoke-direct {p0, p2}, Lcom/corrodinggames/rts/game/i345;->d(F)V

    .line 3770
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->f:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3777
    :cond_6
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->showFps:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/corrodinggames/rts/game/i345;->cQ:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cR:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->cP:Z

    if-nez v0, :cond_7

    .line 3779
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->t:Ljava/lang/String;

    const/high16 v3, 0x420c0000    # 35.0f

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v7, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3782
    :cond_7
    sget-object v0, Lcom/corrodinggames/rts/game/i345;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3784
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    sget-object v1, Lcom/corrodinggames/rts/game/i345;->e:Ljava/lang/String;

    const/high16 v3, 0x42aa0000    # 85.0f

    iget-object v4, p0, Lcom/corrodinggames/rts/game/i345;->l:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v7, v3, v4}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3788
    :cond_8
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/i345;->ap:Z

    if-nez v0, :cond_a

    .line 3790
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->c()Lcom/corrodinggames/rts/gameFramework/m/l1266;

    move-result-object v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/corrodinggames/rts/gameFramework/k1104;->aT:Z

    if-eqz v0, :cond_a

    .line 3792
    :cond_9
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bP:Lcom/corrodinggames/rts/gameFramework/f/i988;

    invoke-virtual {v0, p2}, Lcom/corrodinggames/rts/gameFramework/f/i988;->c(F)V

    .line 3795
    :cond_a
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/i345;->s()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3797
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(I)I

    .line 3800
    :cond_b
    invoke-static {}, Lcom/corrodinggames/rts/game/units/custom/j607;->dd()V

    .line 3803
    iget-object v0, p0, Lcom/corrodinggames/rts/game/i345;->bL:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    invoke-interface {v0}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->f()V

    .line 3806
    cmpl-float v0, v2, v5

    if-eqz v0, :cond_0

    .line 3808
    invoke-interface {p1}, Lcom/corrodinggames/rts/gameFramework/m/l1266;->a_()V

    goto/16 :goto_0

    .line 3696
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->J:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/i345;->b(Lcom/corrodinggames/rts/game/l348;)V

    .line 3697
    throw v0

    .line 3723
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/corrodinggames/rts/game/i345;->K:Lcom/corrodinggames/rts/game/l348;

    invoke-direct {p0, v1}, Lcom/corrodinggames/rts/game/i345;->b(Lcom/corrodinggames/rts/game/l348;)V

    .line 3724
    throw v0

    .line 3756
    :cond_c
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->d:Lcom/corrodinggames/rts/gameFramework/cg911;

    .line 3757
    invoke-direct {p0, p2}, Lcom/corrodinggames/rts/game/i345;->c(F)V

    .line 3758
    sget-object v0, Lcom/corrodinggames/rts/gameFramework/cg911;->d:Lcom/corrodinggames/rts/gameFramework/cg911;

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method
