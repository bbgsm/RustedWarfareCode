.method getNumberOfAIsAlliesSelected()I
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->gameModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1145
    if-lez v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
