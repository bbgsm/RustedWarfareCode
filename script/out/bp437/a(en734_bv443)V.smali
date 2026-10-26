.method private strictfp a(Lcom/corrodinggames/rts/game/units/en734;Lcom/corrodinggames/rts/game/units/bv443;)V
    .locals 13

    const/4 v6, 0x0

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2526
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/en734;->d()F

    move-result v7

    .line 2527
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/en734;->e()F

    move-result v8

    .line 2528
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v9

    .line 2532
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v1, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v1, Lcom/corrodinggames/rts/game/units/eo735;->n:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v0, v1, :cond_12

    :cond_0
    move v1, v3

    .line 2533
    :goto_0
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v4, Lcom/corrodinggames/rts/game/units/eo735;->k:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v0, v4, :cond_13

    move v4, v3

    .line 2535
    :goto_1
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    .line 2537
    if-eqz v1, :cond_3

    .line 2539
    if-eqz v0, :cond_1

    iget-boolean v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-eqz v5, :cond_2

    .line 2541
    :cond_1
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    move-object p1, v6

    .line 2545
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 2547
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/ce454;->bL()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2549
    iget-object v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->bZ:Lcom/corrodinggames/rts/game/p352;

    iget-object v10, v0, Lcom/corrodinggames/rts/game/units/ce454;->bZ:Lcom/corrodinggames/rts/game/p352;

    invoke-virtual {v5, v10}, Lcom/corrodinggames/rts/game/p352;->b(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2551
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    move-object p1, v6

    .line 2560
    :cond_3
    if-eqz p1, :cond_11

    .line 2564
    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    .line 2566
    if-eqz v1, :cond_1f

    .line 2568
    iget v1, v0, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v1, v5

    .line 2571
    :goto_2
    iget-object v5, p1, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v10, Lcom/corrodinggames/rts/game/units/eo735;->n:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v5, v10, :cond_15

    .line 2574
    iget-boolean v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    if-eqz v5, :cond_14

    .line 2576
    const/high16 v5, 0x41f00000    # 30.0f

    add-float/2addr v1, v5

    .line 2596
    :goto_3
    mul-float/2addr v1, v1

    cmpl-float v1, v9, v1

    if-lez v1, :cond_17

    .line 2598
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 2599
    iput v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 2600
    iput v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 2604
    const/4 v1, 0x2

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 2607
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_4

    iput v11, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 2609
    :cond_4
    const/16 v1, 0x12

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->p:I

    .line 2623
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_5

    .line 2625
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->af:Lcom/corrodinggames/rts/game/units/bp437;

    invoke-virtual {v1}, Lcom/corrodinggames/rts/game/units/bp437;->by()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2627
    iput-boolean v2, p2, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 2637
    :cond_5
    :goto_4
    iput-boolean v2, p2, Lcom/corrodinggames/rts/game/units/bv443;->d:Z

    .line 2646
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget-boolean v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v1, :cond_1a

    .line 2654
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {p0, v1, v2}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v3

    .line 2660
    :goto_5
    if-eqz v1, :cond_1a

    .line 2668
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget-object v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v7, v7, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget-object v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v8, v8, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v1, v5, v7, v8}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v1

    .line 2670
    iget-object v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-direct {p0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->v(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v5

    .line 2675
    mul-float/2addr v5, v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1d

    move v1, v3

    .line 2680
    :goto_6
    if-eqz v1, :cond_1c

    .line 2682
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->Z()Z

    move-result v5

    if-nez v5, :cond_1c

    move v5, v2

    .line 2688
    :goto_7
    const v1, 0x46afc800    # 22500.0f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_6

    .line 2690
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    .line 2693
    :cond_6
    if-nez v5, :cond_1b

    .line 2695
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    if-eq v1, v3, :cond_7

    const v1, 0x47ef4200    # 122500.0f

    cmpl-float v1, v9, v1

    if-lez v1, :cond_1b

    .line 2698
    :cond_7
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    move v1, v3

    .line 2703
    :goto_8
    const v7, 0x4893b480    # 302500.0f

    cmpl-float v7, v9, v7

    if-gtz v7, :cond_8

    iget v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    if-ne v7, v3, :cond_9

    const v7, 0x4845c100    # 202500.0f

    cmpl-float v7, v9, v7

    if-lez v7, :cond_9

    .line 2706
    :cond_8
    iput v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    move v1, v3

    .line 2710
    :cond_9
    if-nez v1, :cond_1a

    .line 2714
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    .line 2720
    if-eqz v5, :cond_18

    .line 2722
    iput-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    move v1, v3

    .line 2766
    :goto_9
    if-eqz v4, :cond_d

    if-nez v1, :cond_d

    .line 2770
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v5}, Lcom/corrodinggames/rts/game/units/ce454;->o(F)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v5

    .line 2771
    if-eqz v5, :cond_a

    .line 2773
    invoke-virtual {p0, v5, v3}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v7

    if-nez v7, :cond_a

    move-object v5, v6

    .line 2779
    :cond_a
    if-nez v5, :cond_b

    iget v7, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    if-eq v7, v3, :cond_b

    .line 2781
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, v5}, Lcom/corrodinggames/rts/game/units/bp437;->o(F)Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v5

    .line 2783
    if-eqz v5, :cond_b

    .line 2785
    invoke-virtual {p0, v5, v3}, Lcom/corrodinggames/rts/game/units/bp437;->b(Lcom/corrodinggames/rts/game/units/ce454;Z)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v5, v6

    .line 2793
    :cond_b
    if-eqz v5, :cond_d

    .line 2804
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_c

    iput v11, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 2807
    :cond_c
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 2808
    iget v1, v5, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 2809
    iget v1, v5, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 2810
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 2812
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    move v1, v3

    .line 2823
    :cond_d
    if-eqz v4, :cond_10

    if-nez v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2827
    iget v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->cw:F

    iget v5, v0, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_e

    iget v2, v0, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_10

    .line 2830
    :cond_e
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2832
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->am()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v2

    .line 2833
    if-eqz v2, :cond_10

    .line 2835
    invoke-virtual {v2, v0}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 2837
    iput-boolean v3, v2, Lcom/corrodinggames/rts/game/units/en734;->m:Z

    .line 2841
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v1, v1, v12

    if-lez v1, :cond_f

    iput v12, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    :cond_f
    move v1, v3

    .line 2853
    :cond_10
    if-eqz v4, :cond_11

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ai()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2856
    instance-of v1, v0, Lcom/corrodinggames/rts/game/units/bp437;

    if-eqz v1, :cond_11

    .line 2858
    check-cast v0, Lcom/corrodinggames/rts/game/units/bp437;

    .line 2860
    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/units/bp437;->W()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v0

    .line 2862
    if-eqz v0, :cond_11

    .line 2864
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2867
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->am()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v1

    .line 2868
    if-eqz v1, :cond_11

    .line 2870
    invoke-virtual {v1, v0}, Lcom/corrodinggames/rts/game/units/en734;->b(Lcom/corrodinggames/rts/game/units/ce454;)V

    .line 2872
    iput-boolean v3, v1, Lcom/corrodinggames/rts/game/units/en734;->m:Z

    .line 2876
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_11

    iput v12, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 2894
    :cond_11
    return-void

    :cond_12
    move v1, v2

    .line 2532
    goto/16 :goto_0

    :cond_13
    move v4, v2

    .line 2533
    goto/16 :goto_1

    .line 2580
    :cond_14
    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v1, v5

    goto/16 :goto_3

    .line 2586
    :cond_15
    iget-boolean v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->cM:Z

    if-eqz v5, :cond_16

    .line 2588
    const/high16 v5, 0x42a00000    # 80.0f

    add-float/2addr v1, v5

    goto/16 :goto_3

    .line 2592
    :cond_16
    const/high16 v5, 0x42c80000    # 100.0f

    add-float/2addr v1, v5

    goto/16 :goto_3

    .line 2633
    :cond_17
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->u:I

    goto/16 :goto_4

    .line 2727
    :cond_18
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_19

    iput v11, p0, Lcom/corrodinggames/rts/game/units/bp437;->q:F

    .line 2731
    :cond_19
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->i:Z

    .line 2732
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->j:F

    .line 2733
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->T:Lcom/corrodinggames/rts/game/units/ce454;

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    iput v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->k:F

    .line 2734
    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->l:I

    .line 2739
    iput-boolean v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->h:Z

    move v1, v3

    goto/16 :goto_9

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v2

    goto/16 :goto_8

    :cond_1c
    move v5, v1

    goto/16 :goto_7

    :cond_1d
    move v1, v2

    goto/16 :goto_6

    :cond_1e
    move v1, v2

    goto/16 :goto_5

    :cond_1f
    move v1, v5

    goto/16 :goto_2
.end method
