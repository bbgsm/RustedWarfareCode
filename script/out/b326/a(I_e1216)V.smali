.method private static strictfp a(ILcom/corrodinggames/rts/gameFramework/m/e1216;)V
    .locals 4

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 683
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 684
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 686
    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    invoke-static {p0, v0}, Lcom/corrodinggames/rts/game/b/b326;->a(ILandroid/graphics/Rect;)V

    .line 696
    sget-object v2, Lcom/corrodinggames/rts/game/b/b326;->M:Lcom/corrodinggames/rts/gameFramework/m/fi1252;

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v0, v3}, Lcom/corrodinggames/rts/game/b/j334;->a(Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 705
    return-void
.end method
