.method public final strictfp a(Lcom/corrodinggames/rts/game/units/bt441;Z)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3d8f5c29    # 0.07f

    const v1, -0x4270a3d7    # -0.07f

    const v2, 0x3f4ccccd    # 0.8f

    .line 10775
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v6

    .line 10777
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->h:Lcom/corrodinggames/rts/game/units/bt441;

    if-ne p1, v0, :cond_4

    .line 10779
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/a/e788;->p:Lcom/corrodinggames/rts/gameFramework/a/i792;

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Lcom/corrodinggames/rts/gameFramework/a/i792;FFF)V

    .line 10781
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(FFF)V

    .line 10784
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/d/h924;->e:Lcom/corrodinggames/rts/gameFramework/d/h924;

    .line 52473
    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/d/c919;->t:Lcom/corrodinggames/rts/gameFramework/d/h924;

    .line 10785
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const v4, -0x113334

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/d/c919;->c(FFFI)Lcom/corrodinggames/rts/gameFramework/d/e921;

    move-result-object v0

    .line 10786
    if-eqz v0, :cond_0

    .line 10788
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->G:F

    .line 10789
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->F:F

    .line 10790
    const/4 v1, 0x2

    iput-short v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->ar:S

    .line 10791
    const/high16 v1, 0x42340000    # 45.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    .line 10792
    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->W:F

    .line 10794
    iput v7, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->U:F

    .line 10854
    :cond_0
    :goto_0
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->a:Lcom/corrodinggames/rts/game/units/bt441;

    if-eq p1, v0, :cond_3

    .line 10856
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->g:Lcom/corrodinggames/rts/game/units/bt441;

    if-eq p1, v0, :cond_1

    .line 10858
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/d/c919;->d(FFFI)Lcom/corrodinggames/rts/gameFramework/d/e921;

    move-result-object v0

    .line 10859
    if-eqz v0, :cond_1

    .line 10861
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->E:F

    .line 10865
    :cond_1
    if-eqz p2, :cond_3

    .line 10867
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10869
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aX()V

    .line 10872
    :cond_2
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->g:Lcom/corrodinggames/rts/game/units/bt441;

    if-eq p1, v0, :cond_3

    .line 10874
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->cn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10876
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/f922;->a(FF)Lcom/corrodinggames/rts/gameFramework/d/f922;

    .line 10878
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/gameFramework/d/f922;->b(FF)Lcom/corrodinggames/rts/gameFramework/d/f922;

    .line 10880
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aZ()V

    .line 10888
    :cond_3
    return-void

    .line 10804
    :cond_4
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->d:Lcom/corrodinggames/rts/game/units/bt441;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->f:Lcom/corrodinggames/rts/game/units/bt441;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->g:Lcom/corrodinggames/rts/game/units/bt441;

    if-ne p1, v0, :cond_6

    .line 10806
    :cond_5
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/a/e788;->p:Lcom/corrodinggames/rts/gameFramework/a/i792;

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Lcom/corrodinggames/rts/gameFramework/a/i792;FFF)V

    .line 10808
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/d/c919;->a(FFF)V

    goto :goto_0

    .line 10810
    :cond_6
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->a:Lcom/corrodinggames/rts/game/units/bt441;

    if-ne p1, v0, :cond_7

    .line 10812
    invoke-static {v1, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FF)F

    move-result v3

    .line 10814
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/a/e788;->o:Lcom/corrodinggames/rts/gameFramework/a/i792;

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Lcom/corrodinggames/rts/gameFramework/a/i792;FFFF)V

    .line 10816
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/d/c919;->b(FFF)Lcom/corrodinggames/rts/gameFramework/d/e921;

    goto/16 :goto_0

    .line 10821
    :cond_7
    sget-object v0, Lcom/corrodinggames/rts/game/units/bt441;->e:Lcom/corrodinggames/rts/game/units/bt441;

    if-ne p1, v0, :cond_8

    .line 10823
    invoke-static {v1, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FF)F

    move-result v3

    .line 10825
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/a/e788;->o:Lcom/corrodinggames/rts/gameFramework/a/i792;

    add-float/2addr v3, v4

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Lcom/corrodinggames/rts/gameFramework/a/i792;FFFF)V

    .line 10827
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/d/c919;->b(FFF)Lcom/corrodinggames/rts/gameFramework/d/e921;

    .line 10831
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/d/h924;->e:Lcom/corrodinggames/rts/gameFramework/d/h924;

    .line 52475
    iput-object v1, v0, Lcom/corrodinggames/rts/gameFramework/d/c919;->t:Lcom/corrodinggames/rts/gameFramework/d/h924;

    .line 10832
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const v4, -0x113334

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/d/c919;->c(FFFI)Lcom/corrodinggames/rts/gameFramework/d/e921;

    move-result-object v0

    .line 10833
    if-eqz v0, :cond_0

    .line 10835
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->G:F

    .line 10836
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->F:F

    .line 10837
    const/4 v1, 0x2

    iput-short v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->ar:S

    .line 10838
    const/high16 v1, 0x42340000    # 45.0f

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    .line 10839
    iget v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->V:F

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->W:F

    .line 10841
    iput v7, v0, Lcom/corrodinggames/rts/gameFramework/d/e921;->U:F

    goto/16 :goto_0

    .line 10847
    :cond_8
    invoke-static {v1, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FF)F

    move-result v3

    .line 10849
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bJ:Lcom/corrodinggames/rts/gameFramework/a/e788;

    sget-object v1, Lcom/corrodinggames/rts/gameFramework/a/e788;->o:Lcom/corrodinggames/rts/gameFramework/a/i792;

    add-float/2addr v3, v4

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-virtual/range {v0 .. v5}, Lcom/corrodinggames/rts/gameFramework/a/e788;->a(Lcom/corrodinggames/rts/gameFramework/a/i792;FFFF)V

    .line 10851
    iget-object v0, v6, Lcom/corrodinggames/rts/gameFramework/k1104;->bO:Lcom/corrodinggames/rts/gameFramework/d/c919;

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/corrodinggames/rts/gameFramework/d/c919;->b(FFF)Lcom/corrodinggames/rts/gameFramework/d/e921;

    goto/16 :goto_0
.end method
