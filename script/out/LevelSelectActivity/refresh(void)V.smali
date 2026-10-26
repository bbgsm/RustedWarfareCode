.method public refresh()V
    .locals 2

    .line 1810
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->refreshLevelsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->refreshLevelsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1811
    return-void
.end method
