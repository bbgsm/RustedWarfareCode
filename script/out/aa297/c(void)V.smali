.method public final c()V
    .locals 2

    const/4 v1, 0x0

    .line 727
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/a/aa297;->b(Z)Lcom/corrodinggames/rts/game/a/v319;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    .line 735
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    if-nez v0, :cond_0

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corrodinggames/rts/game/a/aa297;->b(Z)Lcom/corrodinggames/rts/game/a/v319;

    move-result-object v0

    iput-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/a/v319;->i()Landroid/graphics/PointF;

    move-result-object v0

    .line 747
    :goto_0
    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->R:Lcom/corrodinggames/rts/game/a/a296;

    invoke-virtual {v0}, Lcom/corrodinggames/rts/game/a/a296;->V()Landroid/graphics/PointF;

    move-result-object v0

    .line 750
    iput-object v1, p0, Lcom/corrodinggames/rts/game/a/aa297;->d:Lcom/corrodinggames/rts/game/a/v319;

    .line 753
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/corrodinggames/rts/game/a/aa297;->S:F

    .line 754
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/corrodinggames/rts/game/a/aa297;->T:F

    .line 755
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
