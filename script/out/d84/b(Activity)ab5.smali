.method public static b(Landroid/app/Activity;)Lcom/corrodinggames/rts/appFramework/ab5;
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 645
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 651
    sget v1, Lcom/corrodinggames/rts/appFramework/d84;->d:I

    .line 653
    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->f:I

    if-ne v1, v2, :cond_0

    .line 655
    invoke-static {}, Lcom/corrodinggames/rts/appFramework/d84;->b()I

    move-result v1

    .line 659
    :cond_0
    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->c:I

    if-ne v1, v2, :cond_1

    .line 661
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameViewThreaded;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameViewThreaded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    move-object v1, v2

    .line 698
    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 703
    return-object v2

    .line 663
    :cond_1
    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->e:I

    if-ne v1, v2, :cond_2

    .line 665
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameViewOpenGL;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameViewOpenGL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 667
    :cond_2
    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->a:I

    if-ne v1, v2, :cond_3

    .line 669
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameView;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 671
    :cond_3
    sget v2, Lcom/corrodinggames/rts/appFramework/l247;->b:I

    if-ne v1, v2, :cond_5

    .line 673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    .line 675
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameView;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 679
    :cond_4
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameViewNonSurface;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameViewNonSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 684
    :cond_5
    new-instance v2, Lcom/corrodinggames/rts/appFramework/GameViewNonSurface;

    invoke-direct {v2, p0, v3}, Lcom/corrodinggames/rts/appFramework/GameViewNonSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method
