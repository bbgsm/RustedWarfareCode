.method public static c(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 589
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 594
    :cond_0
    return-void
.end method
