.method public strictfp i_()Z
    .locals 2

    .line 10122
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 10126
    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->cJ:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->ch()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method
