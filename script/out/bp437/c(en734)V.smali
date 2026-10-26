.method private strictfp c(Lcom/corrodinggames/rts/game/units/en734;)V
    .locals 4

    .line 2463
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->c:Lcom/corrodinggames/rts/game/units/a/c360;

    if-nez v0, :cond_0

    .line 2465
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 2466
    const/4 p1, 0x0

    .line 2469
    :cond_0
    if-eqz p1, :cond_1

    .line 2473
    sget-object v0, Lcom/corrodinggames/rts/game/units/eo735;->p:Lcom/corrodinggames/rts/game/units/eo735;

    .line 2481
    iget-object v0, p1, Lcom/corrodinggames/rts/game/units/en734;->c:Lcom/corrodinggames/rts/game/units/a/c360;

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/a/c360;)Lcom/corrodinggames/rts/game/units/a/s376;

    move-result-object v0

    .line 2482
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->T()V

    .line 2483
    if-nez v0, :cond_2

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/corrodinggames/rts/game/units/en734;->c:Lcom/corrodinggames/rts/game/units/a/c360;

    .line 52172
    iget-object v1, v1, Lcom/corrodinggames/rts/game/units/a/c360;->b:Ljava/lang/String;

    .line 2485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/game/units/bp437;->a(Ljava/lang/String;)V

    .line 2498
    :goto_0
    invoke-virtual {p0}, Lcom/corrodinggames/rts/game/units/bp437;->as()V

    .line 2504
    :cond_1
    return-void

    .line 2489
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/corrodinggames/rts/game/units/en734;->e:F

    iget v3, p1, Lcom/corrodinggames/rts/game/units/en734;->f:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2493
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/corrodinggames/rts/game/units/en734;->h:Lcom/corrodinggames/rts/game/units/ce454;

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/corrodinggames/rts/game/units/bp437;->a(Lcom/corrodinggames/rts/game/units/a/s376;ZLandroid/graphics/PointF;Lcom/corrodinggames/rts/game/units/ce454;)V

    goto :goto_0
.end method
