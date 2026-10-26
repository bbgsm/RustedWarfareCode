.method public final strictfp k(Lcom/corrodinggames/rts/game/units/ce454;)Z
    .locals 5

    const/high16 v1, 0x41300000    # 11.0f

    .line 11198
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    iget v3, p1, Lcom/corrodinggames/rts/game/units/ce454;->eq:F

    iget v4, p1, Lcom/corrodinggames/rts/game/units/ce454;->er:F

    invoke-static {v0, v2, v3, v4}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(FFFF)F

    move-result v2

    .line 11200
    const/high16 v0, 0x41100000    # 9.0f

    .line 11202
    invoke-virtual {p1}, Lcom/corrodinggames/rts/game/units/ce454;->bq()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11204
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cl:F

    iget v3, p1, Lcom/corrodinggames/rts/game/units/ce454;->cl:F

    add-float/2addr v0, v3

    .line 11205
    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    .line 11213
    :cond_0
    mul-float/2addr v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 11215
    const/4 v0, 0x1

    .line 11218
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
