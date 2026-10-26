.method protected onPause()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/corrodinggames/rts/appFramework/a3;->onPause()V

    .line 161
    invoke-static {}, Lcom/corrodinggames/rts/gameFramework/k1104;->t()Lcom/corrodinggames/rts/gameFramework/k1104;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameView:Lcom/corrodinggames/rts/appFramework/ab5;

    invoke-virtual {v0, v1}, Lcom/corrodinggames/rts/gameFramework/k1104;->b(Lcom/corrodinggames/rts/appFramework/ab5;)V

    .line 169
    :cond_0
    return-void
.end method
