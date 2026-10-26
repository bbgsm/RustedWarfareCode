.method public static a(Landroid/app/Activity;ZZ)V
    .locals 2

    .line 381
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->h(Landroid/app/Activity;)V

    .line 383
    if-eqz p2, :cond_0

    .line 385
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/corrodinggames/rts/gameFramework/k1104;->bN:Lcom/corrodinggames/rts/gameFramework/SettingsEngine;

    iget-boolean v0, v0, Lcom/corrodinggames/rts/gameFramework/SettingsEngine;->immersiveFullScreen:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/corrodinggames/rts/appFramework/d84;->g(Landroid/app/Activity;)V

    .line 399
    :cond_0
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->Q()V

    .line 409
    :cond_1
    if-eqz p1, :cond_2

    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    :cond_2
    return-void
.end method
