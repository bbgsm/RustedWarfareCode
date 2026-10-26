.method final strictfp l(F)Landroid/graphics/PointF;
    .locals 5

    .line 11395
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->m(F)Landroid/graphics/PointF;

    move-result-object v0

    .line 11397
    sget-object v1, Lcom/corrodinggames/rts/game/units/bp437;->dG:Landroid/graphics/PointF;

    iget v2, p0, Lcom/corrodinggames/rts/game/units/bp437;->eq:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/corrodinggames/rts/game/units/bp437;->er:F

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 11403
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->dG:Landroid/graphics/PointF;

    return-object v0
.end method
