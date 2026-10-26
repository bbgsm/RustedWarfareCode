.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1684
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->lastContextMenu:Ljava/lang/String;

    .line 1686
    if-nez v0, :cond_1

    .line 1688
    const-string v0, "onContextItemSelected: level==null"

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1690
    if-eqz p1, :cond_0

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContextItemSelected: item.getGroupId():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/corrodinggames/rts/gameFramework/k1104;->d(Ljava/lang/String;)V

    .line 1708
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1699
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-nez v1, :cond_2

    .line 1701
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->shareLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 1703
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1705
    invoke-virtual {p0, v0}, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->deleteLevel(Ljava/lang/String;)V

    goto :goto_0
.end method
