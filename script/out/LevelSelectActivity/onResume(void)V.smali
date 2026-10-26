.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    .line 112
    invoke-super {p0}, Lcom/corrodinggames/rts/appFramework/a3;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->setup()V

    .line 118
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-static {p0, v1}, Lcom/corrodinggames/rts/appFramework/d84;->a(Landroid/app/Activity;Lcom/corrodinggames/rts/appFramework/ab5;)Lcom/corrodinggames/rts/appFramework/ab5;

    move-result-object v1

    iput-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    .line 123
    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-virtual {v0, p0, v1, v2}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Landroid/app/Activity;Lcom/corrodinggames/rts/appFramework/ab5;Z)V

    .line 126
    :cond_0
    invoke-static {p0, v2}, Lcom/corrodinggames/rts/appFramework/d84;->a(Landroid/app/Activity;Z)V

    .line 128
    return-void
.end method
