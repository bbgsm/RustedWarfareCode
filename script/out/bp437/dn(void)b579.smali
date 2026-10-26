.method private strictfp dn()Lcom/corrodinggames/rts/game/units/custom/d/b579;
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x42700000    # 60.0f

    .line 12139
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->W()Lcom/corrodinggames/rts/game/units/ce454;

    move-result-object v2

    .line 12142
    if-eqz v2, :cond_2

    .line 12144
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ap()Lcom/corrodinggames/rts/game/units/en734;

    move-result-object v0

    .line 12145
    if-eqz v0, :cond_2

    .line 12147
    iget-object v1, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v3, Lcom/corrodinggames/rts/game/units/eo735;->d:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v1, v3, :cond_0

    .line 12149
    iget v1, v2, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    .line 12151
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/bp437;->a_(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v1

    .line 12152
    invoke-direct {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->t(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v3

    .line 12154
    if-eqz v1, :cond_0

    .line 12156
    mul-float v0, v3, v4

    neg-float v0, v0

    invoke-static {v1, v0}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;F)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    .line 12213
    :goto_0
    return-object v0

    .line 12162
    :cond_0
    iget-object v0, v0, Lcom/corrodinggames/rts/game/units/en734;->a:Lcom/corrodinggames/rts/game/units/eo735;

    sget-object v1, Lcom/corrodinggames/rts/game/units/eo735;->g:Lcom/corrodinggames/rts/game/units/eo735;

    if-ne v0, v1, :cond_2

    .line 12165
    iget v0, v2, Lcom/corrodinggames/rts/game/units/ce454;->co:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 12167
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/bp437;->a_(Lcom/corrodinggames/rts/game/units/ce454;)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    .line 12168
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->Y()F

    move-result v1

    .line 12173
    if-eqz v0, :cond_2

    .line 12175
    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;F)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    goto :goto_0

    .line 12182
    :cond_1
    invoke-static {v2}, Lcom/corrodinggames/rts/game/units/bp437;->o(Lcom/corrodinggames/rts/game/units/ce454;)Z

    move-result v0

    .line 12184
    if-eqz v0, :cond_2

    .line 12186
    invoke-virtual {p0, v2}, Lcom/corrodinggames/rts/game/units/bp437;->p(Lcom/corrodinggames/rts/game/units/ce454;)F

    move-result v3

    .line 12188
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->cp()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v1

    .line 12191
    invoke-virtual {v2}, Lcom/corrodinggames/rts/game/units/ce454;->cq()Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    .line 12192
    if-eqz v0, :cond_3

    .line 12197
    :goto_1
    mul-float v1, v3, v4

    iget v2, v2, Lcom/corrodinggames/rts/game/units/ce454;->cx:F

    div-float/2addr v1, v2

    .line 12201
    invoke-static {v0, v1}, Lcom/corrodinggames/rts/game/units/custom/d/b579;->a(Lcom/corrodinggames/rts/game/units/custom/d/b579;F)Lcom/corrodinggames/rts/game/units/custom/d/b579;

    move-result-object v0

    goto :goto_0

    .line 12213
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
