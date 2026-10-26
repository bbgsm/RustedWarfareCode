.method private strictfp b(FFF)F
    .locals 4

    const/4 v0, 0x0

    .line 2147
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->bq()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2180
    :cond_0
    :goto_0
    return v0

    .line 2153
    :cond_1
    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    invoke-static {v0, v1, p2, p3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v0

    .line 2154
    invoke-virtual {p0, p1, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(FF)F

    move-result v0

    goto :goto_0

    .line 2158
    :cond_2
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aU()I

    move-result v1

    if-lez v1, :cond_0

    .line 2165
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->aG()I

    move-result v0

    .line 2166
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2168
    const/4 v0, 0x0

    .line 2172
    :cond_3
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->B(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 2174
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1, p2, p3}, Lcom/corrodinggames/rts/gameFramework/f1006;->d(FFFF)F

    move-result v1

    .line 2176
    iget-object v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v2, v2, v0

    .line 2178
    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/corrodinggames/rts/game/units/ch457;->a(I)V

    .line 2180
    invoke-virtual {p0, p1, v1, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(FFI)F

    move-result v0

    goto :goto_0
.end method
