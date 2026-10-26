.method public final strictfp a(Lcom/corrodinggames/rts/game/units/ce454;Lcom/corrodinggames/rts/game/p352;)Z
    .locals 13

    .line 11223
    const/4 v0, 0x0

    .line 11227
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11229
    const/4 v0, 0x1

    .line 11232
    :cond_0
    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    sget v2, Lcom/corrodinggames/rts/game/units/custom/ag500;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v2, v1

    .line 11245
    iget v3, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 11246
    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    .line 11247
    iget v5, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 11248
    iget v6, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    .line 11250
    sget-object v1, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    .line 52550
    iget-object v7, v1, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->c:[Lcom/corrodinggames/rts/game/units/ce454;

    .line 11251
    const/4 v1, 0x0

    sget-object v8, Lcom/corrodinggames/rts/game/units/ce454;->bG:Lcom/corrodinggames/rts/gameFramework/utility/x1359;

    invoke-virtual {v8}, Lcom/corrodinggames/rts/gameFramework/utility/x1359;->size()I

    move-result v8

    :goto_0
    if-ge v1, v8, :cond_4

    .line 11253
    aget-object v9, v7, v1

    .line 11255
    iget v10, v9, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    .line 11256
    iget v11, v9, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    .line 11258
    sub-float v12, v3, v2

    cmpg-float v12, v12, v10

    if-gtz v12, :cond_3

    add-float v12, v4, v2

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_3

    sub-float v10, v5, v2

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_3

    add-float v10, v6, v2

    cmpg-float v10, v11, v10

    if-gtz v10, :cond_3

    .line 11260
    if-eq v9, p0, :cond_3

    .line 11263
    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 11265
    :cond_1
    iget-boolean v10, v9, Lcom/corrodinggames/rts/game/units/ce454;->bX:Z

    if-nez v10, :cond_3

    .line 11267
    invoke-virtual {p0, v9}, Lcom/corrodinggames/rts/game/units/bp437;->k(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 11269
    if-eq v9, p1, :cond_3

    .line 11272
    if-eqz p2, :cond_2

    .line 11274
    invoke-virtual {v9, p2}, Lcom/corrodinggames/rts/game/units/ce454;->d(Lcom/corrodinggames/rts/game/p352;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11280
    :cond_2
    const/4 v0, 0x1

    .line 11291
    :goto_1
    return v0

    .line 11251
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11291
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
