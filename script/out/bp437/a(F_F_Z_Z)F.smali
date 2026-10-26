.method public final strictfp a(FFZZ)F
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const v6, 0x3c23d70a    # 0.01f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2214
    iput p2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cj:F

    .line 2218
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    .line 2220
    if-eqz p3, :cond_0

    .line 2222
    iget-boolean v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v1, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->b()V

    .line 2225
    iput-boolean v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    .line 2298
    :cond_0
    :goto_0
    return v0

    .line 2231
    :cond_1
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    invoke-static {v1, p2, v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v1

    .line 2233
    if-eqz p3, :cond_2

    .line 2235
    if-eqz p4, :cond_4

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 2237
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v4, p2

    invoke-static {v1, v4, v7}, Lcom/corrodinggames/rts/gameFramework/f1006;->c(FFF)F

    move-result v1

    .line 2239
    iget-boolean v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-nez v4, :cond_2

    .line 2241
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->b()V

    .line 2242
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    .line 2254
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    .line 2258
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->aB:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_a

    .line 2260
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->A()F

    move-result v4

    .line 2262
    cmpg-float v5, v4, v0

    if-gtz v5, :cond_6

    .line 2265
    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    move v0, v3

    .line 2267
    :goto_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->z()F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    .line 2269
    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v2

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move v0, v1

    .line 2274
    :cond_3
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->i(F)V

    move v0, v1

    goto :goto_0

    .line 2247
    :cond_4
    iget-boolean v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    if-eqz v4, :cond_2

    .line 2249
    invoke-direct {p0}, Lcom/corrodinggames/rts/game/units/bp437;->b()V

    .line 2250
    iput-boolean v8, p0, Lcom/corrodinggames/rts/game/units/bp437;->ck:Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 2265
    goto :goto_2

    .line 2278
    :cond_6
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    move v2, v3

    .line 2279
    :cond_7
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    invoke-static {v3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    div-float/2addr v3, v4

    .line 2280
    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v5

    cmpg-float v3, v5, v3

    if-gez v3, :cond_8

    .line 2282
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    mul-float/2addr v2, v4

    mul-float/2addr v4, p1

    invoke-static {v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v2

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    .line 2288
    :goto_3
    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    mul-float/2addr v2, p1

    .line 2289
    invoke-static {v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v3

    invoke-static {v1}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 2291
    iput v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    move v0, v1

    .line 2294
    :goto_4
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->i(F)V

    move v0, v1

    goto/16 :goto_0

    .line 2286
    :cond_8
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->z()F

    move-result v5

    mul-float/2addr v2, v5

    mul-float/2addr v4, p1

    invoke-static {v3, v2, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFF)F

    move-result v2

    iput v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cg:F

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method
