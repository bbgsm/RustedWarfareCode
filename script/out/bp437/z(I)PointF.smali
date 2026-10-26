.method public strictfp z(I)Landroid/graphics/PointF;
    .locals 6

    .line 10609
    iget-object v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->cN:[Lcom/corrodinggames/rts/game/units/ch457;

    aget-object v0, v0, p1

    .line 10611
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->g(I)F

    move-result v1

    .line 10612
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/corrodinggames/rts/game/units/bp437;->ci:F

    .line 10614
    :goto_0
    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->B(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 10616
    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->k(F)F

    move-result v4

    .line 10617
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/f1006;->j(F)F

    move-result v0

    .line 10619
    sget-object v5, Lcom/corrodinggames/rts/game/units/bp437;->bi:Landroid/graphics/PointF;

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-virtual {v5, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 10620
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bi:Landroid/graphics/PointF;

    return-object v0

    .line 10612
    :cond_0
    iget v0, v0, Lcom/corrodinggames/rts/game/units/ch457;->a:F

    goto :goto_0
.end method
