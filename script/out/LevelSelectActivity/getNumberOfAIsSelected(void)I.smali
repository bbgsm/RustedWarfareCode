.method getNumberOfAIsSelected()I
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->custom:Z

    if-eqz v0, :cond_0

    .line 1129
    const/4 v0, 0x4

    .line 1134
    :goto_0
    return v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->aiCountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1134
    goto :goto_0
.end method
