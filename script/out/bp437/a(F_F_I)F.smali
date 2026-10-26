.method public final strictfp a(FFI)F
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 2355
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v6, v0, p3

    .line 2357
    iget v0, v6, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    .line 2363
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, p2, v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v0

    .line 2364
    cmpl-float v1, v0, v10

    if-nez v1, :cond_0

    .line 2413
    :goto_0
    return v0

    .line 2369
    :cond_0
    invoke-virtual {p0, p3}, Lcom/corrodinggames/rts/game/units/bp437;->r(I)F

    move-result v7

    .line 2371
    cmpg-float v1, v7, v10

    if-gtz v1, :cond_1

    .line 2375
    iget v1, v6, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    invoke-virtual {p0, p3}, Lcom/corrodinggames/rts/game/units/bp437;->c(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v1, p2, v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v1

    .line 2377
    invoke-virtual {p0, p3, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(IF)V

    .line 2379
    sub-float/2addr v0, v1

    goto :goto_0

    .line 2384
    :cond_1
    invoke-virtual {p0, p3}, Lcom/corrodinggames/rts/game/units/bp437;->t(I)F

    move-result v8

    .line 2386
    cmpl-float v1, v0, v10

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2387
    :goto_1
    iget v2, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    div-float v9, v2, v8

    .line 2389
    cmpl-float v2, v0, v10

    if-lez v2, :cond_4

    move v2, v3

    :goto_2
    iget v5, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_5

    move v5, v3

    :goto_3
    if-ne v2, v5, :cond_6

    .line 2391
    :goto_4
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_7

    if-eqz v3, :cond_7

    .line 2393
    iget v2, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    mul-float/2addr v1, v8

    mul-float v3, v8, p1

    invoke-static {v2, v1, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v1

    iput v1, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    .line 2399
    :goto_5
    iget v1, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    mul-float/2addr v1, p1

    .line 2400
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2402
    iput v10, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    move v1, v0

    .line 2407
    :cond_2
    invoke-virtual {p0, p3, v1}, Lcom/corrodinggames/rts/game/units/bp437;->a(IF)V

    .line 2410
    sub-float/2addr v0, v1

    goto :goto_0

    .line 2386
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_4
    move v2, v4

    .line 2389
    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4

    .line 2397
    :cond_7
    iget v2, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    invoke-virtual {p0, p3}, Lcom/corrodinggames/rts/game/units/bp437;->c(I)F

    move-result v3

    mul-float/2addr v1, v3

    mul-float v3, v7, p1

    invoke-static {v2, v1, v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v1

    iput v1, v6, Lcom/corrodinggames/rts/game/units/ch457;->c:F

    goto :goto_5
.end method
