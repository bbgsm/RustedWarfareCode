.method getTeamedUpSelecteed()Z
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1158
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1160
    :goto_0
    return v0

    .line 1158
    :cond_0
    const/4 v0, 0x0

    .line 1160
    goto :goto_0
.end method
