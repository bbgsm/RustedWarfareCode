.method private d()V
    .locals 3

    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->R:Z

    .line 1543
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->r:I

    invoke-static {v0, v1, v2}, Lcom/corrodinggames/rts/gameFramework/f1006;->a(III)I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 1548
    iget-object v1, p0, Lcom/corrodinggames/rts/gameFramework/n/p1300;->P:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1551
    return-void
.end method
