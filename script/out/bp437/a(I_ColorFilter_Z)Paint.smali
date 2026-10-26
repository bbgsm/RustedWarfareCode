.method public final strictfp a(ILandroid/graphics/ColorFilter;Z)Landroid/graphics/Paint;
    .locals 3

    const/4 v1, -0x1

    .line 838
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    .line 840
    if-eqz p3, :cond_1

    .line 842
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->C:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 919
    :cond_0
    :goto_0
    return-object v0

    .line 846
    :cond_1
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->B:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    goto :goto_0

    .line 850
    :cond_2
    iget-boolean v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cr:Z

    if-eqz v0, :cond_8

    .line 852
    if-nez p2, :cond_5

    .line 854
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->z:Landroid/graphics/Paint;

    .line 856
    sget v1, Lcom/corrodinggames/rts/game/units/bp437;->A:I

    .line 857
    sput p1, Lcom/corrodinggames/rts/game/units/bp437;->A:I

    .line 909
    :cond_3
    :goto_1
    if-eq v1, p1, :cond_4

    .line 911
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 914
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-eq v1, p2, :cond_0

    .line 916
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 863
    :cond_5
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->z:Landroid/graphics/Paint;

    .line 866
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->bb:Landroid/graphics/PorterDuffColorFilter;

    if-ne p2, v2, :cond_6

    .line 868
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->be:Landroid/graphics/Paint;

    .line 870
    :cond_6
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->ba:Landroid/graphics/PorterDuffColorFilter;

    if-ne p2, v2, :cond_7

    .line 872
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bd:Landroid/graphics/Paint;

    .line 874
    :cond_7
    sget-object v2, Lcom/corrodinggames/rts/game/units/bp437;->bc:Landroid/graphics/PorterDuffColorFilter;

    if-ne p2, v2, :cond_3

    .line 876
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bf:Landroid/graphics/Paint;

    goto :goto_1

    .line 885
    :cond_8
    if-eqz p3, :cond_a

    .line 887
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->x:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    if-nez v0, :cond_9

    .line 889
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/bp437;->d(Z)Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->x:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 892
    :cond_9
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->x:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 893
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->y:I

    .line 894
    iput p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->y:I

    goto :goto_1

    .line 898
    :cond_a
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->v:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    if-nez v0, :cond_b

    .line 900
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/corrodinggames/rts/game/units/bp437;->d(Z)Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->v:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 903
    :cond_b
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->v:Lcom/corrodinggames/rts/gameFramework/m/fq1260;

    .line 904
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->w:I

    .line 905
    iput p1, p0, Lcom/corrodinggames/rts/game/units/bp437;->w:I

    goto :goto_1
.end method
