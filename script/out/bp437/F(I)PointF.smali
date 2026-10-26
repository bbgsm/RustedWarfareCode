.method public strictfp F(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x0

    .line 10705
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bl:Landroid/graphics/PointF;

    .line 10707
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 10709
    iget-object v1, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v1, v1, p1

    .line 10711
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Lcom/corrodinggames/rts/game/units/ch457;->h:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 10712
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/corrodinggames/rts/game/units/ch457;->i:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 10717
    return-object v0
.end method
