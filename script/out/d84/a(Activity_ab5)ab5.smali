.method public static a(Landroid/app/Activity;Lcom/corrodinggames/rts/appFramework/ab5;)Lcom/corrodinggames/rts/appFramework/ab5;
    .locals 3

    .line 1405
    sget v0, Lcom/corrodinggames/rts/appFramework/d84;->d:I

    sget v1, Lcom/corrodinggames/rts/appFramework/l247;->f:I

    if-ne v0, v1, :cond_1

    .line 1407
    instance-of v1, p1, Lcom/corrodinggames/rts/appFramework/GameViewOpenGL;

    .line 1408
    invoke-static {}, Lcom/corrodinggames/rts/appFramework/d84;->b()I

    move-result v0

    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->e:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 1410
    :goto_0
    if-eq v1, v0, :cond_1

    .line 1412
    check-cast p1, Landroid/view/View;

    .line 6427
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6428
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6430
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1415
    :cond_0
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->b(Landroid/app/Activity;)Lcom/corrodinggames/rts/appFramework/ab5;

    move-result-object p1

    .line 1417
    const-string v0, "====== updateGameView: Changing gameView ======"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1421
    :cond_1
    return-object p1

    .line 1408
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
