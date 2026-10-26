.method protected onStart()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/corrodinggames/rts/appFramework/a3;->onStart()V

    .line 135
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->a(Lcom/corrodinggames/rts/appFramework/ab5;)V

    .line 140
    :cond_0
    return-void
.end method
