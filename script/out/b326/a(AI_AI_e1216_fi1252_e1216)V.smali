.method private static strictfp a([I[ILcom/corrodinggames/rts/gameFramework/m/e1216;Lcom/corrodinggames/rts/gameFramework/m/fi1252;Lcom/corrodinggames/rts/gameFramework/m/e1216;)V
    .locals 11

    const/16 v0, 0x14

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 562
    invoke-interface {p3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->m()V

    .line 565
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 566
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 568
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 569
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 574
    invoke-virtual {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move v0, v1

    .line 624
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 626
    add-int/lit8 v6, v0, 0x0

    aget v6, p1, v6

    mul-int/lit8 v6, v6, 0x14

    .line 627
    add-int/lit8 v7, v0, 0x1

    aget v7, p1, v7

    mul-int/lit8 v7, v7, 0x14

    .line 628
    add-int/lit8 v8, v6, 0x14

    add-int/lit8 v9, v7, 0x14

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 632
    invoke-interface {p3, p4, v3, v2, v10}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 636
    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 637
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 638
    invoke-interface {p3, p4, v5, v4, v10}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 640
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, -0x1

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 641
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 642
    invoke-interface {p3, p4, v5, v4, v10}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->a(Lcom/corrodinggames/rts/gameFramework/m/e1216;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 624
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 653
    :cond_0
    invoke-interface {p3}, Lcom/corrodinggames/rts/gameFramework/m/fi1252;->n()V

    .line 660
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 673
    aget v0, p0, v1

    .line 675
    add-int/lit16 v0, v0, 0x80

    invoke-static {v0, p2}, Lcom/corrodinggames/rts/game/b/b326;->a(ILcom/corrodinggames/rts/gameFramework/m/e1216;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 679
    :cond_1
    return-void
.end method
