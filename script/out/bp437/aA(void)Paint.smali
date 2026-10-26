.method public strictfp aA()Landroid/graphics/Paint;
    .locals 9

    const/16 v8, 0x46

    const/16 v7, 0x32

    const/16 v6, 0x64

    const/16 v5, 0x14

    const/16 v4, 0xff

    .line 9545
    const/4 v0, 0x0

    .line 9548
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    const v2, -0x41666666    # -0.3f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 9550
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->es:F

    invoke-static {v1}, Lcom/corrodinggames/rts/game/units/bp437;->k(F)I

    move-result v1

    .line 9560
    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9567
    :goto_0
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->co:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->co:F

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->az()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 9569
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->co:F

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->az()F

    move-result v1

    div-float/2addr v0, v1

    .line 9571
    const/high16 v1, 0x435c0000    # 220.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9573
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->aZ:Landroid/graphics/PorterDuffColorFilter;

    .line 9576
    :cond_0
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cr:Z

    if-eqz v2, :cond_4

    .line 9579
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cu:Z

    if-eqz v2, :cond_1

    .line 9581
    const/16 v0, 0xc8

    invoke-static {v0, v5, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9582
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->ba:Landroid/graphics/PorterDuffColorFilter;

    .line 9585
    :cond_1
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cv:Z

    if-eqz v2, :cond_2

    .line 9587
    const/16 v0, 0xc8

    invoke-static {v0, v4, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9588
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bb:Landroid/graphics/PorterDuffColorFilter;

    .line 9591
    :cond_2
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cs:Z

    if-eqz v2, :cond_3

    .line 9593
    const/16 v0, 0xf5

    invoke-static {v7, v8, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9594
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bc:Landroid/graphics/PorterDuffColorFilter;

    .line 9596
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cv:Z

    if-eqz v2, :cond_3

    .line 9598
    invoke-static {v7, v4, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9599
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bb:Landroid/graphics/PorterDuffColorFilter;

    .line 9604
    :cond_3
    iget-boolean v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->ct:Z

    if-eqz v2, :cond_4

    .line 9606
    const/16 v1, 0x96

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 9611
    :cond_4
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->di()Z

    move-result v2

    .line 9614
    invoke-virtual {p0, v1, v0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->a(ILandroid/graphics/ColorFilter;Z)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0

    .line 9564
    :cond_5
    const/4 v1, -0x1

    goto :goto_0
.end method
