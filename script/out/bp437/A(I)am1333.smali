.method public strictfp A(I)Lcom/corrodinggames/rts/gameFramework/utility/am1333;
    .locals 2

    .line 10630
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bk:Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    invoke-virtual {p0, p1}, Lcom/corrodinggames/rts/game/units/bp437;->B(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->a(Landroid/graphics/PointF;)V

    .line 10631
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bk:Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    const/4 v1, 0x0

    iput v1, v0, Lcom/corrodinggames/rts/gameFramework/utility/am1333;->c:F

    .line 10632
    sget-object v0, Lcom/corrodinggames/rts/game/units/bp437;->bk:Lcom/corrodinggames/rts/gameFramework/utility/am1333;

    return-object v0
.end method
